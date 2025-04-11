unit PCM.Modul.C_ZE.Booking.Fehltage;

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
    brdckCtrl_FT: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    btn_FTCancel: TdxBarLargeButton;
    btn_FTClose: TdxBarLargeButton;
    btn_FTDelete: TdxBarLargeButton;
    btn_FTNew: TdxBarLargeButton;
    btn_FTSave: TdxBarLargeButton;
    colcmbbx_FTEvent: TcxDBColorComboBox;
    colcmbbx_FTFont: TcxDBColorComboBox;
    ds_FT: TDataSource;
    edt_FTDesc: TcxDBTextEdit;
    edt_FTKuerzel: TcxDBTextEdit;
    grd_Feiertage: TcxGrid;
    grdDBTblView_Feiertage: TcxGridDBTableView;
    grdDBTblViewCol_FeiertageBeschreibung: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageBezahlt: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageColor: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageColorFont: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageFaktor: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageKuerzel: TcxGridDBColumn;
    grdDBTblViewCol_FeiertageTyp: TcxGridDBColumn;
    grdlvl_Feiertage: TcxGridLevel;
    imgcmbbx_FTGutschrift: TcxDBImageComboBox;
    imgcmbbx_FTSoll: TcxDBImageComboBox;
    imgcmbbx_FTTyp: TcxDBImageComboBox;
    qry_FT1: TFDQuery;
    tb_Feiertage: TdxBar;
    lagrp_FTRoot: TdxLayoutGroup;
    lactrl_FT: TdxLayoutControl;
    laitm_FTToolbar: TdxLayoutItem;
    lagrp_FTDetail: TdxLayoutGroup;
    laitm_FTKuerzel: TdxLayoutItem;
    laitm_FTBeschreibung: TdxLayoutItem;
    laitm_FTType: TdxLayoutItem;
    laitm_FTGutschrift: TdxLayoutItem;
    laitm_FTSoll: TdxLayoutItem;
    laitm_FTColorAbsence: TdxLayoutItem;
    laitm_FTColorFont: TdxLayoutItem;
    laitm_FTGrid: TdxLayoutItem;
    lagrp_FTMain: TdxLayoutGroup;
    lagrp_FTEdit: TdxLayoutGroup;
    lagrp_FTEditRow1: TdxLayoutGroup;
    lagrp_FTEditRow3: TdxLayoutGroup;
    lagrp_FTEditRow2: TdxLayoutGroup;
    procedure btn_FTCancelClick(Sender: TObject);
    procedure btn_FTCloseClick(Sender: TObject);
    procedure btn_FTDeleteClick(Sender: TObject);
    procedure btn_FTNewClick(Sender: TObject);
    procedure btn_FTSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
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
  PCM.Modul.C_ZE;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Fehltage.btn_FTCancelClick(Sender: TObject);
begin
  qry_Ft1.Cancel;
end;
procedure Tfrm_Fehltage.btn_FTCloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Fehltage.btn_FTDeleteClick(Sender: TObject);
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
procedure Tfrm_Fehltage.btn_FTNewClick(Sender: TObject);
begin
  if qry_Ft1.State in [dsInsert, dsedit] then
    qry_Ft1.Post;
  qry_Ft1.Append;
  qry_Ft1.Insert;
end;
procedure Tfrm_Fehltage.btn_FTSaveClick(Sender: TObject);
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
procedure Tfrm_Fehltage.FormCreate(Sender: TObject);
begin
  qry_FT1.Open;
end;
procedure Tfrm_Fehltage.FormShow(Sender: TObject);
begin
  if frm_Fehltage.HasParent then
    btn_FTClose.Visible:= ivnever
  else
    btn_FTClose.Visible:= ivAlways;

end;

{$EndRegion FormFunktionen}
end.
