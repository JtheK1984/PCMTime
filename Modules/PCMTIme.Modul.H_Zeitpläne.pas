unit PCMTIme.Modul.H_Zeitpläne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxBar, cxClasses,
  dxLayoutControl, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, cxSpinEdit,
  cxTimeEdit, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCheckBox, cxImageComboBox, cxColorComboBox;

type
  Tfrm_Zeitplan = class(TForm)
    lactrl_ZeitplanGroup_Root: TdxLayoutGroup;
    lactrl_Zeitplan: TdxLayoutControl;
    lagrp_Zeitplan: TdxLayoutGroup;
    lagrp_ZeitplanTag: TdxLayoutGroup;
    lagrp_ZeitplanWoche: TdxLayoutGroup;
    laitm_ZeitplanTagBar: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    brmgr_Zeitplan: TdxBarManager;
    brdckCtrl_WP: TdxBarDockControl;
    tb_Wochenplan: TdxBar;
    btn_WPNew: TdxBarLargeButton;
    btn_WPSave: TdxBarLargeButton;
    btn_WPCancel: TdxBarLargeButton;
    btn_WPDelete: TdxBarLargeButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    brdckCtrl_TP: TdxBarDockControl;
    tb_Tagesplan: TdxBar;
    btn_TPNew: TdxBarLargeButton;
    btn_TPSave: TdxBarLargeButton;
    btn_TPCancel: TdxBarLargeButton;
    btn_TPDelete: TdxBarLargeButton;
    lagrp_ZeitplanTagDetails: TdxLayoutGroup;
    laitm_ZeitplanTagKuerzel: TdxLayoutItem;
    laitm_ZeitplanTagBez: TdxLayoutItem;
    laitm_ZeitplanTagFirma: TdxLayoutItem;
    lagrp_ZeitplanTagArbeitsplanKommen: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    lagrp_ZeitplanTagArbeitsplanGehen: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    laitm_ZeitplanTagArbeitsplanSollzeit: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    lagrp_ZeitplanTagPausen: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    edt_TPKuerzel: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    lagrp_ZeitplanTagPausenDetail: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    chkbx_PauseFix: TcxDBCheckBox;
    chkbx_PauseMindest: TcxDBCheckBox;
    lagrp_ZeitplanTagPausenCheck: TdxLayoutGroup;
    qry_ZP: TFDQuery;
    ds_ZP: TDataSource;
    grd_WP: TcxGrid;
    grdDBTblView_WP: TcxGridDBTableView;
    grdlvl_WP: TcxGridLevel;
    grd_TP: TcxGrid;
    grdDBTblView_TP: TcxGridDBTableView;
    grdlvl_TP: TcxGridLevel;
    grdDBTblView_TPID: TcxGridDBColumn;
    grdDBTblView_TPKuerzel: TcxGridDBColumn;
    grdDBTblView_TPBeschreibung: TcxGridDBColumn;
    grdDBTblView_TPID_Firma: TcxGridDBColumn;
    grdDBTblView_TPKommen_Von: TcxGridDBColumn;
    grdDBTblView_TPKommen_Bis: TcxGridDBColumn;
    grdDBTblView_TPGehen_Von: TcxGridDBColumn;
    grdDBTblView_TPGehen_Bis: TcxGridDBColumn;
    grdDBTblView_TPSollzeit: TcxGridDBColumn;
    grdDBTblView_TPFestPause: TcxGridDBColumn;
    grdDBTblView_TPFestBauseCheck: TcxGridDBColumn;
    grdDBTblView_TPMindestPausenCheck: TcxGridDBColumn;
    grdDBTblView_TPMindestPausenArt: TcxGridDBColumn;
    edt_TPBezeichnung: TcxDBTextEdit;
    qry_Firma: TFDQuery;
    ds_Firma: TDataSource;
    cmbbx_Firma: TcxDBLookupComboBox;
    tedt_KommenVon: TcxDBTimeEdit;
    tedt_FP: TcxDBTimeEdit;
    tedt_tagesnetto: TcxDBTimeEdit;
    tedt_Sollzeit: TcxDBTimeEdit;
    tedt_GehenBis: TcxDBTimeEdit;
    tedt_GehenVon: TcxDBTimeEdit;
    tedt_KommenBis: TcxDBTimeEdit;
    lagrp_ZeitplanTagArbeitsplan: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    laitm_ZeitplanTagArbeitsplanMaxNetto: TdxLayoutItem;
    rdgrp_Mindestpause: TcxDBRadioGroup;
    grdDBTblView_TPTagesnetto: TcxGridDBColumn;
    qry_wp: TFDQuery;
    ds_Wp: TDataSource;
    grdDBTblView_WPID: TcxGridDBColumn;
    grdDBTblView_WPBeschreibung: TcxGridDBColumn;
    grdDBTblView_WPID_Firma: TcxGridDBColumn;
    grdDBTblView_W1Mo: TcxGridDBColumn;
    grdDBTblView_WP2Di: TcxGridDBColumn;
    grdDBTblView_WP3Mi: TcxGridDBColumn;
    grdDBTblView_WP4Do: TcxGridDBColumn;
    grdDBTblView_WP5Fr: TcxGridDBColumn;
    grdDBTblView_WP6Sa: TcxGridDBColumn;
    grdDBTblView_WP7So: TcxGridDBColumn;
    lucmbbx_Firma: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    lucmbbx_1Montag: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    lucmbbx_2Dienstag: TcxDBLookupComboBox;
    dxLayoutItem25: TdxLayoutItem;
    lucmbbx_3Mittwoch: TcxDBLookupComboBox;
    dxLayoutItem26: TdxLayoutItem;
    lucmbbx_7Sonntag: TcxDBLookupComboBox;
    dxLayoutItem27: TdxLayoutItem;
    lucmbbx_6Samstag: TcxDBLookupComboBox;
    dxLayoutItem28: TdxLayoutItem;
    lucmbbx_5Freitag: TcxDBLookupComboBox;
    dxLayoutItem29: TdxLayoutItem;
    lucmbbx_4Donnerstag: TcxDBLookupComboBox;
    laitm_ZeitplanTagArbeitsplanMaxNettoCheck: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    grdDBTblView_TPTagesnettoCheck: TcxGridDBColumn;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure btn_TPNewClick(Sender: TObject);
    procedure grdDBTblView_TPID_FirmaGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure btn_TPSaveClick(Sender: TObject);
    procedure btn_TPCancelClick(Sender: TObject);
    procedure btn_TPDeleteClick(Sender: TObject);
    procedure grdDBTblView_WPID_FirmaGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure btn_WPNewClick(Sender: TObject);
    procedure btn_WPCancelClick(Sender: TObject);
    procedure btn_WPSaveClick(Sender: TObject);
    procedure btn_WPDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure SetButtons;
  end;

