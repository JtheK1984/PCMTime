unit PCMTime.Modul.E_User.Konfession;

interface

uses
  {$Region uses}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, ComCtrls, ToolWin, dxBar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  dxLayoutContainer, dxLayoutControl, dxUIAClasses;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_PCM_Konfession = class(TForm)
    brdckCtrl_Konfession: TdxBarDockControl;
    brmgr_Konfession: TdxBarManager;
    btn_KonfessionCancel: TdxBarLargeButton;
    btn_KonfessionClose: TdxBarLargeButton;
    btn_KonfessionDelete: TdxBarLargeButton;
    btn_KonfessionNew: TdxBarLargeButton;
    btn_KonfessionSave: TdxBarLargeButton;
    grd_Konfession: TcxGrid;
    grdDBTblView_Konfession: TcxGridDBTableView;
    grdDBTblView_KonfessionBezeichnung: TcxGridDBColumn;
    grdLvl_Konfession: TcxGridLevel;
    lagrp_Konfession: TdxLayoutGroup;
    laitm_KonfessionGrid: TdxLayoutItem;
    laitm_KonfessionToolbar: TdxLayoutItem;
    lo_Konfession: TdxLayoutControl;
    lo_KonfessionGroup_Root: TdxLayoutGroup;
    tb_konfession: TdxBar;
    procedure btn_KonfessionCloseClick(Sender: TObject);
    procedure btn_KonfessionSaveClick(Sender: TObject);
    procedure btn_KonfessionCancelClick(Sender: TObject);
    procedure btn_KonfessionDeleteClick(Sender: TObject);
    procedure btn_KonfessionNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer):boolean;
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_PCM_Konfession: Tfrm_PCM_Konfession;
  sTable: string;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Time.Strings,
  PCMTime.Modul.E_User;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_PCM_Konfession.Execute(Caption: string; Recht: integer) :boolean;
begin
  Self.Caption := Caption;
  btn_KonfessionNew.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionSave.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionCancel.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionDelete.Enabled:= Recht > SetReadWrite;
  ShowModal;
  result:= true;
  Release;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCM_Konfession.btn_KonfessionNewClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Konfession.State in [dsInsert, dsedit] then
    frm_Userze.qry_Contact_Konfession.Post;
  frm_Userze.qry_Contact_Konfession.Append;
  frm_Userze.qry_Contact_Konfession.Insert;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionSaveClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Konfession.State in [dsInsert, dsEdit] then
  begin
    frm_Userze.qry_Contact_Konfession.Post;
  end;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionCancelClick(Sender: TObject);
begin
  frm_Userze.qry_Contact_Konfession.Cancel;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionDeleteClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Konfession.FieldByName('ID').AsInteger > 0 then
  begin
    frm_Userze.qry_Contact_Konfession.Delete;
  end
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionCloseClick(Sender: TObject);
begin
  Close;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                               //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_PCM_Konfession.FormShow(Sender: TObject);
begin
  grdDBTblView_KonfessionBezeichnung.Caption := rs_PCMManager_Konfession;
end;
{$EndRegion Formfunctions}
end.

