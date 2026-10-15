unit PCMTIME.Modul.B_Config;

interface

uses
  {$Region uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxCheckBox,
  cxColorComboBox, cxDBLookupComboBox, cxDropDownEdit, Vcl.StdCtrls,
  cxRadioGroup, dxGDIPlusClasses, cxImage, cxLookupEdit, cxDBLookupEdit,
  cxDBColorComboBox, cxDBEdit, cxMaskEdit, cxImageComboBox, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxGroupBox, cxPC,
  System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IniFiles, Vcl.Themes, dateutils,
  IdIMAP4, IDpop3, IdSMTP, IdSSLOpenSSL, IdMessage,
  IdExplicitTLSClientServerBase,System.UITypes,
  dxBar, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTPBase, cxCurrencyEdit, Vcl.OleServer, OutlookXP,PCM.Functions,
  Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection, dxBarExtItems,
  cxButtonEdit,Vcl.FileCtrl, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, dxUIAClasses, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControl,shellapi, dxLayoutControlAdapters;
  {$EndRegion uses}
type
  Tfrm_Config = class(TForm)
    brmgr_Config: TdxBarManager;
    qry_Config: TFDQuery;
    ds_Config: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lagrp_ConfigTab: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ConfigurationChanged(Sender: TObject);
  private
    FSaving: Boolean;
    procedure LoadData;
  end;

var
  frm_Config: Tfrm_Config;

implementation

{$R *.dfm}

uses PCM.Data;

procedure Tfrm_Config.LoadData;
begin
  // ID 1 holds the shared application configuration.
  qry_Config.Open;
  if qry_Config.IsEmpty then
  begin
    qry_Config.Append;
    qry_Config.FieldByName('ID').AsInteger := 1;
    qry_Config.FieldByName('MeldungenErzeugen').AsInteger := 1;
    qry_Config.FieldByName('Pausenpruefung').AsInteger := 1;
    qry_Config.FieldByName('LogischeBuchungen').AsInteger := 1;
    qry_Config.FieldByName('BeginnEndeFehler').AsInteger := 1;
    qry_Config.FieldByName('MaximalArbeitszeit').AsInteger := 1;
    qry_Config.Post;
  end;
end;

procedure Tfrm_Config.ConfigurationChanged(Sender: TObject);
begin
  if FSaving or not qry_Config.Active then
    Exit;
  FSaving := True;
  try
    try
      (Sender as TcxDBCheckBox).PostEditValue;
      if qry_Config.State in [dsEdit, dsInsert] then
        qry_Config.Post;
    except
      qry_Config.Cancel;
      raise;
    end;
  finally
    FSaving := False;
  end;
end;

procedure Tfrm_Config.FormShow(Sender: TObject);
begin
  LoadData;
end;

end.