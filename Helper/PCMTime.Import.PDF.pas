unit PCMTime.Import.PDF;

interface

function ReadImportPDF(const AFileName: string): string;

implementation

uses Winapi.Windows, System.SysUtils, System.IOUtils;

type
  TInit = procedure; cdecl;
  TLoadDocument = function(FileName, Password: PAnsiChar): Pointer; cdecl;
  TGetPageCount = function(Document: Pointer): Integer; cdecl;
  TLoadPage = function(Document: Pointer; PageIndex: Integer): Pointer; cdecl;
  TTextLoadPage = function(Page: Pointer): Pointer; cdecl;
  TTextCount = function(TextPage: Pointer): Integer; cdecl;
  TTextGet = function(TextPage: Pointer; StartIndex, Count: Integer; Buffer: PWideChar): Integer; cdecl;
  TClose = procedure(Handle: Pointer); cdecl;

function ReadImportPDF(const AFileName: string): string;
var
  Lib: HMODULE;
  Init, Destroy: TInit;
  LoadDocument: TLoadDocument;
  GetPageCount: TGetPageCount;
  LoadPage: TLoadPage;
  TextLoadPage: TTextLoadPage;
  TextCount: TTextCount;
  TextGet: TTextGet;
  CloseDocument, ClosePage, CloseText: TClose;
  Doc, Page, TextPage: Pointer;
  FileName: UTF8String;
  Buffer: string;
  DLLPath, Base, Arch: string;
  I, Count, Written, Pages: Integer;
  function Bind(const Name: AnsiString): Pointer;
  begin
    Result := GetProcAddress(Lib, PAnsiChar(Name));
    if Result = nil then raise Exception.Create('PDF-Bibliothek unvollstaendig: ' + string(Name));
  end;
begin
  Result := '';
  Base := ExtractFilePath(ParamStr(0));
  {$IFDEF WIN64} Arch := 'Win64'; {$ELSE} Arch := 'Win32'; {$ENDIF}
  DLLPath := TPath.Combine(Base, 'pdfium.dll');
  if not FileExists(DLLPath) then
    DLLPath := TPath.GetFullPath(TPath.Combine(Base, '..\..\PDFium\' + Arch + '\pdfium.dll'));
  if not FileExists(DLLPath) then
    raise Exception.Create('PDF-Lesebibliothek fehlt. Bitte pdfium.dll (' + Arch + ') neben PCMTime.exe bereitstellen.');
  Lib := LoadLibraryEx(PChar(DLLPath), 0, LOAD_WITH_ALTERED_SEARCH_PATH);
  if Lib = 0 then RaiseLastOSError;
  try
    Init := TInit(Bind('FPDF_InitLibrary'));
    Destroy := TInit(Bind('FPDF_DestroyLibrary'));
    LoadDocument := TLoadDocument(Bind('FPDF_LoadDocument'));
    GetPageCount := TGetPageCount(Bind('FPDF_GetPageCount'));
    LoadPage := TLoadPage(Bind('FPDF_LoadPage'));
    TextLoadPage := TTextLoadPage(Bind('FPDFText_LoadPage'));
    TextCount := TTextCount(Bind('FPDFText_CountChars'));
    TextGet := TTextGet(Bind('FPDFText_GetText'));
    CloseDocument := TClose(Bind('FPDF_CloseDocument'));
    ClosePage := TClose(Bind('FPDF_ClosePage'));
    CloseText := TClose(Bind('FPDFText_ClosePage'));
    Init;
    try
      FileName := UTF8String(AFileName);
      Doc := LoadDocument(PAnsiChar(FileName), nil);
      if Doc = nil then raise Exception.Create('PDF konnte nicht gelesen werden (beschaedigt oder passwortgeschuetzt).');
      try
        Pages := GetPageCount(Doc);
        if (Pages < 1) or (Pages > 500) then raise Exception.Create('PDF-Seitenanzahl nicht unterstuetzt.');
        for I := 0 to Pages - 1 do
        begin
          Page := LoadPage(Doc, I);
          if Page = nil then raise Exception.CreateFmt('PDF-Seite %d nicht lesbar.', [I+1]);
          try
            TextPage := TextLoadPage(Page);
            if TextPage = nil then raise Exception.Create('PDF-Text nicht lesbar.');
            try
              Count := TextCount(TextPage);
              if (Count < 0) or (Count > 1000000) then raise Exception.Create('PDF-Textumfang nicht unterstuetzt.');
              if Count > 0 then
              begin
                SetLength(Buffer, Count + 1);
                Written := TextGet(TextPage, 0, Count, PWideChar(Buffer));
                if Written < 1 then raise Exception.Create('PDF-Text konnte nicht ausgelesen werden.');
                SetLength(Buffer, Written - 1);
                Result := Result + Buffer + sLineBreak;
              end;
            finally CloseText(TextPage); end;
          finally ClosePage(Page); end;
        end;
      finally CloseDocument(Doc); end;
    finally Destroy; end;
  finally FreeLibrary(Lib); end;
end;

end.
