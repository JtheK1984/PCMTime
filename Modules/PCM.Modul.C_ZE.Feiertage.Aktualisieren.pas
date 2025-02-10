unit PCM.Modul.C_ZE.Feiertage.Aktualisieren;

interface

uses
  {$Region Uses}
  Buttons,
  Classes,
  Controls,
  cxButtons,
  cxCalendar,
  cxContainer,
  cxControls,
  cxDateUtils,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxTextEdit,
  DateUtils,
  Dialogs,
  dxCore,
  Forms,
  Graphics,
  Menus,
  Messages,
  StdCtrls,
  System.UITypes,
  SysUtils,
  Variants,
  Vcl.ComCtrls,
  Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_FeiertageAktualisieren = class(TForm)
    btn_Abort: TcxButton;
    btn_OK: TcxButton;
    dEdt_Bis: TcxDateEdit;
    dEdt_Von: TcxDateEdit;
    lbl_Bis: TcxLabel;
    lbl_Hinweis: TcxLabel;
    lbl_Von: TcxLabel;
    grpbx_Data: TcxGroupBox;
    grpbx_DesignMain: TcxGroupBox;
    grpbx_Hinweis: TcxGroupBox;
    procedure btn_AbortClick(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(out von, bis: TDateTime): Boolean;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Data,
  PCM.Strings;
 {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_FeiertageAktualisieren.Execute(out von, bis: TDateTime): Boolean;
begin
  dEdt_Von.Date := StartOfTheYear(Date);
  dEdt_Bis.Date := EndOfTheYear(Date);
  if ShowModal = mrOk then
  begin
    von := dedt_Von.Date;
    bis := dEdt_Bis.Date;
    Result := True;
  end
  else
    Result := False;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                               //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_FeiertageAktualisieren.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
procedure Tfrm_FeiertageAktualisieren.btn_OKClick(Sender: TObject);
begin
  if (dedt_Von.EditValue = Null) or (dEdt_Bis.EditValue = Null) then
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumVonBis,mtWarning, [mbOk],0)
  else if dedt_Von.Date < dEdt_Bis.Date then
    ModalResult := mrOk
  else
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumBisVon,mtWarning, [mbOk],0);
end;
{$EndRegion Formfunctions}
end.

