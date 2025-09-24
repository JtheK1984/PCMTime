unit PCMTime.Modul.C_Company;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxClasses, cxGraphics,
  dxUIAClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxImageComboBox,
  cxColorComboBox, cxContainer, dxLayoutContainer, dxLayoutcxEditAdapters,
  cxDBColorComboBox, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxLayoutControl, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, shellapi;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Firma = class(TForm)
    brmgr_Config: TdxBarManager;
    tb_Feiertage: TdxBar;
    btn_New: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_Cancel: TdxBarLargeButton;
    btn_Close: TdxBarLargeButton;
    lactrl_Company: TdxLayoutControl;
    brdckCtrl_Company: TdxBarDockControl;
    grd_Company: TcxGrid;
    grdDBTblView_Company: TcxGridDBTableView;
    grdlvl_Company: TcxGridLevel;
    edt_FTKuerzel: TcxDBTextEdit;
    edt_FTDesc: TcxDBTextEdit;
    lagrp_CompRoot: TdxLayoutGroup;
    laitm_CompToolbar: TdxLayoutItem;
    lagrp_CompDetail: TdxLayoutGroup;
    laitm_CompKuerzel: TdxLayoutItem;
    laitm_CompBeschreibung: TdxLayoutItem;
    laitm_CompStrasse: TdxLayoutItem;
    laitm_CompPLZ: TdxLayoutItem;
    laitm_CompOrt: TdxLayoutItem;
    laitm_CompGrid: TdxLayoutItem;
    lagrp_CompMain: TdxLayoutGroup;
    lagrp_CompEdit: TdxLayoutGroup;
    lagrp_CompAdresse: TdxLayoutGroup;
    laitm_CompTelefon: TdxLayoutItem;
    laitm_CompMail: TdxLayoutItem;
    lagrp_CompInternet: TdxLayoutItem;
    laitm_CompGridFT: TdxLayoutItem;
    grd_FT: TcxGrid;
    grdDBTblView_FT: TcxGridDBTableView;
    grdLvl_FT: TcxGridLevel;
    lagrp_CompGridFT: TdxLayoutGroup;
    imgcmbbx_BL: TcxDBImageComboBox;
    laitm_CompBL: TdxLayoutItem;
    ds_Company: TDataSource;
    qry_Company: TFDQuery;
    edt_KontaktStrasse: TcxDBTextEdit;
    edt_KontaktPLZ: TcxDBTextEdit;
    edt_KontaktOrt: TcxDBTextEdit;
    grdDBTblView_CompanyNummer: TcxGridDBColumn;
    grdDBTblView_CompanyBezeichnung: TcxGridDBColumn;
    grdDBTblView_CompanyStrasse: TcxGridDBColumn;
    grdDBTblView_CompanyPLZ: TcxGridDBColumn;
    grdDBTblView_CompanyOrt: TcxGridDBColumn;
    grdDBTblView_CompanyTelefon: TcxGridDBColumn;
    grdDBTblView_CompanyEmail: TcxGridDBColumn;
    grdDBTblView_CompanyInternet: TcxGridDBColumn;
    lagrp_CompFirma: TdxLayoutGroup;
    laitm_CompTyp: TdxLayoutItem;
    imgcmbbx_Arbeitsort: TcxDBImageComboBox;
    qry_FT: TFDQuery;
    ds_FT: TDataSource;
    grdDBTblView_FTJahr: TcxGridDBColumn;
    grdDBTblView_FTMonat: TcxGridDBColumn;
    grdDBTblView_FTTag: TcxGridDBColumn;
    grdDBTblView_FTBezeichnung: TcxGridDBColumn;
    grdDBTblView_FTKategorie: TcxGridDBColumn;
    edt_Telefon: TcxDBTextEdit;
    edt_Mail: TcxDBTextEdit;
    edt_Internet: TcxDBTextEdit;
    btn_Maps: TdxBarLargeButton;
    btn_Mail: TdxBarLargeButton;
    btn_Web: TdxBarLargeButton;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_MapsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qry_CompanyAfterScroll(DataSet: TDataSet);
    procedure grdDBTblView_FTCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btn_WebClick(Sender: TObject);
    procedure btn_MailClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure Setbuttons;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Firma: Tfrm_Firma;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsunktionen}
procedure Tfrm_Firma.SetButtons;
begin
  btn_Save.Enabled := qry_Company.State in [dsInsert, dsEdit];
  btn_Cancel.Enabled := qry_Company.State in [dsInsert, dsEdit];
  btn_Delete.Enabled := (not qry_Company.Eof) and not (qry_Company.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Firma.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Firma.btn_CancelClick(Sender: TObject);
begin
  qry_Company.Cancel;
end;
procedure Tfrm_Firma.btn_CloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Firma.btn_DeleteClick(Sender: TObject);
begin
  if qry_Company.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Update time_user Set ID_Abteilung = null Where ID_Abteilung = :ID_Abteilung';
    dm_PCM.qry_work.ParamByName('ID_Abteilung').asInteger := qry_Company.FieldByName('ID').asInteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Company.Delete;
  end
end;
procedure Tfrm_Firma.btn_NewClick(Sender: TObject);
begin
  if qry_Company.State in [dsInsert, dsedit] then
    qry_Company.Post;
  qry_Company.Append;
  qry_Company.Insert;
end;
procedure Tfrm_Firma.btn_SaveClick(Sender: TObject);
begin
 if qry_Company.State in [dsInsert, dsEdit] then
  begin
    qry_Company.Post;
  end;
end;
procedure Tfrm_Firma.btn_MailClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[edt_Mail.Text]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);

end;
procedure Tfrm_Firma.btn_MapsClick(Sender: TObject);
var
  slink: string;
begin
  sLink:= 'http://maps.google.de/maps?q=' + edt_KontaktStrasse.Text + ',' + edt_KontaktPLZ.Text + '+' + edt_KontaktOrt.Text + '&z=12';
  ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);

end;
procedure Tfrm_Firma.btn_WebClick(Sender: TObject);
var
  sURL: string;
begin
  if edt_Internet.Text <> '' then
  begin
    sURL := edt_Internet.text;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_Firma.grdDBTblView_FTCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  iJahr,iMonat,iTag: Word;
begin
  DecodeDate(Date,iJahr,iMonat,iTag);
  if AViewInfo.GridRecord.Values[0] = IntToStr(iJahr) then
  begin
    ACanvas.Font.Style:= ACanvas.Font.Style + [fsBold]
  end
  else begin
    ACanvas.Font.Style:= ACanvas.Font.Style - [fsBold]
  end;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Firma.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Firma.FormShow(Sender: TObject);
begin
  qry_Company.Open;
  if frm_Firma.HasParent then
    btn_Close.Visible:= ivnever
  else
    btn_Close.Visible:= ivAlways;
end;
procedure Tfrm_Firma.qry_CompanyAfterScroll(DataSet: TDataSet);
begin
  qry_FT.SQL.Text:= 'Select Jahr, Monat, Tag, Bezeichnung, Kategorie From time_feiertage where bl = :BL';
  qry_FT.ParamByName('BL').AsInteger:= qry_Company.FieldByName('BL').AsInteger;
  qry_FT.open;

end;
{$EndRegion FormFunktionen}
end.
