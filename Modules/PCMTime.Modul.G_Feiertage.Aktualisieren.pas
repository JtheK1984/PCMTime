unit PCMTime.Modul.G_Feiertage.Aktualisieren;

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
  Windows, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  cxClasses, dxLayoutControl, dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_FeiertageAktualisieren = class(TForm)
    btn_Abort: TcxButton;
    btn_OK: TcxButton;
    dEdt_Bis: TcxDateEdit;
    dEdt_Von: TcxDateEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    lbl_Hinweis: TdxLayoutLabeledItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
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
  PCm.Helper,
  PCM.Time.Strings;
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
    SetMessageDialog(2,rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumVonBis,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone])
  else if dedt_Von.Date < dEdt_Bis.Date then
    ModalResult := mrOk
  else
    SetMessageDialog(2,rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumBisVon,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
end;
{$EndRegion Formfunctions}
end.