var
  frm_Zeitplan: Tfrm_Zeitplan;

implementation

{$R *.dfm}

uses
  PCM.Data,
  PCm.Helper,
  PCM.Time.Strings;
////////////////////////////////////////////////////////////////////////////////
// Hilfsunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsunktionen}
procedure Tfrm_Zeitplan.SetButtons;
begin
  btn_TPSave.Enabled := qry_ZP.State in [dsInsert, dsEdit];
  btn_TPCancel.Enabled := qry_ZP.State in [dsInsert, dsEdit];
  btn_TPDelete.Enabled := (not qry_ZP.Eof) and not (qry_ZP.State in [dsInsert, dsEdit]);
  btn_WPSave.Enabled := qry_WP.State in [dsInsert, dsEdit];
  btn_WPCancel.Enabled := qry_WP.State in [dsInsert, dsEdit];
  btn_WPDelete.Enabled := (not qry_WP.Eof) and not (qry_WP.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Zeitplan.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Grid                                                                       //
////////////////////////////////////////////////////////////////////////////////
{$Region Grid}
procedure Tfrm_Zeitplan.grdDBTblView_TPID_FirmaGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[3] = null then
  begin
    Atext:= '<Für alle Firmen gültig>';
  end
  else begin
  dm_Pcm.qry_Work.Sql.Text:= 'Select * From time_firma Where ID =:ID';
  dm_Pcm.qry_Work.ParamByName('ID').AsInteger:= ARecord.Values[3];
  dm_Pcm.qry_Work.Open;
  Atext:= dm_Pcm.qry_Work.FieldByName('Nummer').AsString + ' - ' + dm_Pcm.qry_Work.FieldByName('Bezeichnung').AsString;
  dm_Pcm.qry_Work.Open;
  end;
end;
procedure Tfrm_Zeitplan.grdDBTblView_WPID_FirmaGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[3] = null then
  begin
    Atext:= '<Für alle Firmen gültig>';
  end
  else begin
  dm_Pcm.qry_Work.Sql.Text:= 'Select * From time_firma Where ID =:ID';
  dm_Pcm.qry_Work.ParamByName('ID').AsInteger:= ARecord.Values[3];
  dm_Pcm.qry_Work.Open;
  Atext:= dm_Pcm.qry_Work.FieldByName('Nummer').AsString + ' - ' + dm_Pcm.qry_Work.FieldByName('Bezeichnung').AsString;
  dm_Pcm.qry_Work.Open;
  end;
end;
{$EndRegion Grid}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Zeitplan.btn_TPNewClick(Sender: TObject);
begin
  if qry_ZP.State in [dsInsert, dsedit] then
    qry_ZP.Post;
  qry_ZP.Append;
  qry_ZP.Insert;
end;
procedure Tfrm_Zeitplan.btn_TPSaveClick(Sender: TObject);
begin
 if qry_ZP.State in [dsInsert, dsEdit] then
  begin
    qry_ZP.Post;
  end;
end;
procedure Tfrm_Zeitplan.btn_TPCancelClick(Sender: TObject);
begin
  qry_ZP.Cancel;
end;
procedure Tfrm_Zeitplan.btn_TPDeleteClick(Sender: TObject);
var
  sMessage: String;
begin
  if qry_ZP.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM time_wochenplan WHERE mon = :ID OR die = :ID OR mit = :ID OR Don = :ID OR Fre = :ID OR Sam = :ID OR Son = :ID';
    dm_PCm.qry_Work.ParamByName('ID').AsInteger:= qry_ZP.FieldByName('ID').AsInteger;
    dm_PCm.qry_Work.open;
    sMessage:= 'Der Zeitplan kann nicht gelöscht werden, da er noch in folgenden Wochenplänen worhanden ist:';
    if dm_pcm.qry_Work.RecordCount > 0 then
    begin
      while not dm_pcm.qry_Work.Eof do
      begin
        sMessage:= sMessage + sLineBreak + '"' + dm_pcm.qry_Work.FieldByName('Beschreibung').asString + '"';
        dm_pcm.qry_Work.Next;
      end;
      SetMessageDialog(2,sMessage,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    end
    else begin
      qry_zp.Delete;
    end;
  end;
end;
procedure Tfrm_Zeitplan.btn_WPNewClick(Sender: TObject);
begin
  if qry_WP.State in [dsInsert, dsedit] then
    qry_WP.Post;
  qry_WP.Append;
  qry_WP.Insert;
end;
procedure Tfrm_Zeitplan.btn_WPSaveClick(Sender: TObject);
begin
  if qry_WP.State in [dsInsert, dsEdit] then
  begin
    qry_WP.Post;
  end;
end;
procedure Tfrm_Zeitplan.btn_WPCancelClick(Sender: TObject);
begin
  qry_wp.Cancel;
end;
procedure Tfrm_Zeitplan.btn_WPDeleteClick(Sender: TObject);
var
  sMessage: String;
begin
  if qry_WP.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM time_user WHERE ID_Wochenplan = :ID';
    dm_PCm.qry_Work.ParamByName('ID').AsInteger:= qry_WP.FieldByName('ID').AsInteger;
    dm_PCm.qry_Work.open;
    sMessage:= 'Der Wochenplan kann nicht gelöscht werden, da er noch bei folgenden Mitarbeitern worhanden ist:';
    if dm_pcm.qry_Work.RecordCount > 0 then
    begin
      while not dm_pcm.qry_Work.Eof do
      begin
        sMessage:= sMessage + sLineBreak + '"' + dm_pcm.qry_Work.FieldByName('Nachname').asString + ', ' + dm_pcm.qry_Work.FieldByName('Nachname').asString + '"';
        dm_pcm.qry_Work.Next;
      end;
      SetMessageDialog(2,sMessage,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    end
    else begin
      qry_WP.Delete;
    end;
  end;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Zeitplan.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Zeitplan.FormShow(Sender: TObject);
begin
  qry_Firma.open;
  qry_ZP.open;
  qry_Wp.open;
end;
{$EndRegion FormFunktionen}
end.
