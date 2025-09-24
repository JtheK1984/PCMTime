unit PCMTime.Modul.D_Department;

interface

uses
  {$Region uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxClasses, cxGraphics,
  dxUIAClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxImageComboBox,
  cxColorComboBox, cxContainer, dxLayoutContainer, dxLayoutcxEditAdapters,
  cxDBColorComboBox, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxLayoutControl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_Abteilung = class(TForm)
    brdckCtrl_Department: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    btn_Cancel: TdxBarLargeButton;
    btn_Close: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_New: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    ds_Department: TDataSource;
    edt_Desc: TcxDBTextEdit;
    edt_Kuerzel: TcxDBTextEdit;
    grd_Department: TcxGrid;
    grdDBTblView_Department: TcxGridDBTableView;
    grdDBTblView_DepartmentBezeichnung: TcxGridDBColumn;
    grdDBTblView_DepartmentNummer: TcxGridDBColumn;
    grdlvl_Department: TcxGridLevel;
    lactrl_Department: TdxLayoutControl;
    lagrp_DepartmentDetail: TdxLayoutGroup;
    lagrp_DepartmentEdit: TdxLayoutGroup;
    lagrp_DepartmentMain: TdxLayoutGroup;
    lagrp_DepartmentNummerBez: TdxLayoutGroup;
    lagrp_DepartmentRoot: TdxLayoutGroup;
    laitm_DepartmentBeschreibung: TdxLayoutItem;
    laitm_DepartmentGrid: TdxLayoutItem;
    laitm_DepartmentKuerzel: TdxLayoutItem;
    laitm_DepartmentToolbar: TdxLayoutItem;
    qry_Department: TFDQuery;
    tb_Feiertage: TdxBar;
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
  frm_Abteilung: Tfrm_Abteilung;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data, PCMTime.Modul.G_Feiertage;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsunktionen}
procedure Tfrm_Abteilung.SetButtons;
begin
  btn_Save.Enabled := qry_Department.State in [dsInsert, dsEdit];
  btn_Cancel.Enabled := qry_Department.State in [dsInsert, dsEdit];
  btn_Delete.Enabled := (not qry_Department.Eof) and not (qry_Department.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Abteilung.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
{$EndRegion Hilfsunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Abteilung.btn_CancelClick(Sender: TObject);
begin
  qry_Department.Cancel;
end;
procedure Tfrm_Abteilung.btn_CloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Abteilung.btn_DeleteClick(Sender: TObject);
begin
  if qry_Department.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Update time_user Set ID_Abteilung = null Where ID_Abteilung = :ID_Abteilung';
    dm_PCM.qry_work.ParamByName('ID_Abteilung').asInteger := qry_Department.FieldByName('ID').asInteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Department.Delete;
  end
end;
procedure Tfrm_Abteilung.btn_NewClick(Sender: TObject);
begin
  if qry_Department.State in [dsInsert, dsedit] then
    qry_Department.Post;
  qry_Department.Append;
  qry_Department.Insert;
end;
procedure Tfrm_Abteilung.btn_SaveClick(Sender: TObject);
begin
 if qry_Department.State in [dsInsert, dsEdit] then
  begin
    qry_Department.Post;
  end;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Abteilung.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Abteilung.FormShow(Sender: TObject);
begin
  qry_Department.Open;
  if frm_Abteilung.HasParent then
    btn_Close.Visible:= ivnever
  else
    btn_Close.Visible:= ivAlways;
end;
{$EndRegion FormFunktionen}
end.
