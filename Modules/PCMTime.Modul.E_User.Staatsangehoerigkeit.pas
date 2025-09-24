unit PCMTime.Modul.E_User.Staatsangehoerigkeit;

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
  Tfrm_PCM_Staatsangehoerigkeit = class(TForm)
    grd_Nationality: TcxGrid;
    grdDBTblView_Nationality: TcxGridDBTableView;
    grdlvl_Nationality: TcxGridLevel;
    grdDBTblView_NationalityBezeichnung: TcxGridDBColumn;
    brmgr_Nationality: TdxBarManager;
    tb_Staatsangehoerigkeit: TdxBar;
    btn_StaatsangehoerigkeitNew: TdxBarLargeButton;
    btn_StaatsangehoerigkeitCancel: TdxBarLargeButton;
    btn_StaatsangehoerigkeitSave: TdxBarLargeButton;
    btn_StaatsangehoerigkeitClose: TdxBarLargeButton;
    btn_StaatsangehoerigkeitDelete: TdxBarLargeButton;
    lo_NationalityGroup_Root: TdxLayoutGroup;
    lo_Nationality: TdxLayoutControl;
    laitm_NationalityGrid: TdxLayoutItem;
    lagrp_Nationality: TdxLayoutGroup;
    brdckCtrl_Nationality: TdxBarDockControl;
    laitm_NationalityToolbar: TdxLayoutItem;
    procedure btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitNewClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer) :boolean;
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit;
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
function Tfrm_PCM_Staatsangehoerigkeit.Execute(Caption: string; Recht: integer) :boolean;
begin
  Self.Caption := Caption;
  btn_StaatsangehoerigkeitNew.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitSave.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitCancel.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitDelete.Enabled:= Recht > SetReadWrite;
  ShowModal;
  result:= true;
  Release;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitNewClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsedit] then
    frm_Userze.qry_Contact_Staatsangehoerigkeit.Post;
  frm_Userze.qry_Contact_Staatsangehoerigkeit.Append;
  frm_Userze.qry_Contact_Staatsangehoerigkeit.Insert;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsEdit] then
  begin
    frm_Userze.qry_Contact_Staatsangehoerigkeit.Post;
  end;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
begin
  frm_Userze.qry_Contact_Staatsangehoerigkeit.Cancel;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
begin
  if frm_Userze.qry_Contact_Staatsangehoerigkeit.FieldByName('ID').AsInteger > 0 then
  begin
    frm_Userze.qry_Contact_Staatsangehoerigkeit.Delete;
  end
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
begin
  Close;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_PCM_Staatsangehoerigkeit.FormShow(Sender: TObject);
begin
  grdDBTblView_NationalityBezeichnung.Caption := rs_PCMManager_Staatsangehoerigkeit;
end;
{$EndRegion Formfunctions}
end.

