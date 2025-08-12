unit PCM.Data;

interface

uses
  {$Region Uses}
  cxGraphics,
  cxImageList,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.ADS,
  FireDAC.Phys.ADSDef,
  FireDAC.Phys.Intf,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,
  inifiles,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.UITypes,
  Vcl.Controls,
  Vcl.Dialogs,
  vcl.forms,
  Vcl.ImgList,
  winapi.Windows, cxClasses, dxLayoutLookAndFeels;
  {$EndRegion Uses}
type
  {$Region Type}
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    ds_Kalender_Benutzer: TDataSource;
    ds_Kalender_Kalender: TDataSource;
    ds_rights: TDataSource;
    ds_User: TDataSource;
    imglst_16x16: TcxImageList;
    imglst_24x24: TcxImageList;
    imglst_32x32: TcxImageList;
    qry_booking: TFDQuery;
    qry_Calc: TFDQuery;
    qry_Kalender_Benutzer: TFDQuery;
    qry_Kalender_Kalender: TFDQuery;
    qry_Kalender_KalenderCaption: TStringField;
    qry_Kalender_KalenderCompleteDay: TStringField;
    qry_Kalender_KalenderEventType: TIntegerField;
    qry_Kalender_KalenderFinish: TDateTimeField;
    qry_Kalender_KalenderFontColor: TIntegerField;
    qry_Kalender_KalenderID: TFDAutoIncField;
    qry_Kalender_KalenderID_Benutzer: TBlobField;
    qry_Kalender_KalenderLabelColor: TIntegerField;
    qry_Kalender_KalenderLocation: TStringField;
    qry_Kalender_KalenderMessage: TMemoField;
    qry_Kalender_KalenderOptions: TIntegerField;
    qry_Kalender_KalenderParent_ID: TIntegerField;
    qry_Kalender_KalenderRecurrenceIndex: TIntegerField;
    qry_Kalender_KalenderRecurrenceInfo: TBlobField;
    qry_Kalender_KalenderReminder: TStringField;
    qry_Kalender_KalenderReminderDate: TDateTimeField;
    qry_Kalender_KalenderReminderMinutesBeforeStart: TIntegerField;
    qry_Kalender_KalenderStart: TDateTimeField;
    qry_Rights: TFDQuery;
    qry_timer: TFDQuery;
    qry_User: TFDQuery;
    qry_Work: TFDQuery;
    qry_Work1: TFDQuery;
    qry_work2: TFDQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    imglst_32x32_1: TcxImageList;
    dxLayoutSkinLookAndFeel3: TdxLayoutSkinLookAndFeel;
    qry_ChartGeburtstage: TFDQuery;
    ds_ChartGeburtstage: TDataSource;
    qry_FT: TFDQuery;
    ds_FT: TDataSource;
    qry_Abw: TFDQuery;
    ds_Abw: TDataSource;
    qry_Fehltag: TFDQuery;
    ds_Fehltag: TDataSource;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    bAppTerm: boolean;
    bAutologin: boolean;
    bCLose: Boolean;
    bDemo: boolean;
    bLogin: Boolean;
    bNewLiceneCheck: Boolean;
    bStyle: boolean;
    dtGueltig: Tdate;
    dtCurrDate: Tdate;
    iBackup: integer;
    iBenutzer: integer;
    iDBType: integer;
    iDesign: integer;
    iIDBenutzerPCM: integer;
    iModulTab: integer;
    iScale: double;
    Firma: string;
    Nummer: string;
    sDesign: String;
    slocale: string;
    sServer: string;
    sStyle: string;
    sUSerAutologin: string;
  end;
  {$EndRegion Type}
var
  {$Region var}
  dm_PCM: Tdm_PCM;
  {$EndRegion var}
const
  {$Region const}
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;
  PCM_Programmnummer =  15;
  PCM_Logname =  'PCMTime';
  PCM_Connectionname =  'time';
  PCM_Alias =  'time';
  PCM_Lizenz = true;
  {$EndRegion const}
resourcestring
  {$Region RessourceString}
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Time 64-Bit';
  {$else}
  PCM_Programmname = 'PCM - Time 32-Bit';
  {$ENDIF}
  {$EndRegion RessourceString}

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses  PCM.Main;

procedure Tdm_PCM.con_PCMBeforeConnect(Sender: TObject);
begin
  con_PCM.LoginPrompt := False;
  con_PCM.Params.Clear;
  case iDBType of
    DB_MYSQL:
    begin
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('User_Name=root');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Port=3307');
      con_PCM.Params.Add('DriverID=MySQL');
    end;
    DB_MSSQL:
    begin
      con_PCM.Params.Add('OSAuthent=No');
      con_PCM.Params.Add('User_Name=sa');
      con_PCM.Params.Add('Password=Nh2020+5');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('DriverID=MSSQL');
    end;
    DB_ADS:
     begin
      con_PCM.Params.Add('Alias=pcm');
      con_PCM.Params.Add('ServerTypes=REMOTE|LOCAL');
      con_PCM.Params.Add('User_Name=adssys');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('DriverID=ADS');
     end;
  end;
end;
procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
end;

end.
