unit PCMTime.Modul.F_Fehltage;

interface

uses
  {$Region Uses}
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBColorComboBox,
  cxDBData,
  cxDBEdit,
  cxDropDownEdit,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxGroupBox,
  cxImageComboBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxNavigator,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
  dxDateRanges,
  dxScrollbarAnnotations,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Winapi.Messages,
  Winapi.Windows, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControl,
  dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_Fehltage = class(TForm)
    brdckCtrl_Fehltage: TdxBarDockControl;
    brmgr_Fehltage: TdxBarManager;
    btn_Cancel: TdxBarLargeButton;
    btn_Close: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_New: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    colcmbbx_FehltageFarbeFehltag: TcxDBColorComboBox;
    colcmbbx_FehltageFarbeFont: TcxDBColorComboBox;
    ds_FT: TDataSource;
    edt_FehltageDesc: TcxDBTextEdit;
    edt_FehltageKuerzel: TcxDBTextEdit;
    grd_Fehltage: TcxGrid;
    grdDBTblView_Fehltage: TcxGridDBTableView;
    grdDBTblViewCol_FeiertageBeschreibung: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageBezahlt: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageColor: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageColorFont: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageFaktor: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageKuerzel: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageTyp: TcxGridDBColumn;
    grdlvl_Fehltage: TcxGridLevel;
    imgcmbbx_FehltageGutschrift: TcxDBImageComboBox;
    imgcmbbx_FehltageSoll: TcxDBImageComboBox;
    imgcmbbx_FehltageTyp: TcxDBImageComboBox;
    qry_FT1: TFDQuery;
    tb_Feiertage: TdxBar;
    lagrp_FehltageRoot: TdxLayoutGroup;
    lactrl_Fehltage: TdxLayoutControl;
    laitm_FehltageToolbar: TdxLayoutItem;
    lagrp_FehltageDetail: TdxLayoutGroup;
    laitm_FehltageKuerzel: TdxLayoutItem;
    laitm_FehltageBeschreibung: TdxLayoutItem;
    laitm_FehltageType: TdxLayoutItem;
    laitm_FehltageGutschrift: TdxLayoutItem;
    laitm_FehltageSoll: TdxLayoutItem;
    laitm_FehltageColorAbsence: TdxLayoutItem;
    laitm_FehltageColorFont: TdxLayoutItem;
    laitm_FehltageGrid: TdxLayoutItem;
    lagrp_FehltageMain: TdxLayoutGroup;
    lagrp_FehltageEdit: TdxLayoutGroup;
    lagrp_FehltageKuerzelBeschreibung: TdxLayoutGroup;
    lagrp_FehltageColor: TdxLayoutGroup;
    lagrp_FehltageDetails: TdxLayoutGroup;
    laitm_FehltageAbzug: TdxLayoutItem;
    imgcmbbx_FehltageSollAbzug: TcxDBImageComboBox;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure SetButtons;
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Fehltage: Tfrm_Fehltage;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data,
  PCMTime.Modul.J_Zeiterfassung;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsunktionen}
procedure Tfrm_Fehltage.SetButtons;
begin
  btn_Save.Enabled := qry_FT1.State in [dsInsert, dsEdit];
  btn_Cancel.Enabled := qry_FT1.State in [dsInsert, dsEdit];
  btn_Delete.Enabled := (not qry_FT1.Eof) and not (qry_FT1.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Fehltage.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Fehltage.btn_CancelClick(Sender: TObject);
begin
  qry_Ft1.Cancel;
end;
procedure Tfrm_Fehltage.btn_CloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Fehltage.btn_DeleteClick(Sender: TObject);
begin
  if qry_Ft1.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Update time_buchungen Set Fehltag = '''' Where Fehltag = :Fehltag';;
    dm_PCM.qry_work.ParamByName('Fehltag').asString:= qry_Ft1.FieldByName('Kuerzel').AsString;
    dm_PCM.qry_work.ExecSQL;
    dm_PCM.qry_work.SQL.Text:= 'Delete From time_Kalender Where Caption = :Fehltag';;
    dm_PCM.qry_work.ParamByName('Fehltag').asString:= qry_Ft1.FieldByName('Beschreibung').AsString;
    dm_PCM.qry_work.ExecSQL;
    qry_Ft1.Delete;
    qry_Ft1.Refresh;
    frm_ze.qry_Buchungen.Refresh;
    frm_ze.qry_Fehltag.Refresh;
  end
end;
procedure Tfrm_Fehltage.btn_NewClick(Sender: TObject);
begin
  if qry_Ft1.State in [dsInsert, dsedit] then
    qry_Ft1.Post;
  qry_Ft1.Append;
  qry_Ft1.Insert;
end;
procedure Tfrm_Fehltage.btn_SaveClick(Sender: TObject);
begin
 if qry_Ft1.State in [dsInsert, dsEdit] then
  begin
    qry_Ft1.Post;
  end;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Fehltage.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Fehltage.FormShow(Sender: TObject);
begin
  qry_FT1.Open;
  if frm_Fehltage.HasParent then
    btn_Close.Visible:= ivnever
  else
    btn_Close.Visible:= ivAlways;

end;
{$EndRegion FormFunktionen}
end.
