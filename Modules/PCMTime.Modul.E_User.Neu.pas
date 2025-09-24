unit PCMTime.Modul.E_User.Neu;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls,Data.DB,
  cxImage, cxLabel, cxGroupBox, system.UITypes, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_PCManagerNewContact = class(TForm)
    btn_PCManagerLogin_Cancel: TcxButton;
    btn_PCManagerLogin_Ok: TcxButton;
    cmbbx_Anrede: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    edt_Name: TcxTextEdit;
    edt_SurName: TcxTextEdit;
    img_Contact: TcxImage;
    lagrp_Contact: TdxLayoutGroup;
    lagrp_ContactButtons: TdxLayoutGroup;
    lagrp_ContactDetail: TdxLayoutGroup;
    lagrp_ContactDetailswithoutImg: TdxLayoutGroup;
    laitm_ContactAnrede: TdxLayoutItem;
    laitm_ContactImg: TdxLayoutItem;
    laitm_ContactNachname: TdxLayoutItem;
    laitm_ContactVorname: TdxLayoutItem;
    lo_ContactNew: TdxLayoutControl;
    lo_ContactNewGroup_Root: TdxLayoutGroup;
    procedure btn_PCManagerLogin_CancelClick(Sender: TObject);
    procedure btn_PCManagerLogin_OkClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal : boolean;
  public
    { Public-Deklarationen }
    function Execute(AModal: boolean; out Anrede : Integer; out Vorname, Name: string): Boolean;
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_PCManagerNewContact: Tfrm_PCManagerNewContact;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Helper,
  PCM.Time.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Execute                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_PCManagerNewContact.Execute(AModal: boolean; out Anrede : Integer; out Vorname, Name: string): Boolean;
begin
  result:= false;
  cmbbx_Anrede.clear;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Bezeichnung FROM manager_anrede order by Bezeichnung asc';
  dm_PCM.qry_Work.open;
  dm_PCM.qry_Work.First;
  while not dm_PCM.qry_Work.EOF do begin
    cmbbx_Anrede.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
    dm_PCM.qry_Work.Next;
  end;
  edt_SurName.Text:= '';
  edt_Name.Text:= '';
  FShowModal := AModal;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      if cmbbx_Anrede.ItemIndex <> -1 then
        Anrede := Integer(cmbbx_Anrede.Properties.Items.Objects[cmbbx_Anrede.ItemIndex])
      else
        Anrede := 0;
      if edt_SurName.Text = '' then
      begin
        SetMessageDialog(2,rs_PCMManager_Vorname,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
        exit;
      end
      else begin
        Vorname:= edt_Name.Text
      end;
      if edt_Name.Text = '' then
      begin
        SetMessageDialog(2,rs_PCMManager_nachname,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
        exit;
      end
      else begin
        Name:= edt_SurName.Text
      end;
      result:= true;
    end;
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_OkClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;
{$EndRegion}
end.

