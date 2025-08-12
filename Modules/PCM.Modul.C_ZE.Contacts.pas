unit PCM.Modul.C_ZE.Contacts;

interface

uses
  {$Region Uses}
  cxButtons,
  cxCalendar,
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxDBColorComboBox,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxImage,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxMemo,
  cxPC,
  cxSpinEdit,
  cxTextEdit,
  cxTimeEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
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
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Winapi.shellapi, dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_Userze = class(TForm)
    cmbbx_Anrede: TcxDBLookupComboBox;
    colcmbbx_KalFarbePause: TcxDBColorComboBox;
    colcmbbx_KalFarbeArbeit: TcxDBColorComboBox;
    colcmbbx_SchriftFarbePause: TcxDBColorComboBox;
    colcmbbx_SchriftFarbeArbeit: TcxDBColorComboBox;
    dedt_Eintritt: TcxDBDateEdit;
    lucmbbx_Benutzer: TcxDBLookupComboBox;
    sedt_Urlaubanspruch: TcxDBSpinEdit;
    ds_Contact_Anrede: TDataSource;
    ds_Contact_Familienstand: TDataSource;
    ds_Contact_Geschlecht: TDataSource;
    ds_Contact_Konfession: TDataSource;
    ds_Contact_Staatsangehoerigkeit: TDataSource;
    ds_Kontakte: TDataSource;
    dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit;
    edt_Email2: TcxDBTextEdit;
    edt_Geburtsland: TcxDBTextEdit;
    edt_KontaktGeburtsname: TcxDBTextEdit;
    edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit;
    edt_KontaktGeschaeftlichEMail: TcxDBTextEdit;
    edt_KontaktGeschaeftlichFirma: TcxDBTextEdit;
    edt_KontaktGeschaeftlichInternet: TcxDBTextEdit;
    edt_KontaktGeschaeftlichOrt: TcxDBTextEdit;
    edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit;
    edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit;
    edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit;
    edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit;
    edt_KontaktHandy: TcxDBTextEdit;
    edt_KontaktNachname: TcxDBTextEdit;
    edt_KontaktName: TcxDBTextEdit;
    edt_KontaktOrt: TcxDBTextEdit;
    edt_KontaktPLZ: TcxDBTextEdit;
    edt_KontaktStrasse: TcxDBTextEdit;
    edt_KontaktTelefon1: TcxDBTextEdit;
    edt_KontaktTelefon2: TcxDBTextEdit;
    edt_KontaktZusatz: TcxDBTextEdit;
    img_Picture: TcxDBImage;
    lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox;
    lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox;
    lucmbbx_Konfession: TcxDBLookupComboBox;
    lucmbbx_Staatsanghoerigkeit: TcxDBLookupComboBox;
    qry_Contact_Anrede: TFDQuery;
    qry_Contact_Familienstand: TFDQuery;
    qry_Contact_Geschlecht: TFDQuery;
    qry_Contact_Konfession: TFDQuery;
    qry_Contact_Staatsangehoerigkeit: TFDQuery;
    qry_Kontakte: TFDQuery;
    qry_KontakteAbteilung_Ges: TStringField;
    qry_KontakteBild: TBlobField;
    qry_KontakteColCalBreak: TIntegerField;
    qry_KontakteColCalWork: TIntegerField;
    qry_KontakteColFontBreak: TIntegerField;
    qry_KontakteColFontWork: TIntegerField;
    qry_KontakteE_Mail_Ges: TStringField;
    qry_KontakteE_Mail_Privat: TStringField;
    qry_KontakteE_Mail_Privat1: TStringField;
    qry_KontakteE_Mail_Privat2: TStringField;
    qry_KontakteEintritt: TDateField;
    qry_KontakteFacebook: TStringField;
    qry_KontakteFirma: TStringField;
    qry_KontakteFunktion_Ges: TStringField;
    qry_KontakteGeburtsdatum: TDateField;
    qry_KontakteGeburtsland: TStringField;
    qry_KontakteGeburtsname: TStringField;
    qry_KontakteHandy_Ges: TStringField;
    qry_KontakteHandy_privat: TStringField;
    qry_KontakteICQ: TStringField;
    qry_KontakteID: TFDAutoIncField;
    qry_KontakteID_Anrede: TIntegerField;
    qry_KontakteID_Benutzer: TIntegerField;
    qry_KontakteID_Familienstand: TIntegerField;
    qry_KontakteID_Geschlecht: TIntegerField;
    qry_KontakteID_Konfession: TIntegerField;
    qry_KontakteID_Kontaktart: TIntegerField;
    qry_KontakteID_Staatsangehoerigkeit: TIntegerField;
    qry_KontakteInfo: TMemoField;
    qry_KontakteInternet_Ges: TStringField;
    qry_KontakteInternet_Privat: TStringField;
    qry_KontakteLive_Messanger: TStringField;
    qry_KontakteNachname: TStringField;
    qry_KontakteOrt_Ges: TStringField;
    qry_KontakteOrt_Privat: TStringField;
    qry_KontaktePLZ_Ges: TStringField;
    qry_KontaktePLZ_Privat: TStringField;
    qry_KontakteSkype: TStringField;
    qry_KontakteSollstunden: TTimeField;
    qry_KontakteStrasse_Ges: TStringField;
    qry_KontakteStrasse_Privat: TStringField;
    qry_KontakteTelefon_Ges: TStringField;
    qry_KontakteTelefon_Privat: TStringField;
    qry_KontakteTelefon_Privat1: TStringField;
    qry_KontakteTelefon_Privat2: TStringField;
    qry_KontakteUrlaub: TIntegerField;
    qry_KontakteVorname: TStringField;
    qry_KontakteZentrale_Ges: TStringField;
    qry_KontakteZusatz: TStringField;
    tedt_Sollstunden: TcxDBTimeEdit;
    medt_Resturlaub: TcxDBMaskEdit;
    medt_ResturlaubzumJahr: TcxDBMaskEdit;
    qry_KontakteID_Zeiterfasser: TIntegerField;
    qry_KontakteOffsetResturlaub: TFMTBCDField;
    qry_KontakteOffsetResturlaubJahr: TIntegerField;
    qry_KontaktePersonalnummer: TIntegerField;
    qry_KontakteID_KontakteApp: TIntegerField;
    medt_Personalnummer: TcxDBMaskEdit;
    lagrp_Personal: TdxLayoutGroup;
    lactrl_Main: TdxLayoutControl;
    lagrp_MitarbeiterInfo: TdxLayoutGroup;
    lagrp_MitarbeiterInfoDetails: TdxLayoutGroup;
    lagrp_Zusatz: TdxLayoutGroup;
    lagrp_Sonstige: TdxLayoutGroup;
    lagrp_Business: TdxLayoutGroup;
    itm_Anrede: TdxLayoutItem;
    itm_Vorname: TdxLayoutItem;
    itm_Geburtsname: TdxLayoutItem;
    itm_Nachname: TdxLayoutItem;
    itm_Geburtsland: TdxLayoutItem;
    itm_HandyPrivat: TdxLayoutItem;
    itm_Telefon2: TdxLayoutItem;
    itm_Telefon1: TdxLayoutItem;
    itm_MapPrivat: TdxLayoutItem;
    itm_OrtPrivat: TdxLayoutItem;
    itm_PLZPrivat: TdxLayoutItem;
    lagrp_PLZOrtPrivat: TdxLayoutAutoCreatedGroup;
    btn_MapPrivate: TcxButton;
    itm_Zusatz: TdxLayoutItem;
    itm_StrassePrivat: TdxLayoutItem;
    itm_Mail1PrivatBtn: TdxLayoutItem;
    itm_Mail2PrivatBtn: TdxLayoutItem;
    lagrp_Mail1Privat: TdxLayoutAutoCreatedGroup;
    itm_WebPrivatText: TdxLayoutItem;
    edt_Email1: TcxDBTextEdit;
    itm_Mail1PrivatText: TdxLayoutItem;
    itm_Mail2PrivatText: TdxLayoutItem;
    itm_Geburtsdatum: TdxLayoutItem;
    itm_Familienstand: TdxLayoutItem;
    itm_Geschlecht: TdxLayoutItem;
    itm_Konfession: TdxLayoutItem;
    itm_Staatsangehoerigkeit: TdxLayoutItem;
    itm_Picture: TdxLayoutItem;
    lagrp_ZusatzDetails: TdxLayoutAutoCreatedGroup;
    lagrp_Details: TdxLayoutAutoCreatedGroup;
    mem_Sonstige: TcxDBMemo;
    itm_ZusatzSeperator: TdxLayoutSeparatorItem;
    itm_Sonstiges: TdxLayoutItem;
    lbl_Sonstiges: TdxLayoutLabeledItem;
    lagrp_Zeiterfassung: TdxLayoutGroup;
    btn_Mail1Private: TcxButton;
    btn_Mail2Private: TcxButton;
    itm_StaatsangehoerigkeitBtn: TdxLayoutItem;
    itm_KonfessionBtn: TdxLayoutItem;
    lagrp_Staatsangehoerigkeit: TdxLayoutAutoCreatedGroup;
    lagrp_Konfession: TdxLayoutAutoCreatedGroup;
    brmgr_Contacts: TdxBarManager;
    tb_Contacts: TdxBar;
    btn_New: TdxBarLargeButton;
    btn_Next: TdxBarLargeButton;
    btn_Prior: TdxBarLargeButton;
    btn_First: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_Cancel: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    btn_Last: TdxBarLargeButton;
    grd_Suche: TcxGrid;
    grdDBTblView_Suche: TcxGridDBTableView;
    grdDBTblView_SucheID: TcxGridDBColumn;
    grdDBTblView_SucheID_Anrede: TcxGridDBColumn;
    grdDBTblView_SucheVorname: TcxGridDBColumn;
    grdDBTblView_SucheNachname: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsname: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsland: TcxGridDBColumn;
    grdDBTblView_SucheZusatz: TcxGridDBColumn;
    grdDBTblView_SucheBild: TcxGridDBColumn;
    grdDBTblView_SucheStrasse_Privat: TcxGridDBColumn;
    grdDBTblView_SuchePLZ_Privat: TcxGridDBColumn;
    grdDBTblView_SucheOrt_Privat: TcxGridDBColumn;
    grdDBTblView_SucheID_Kontaktart: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Privat: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Privat1: TcxGridDBColumn;
    grdDBTblView_SucheHandy_privat: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Privat: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Privat1: TcxGridDBColumn;
    grdDBTblView_SucheInternet_Privat: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsdatum: TcxGridDBColumn;
    grdDBTblView_SucheID_Geschlecht: TcxGridDBColumn;
    grdDBTblView_SucheID_Familienstand: TcxGridDBColumn;
    grdDBTblView_SucheID_Staatsangehoerigkeit: TcxGridDBColumn;
    grdDBTblView_SucheID_Konfession: TcxGridDBColumn;
    grdDBTblView_SucheInfo: TcxGridDBColumn;
    grdDBTblView_SucheFirma: TcxGridDBColumn;
    grdDBTblView_SucheStrasse_Ges: TcxGridDBColumn;
    grdDBTblView_SuchePLZ_Ges: TcxGridDBColumn;
    grdDBTblView_SucheOrt_Ges: TcxGridDBColumn;
    grdDBTblView_SucheAbteilung_Ges: TcxGridDBColumn;
    grdDBTblView_SucheFunktion_Ges: TcxGridDBColumn;
    grdDBTblView_SucheZentrale_Ges: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Ges: TcxGridDBColumn;
    grdDBTblView_SucheHandy_Ges: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Ges: TcxGridDBColumn;
    grdDBTblView_SucheInternet_Ges: TcxGridDBColumn;
    grdDBTblView_SucheFacebook: TcxGridDBColumn;
    grdDBTblView_SucheSkype: TcxGridDBColumn;
    grdDBTblView_SucheLive_Messanger: TcxGridDBColumn;
    grdLvl_Suche: TcxGridLevel;
    cmbbx_KontaktSucheArt: TcxComboBox;
    edt_KontaktSucheAbteilung: TcxTextEdit;
    edt_KontaktSucheFirma: TcxTextEdit;
    edt_KontaktSucheFunktion: TcxTextEdit;
    edt_KontaktSucheNachname: TcxTextEdit;
    edt_KontaktSucheOrt: TcxTextEdit;
    edt_KontaktSuchePLZ: TcxTextEdit;
    edt_KontaktSucheStrasse: TcxTextEdit;
    edt_KontaktSucheVorname: TcxTextEdit;
    btn_ClearFilter: TcxButton;
    btn_kontaktsuchen: TcxButton;
    lagrp_Mail2Privat: TdxLayoutAutoCreatedGroup;
    itm_WebPrivatBtn: TdxLayoutItem;
    lagrp_InternetPrivat: TdxLayoutAutoCreatedGroup;
    lagrp_PersonalTab: TdxLayoutGroup;
    lagrp_Suche: TdxLayoutGroup;
    lagrp_Mitarbeiter: TdxLayoutGroup;
    lagrp_SucheFilter: TdxLayoutGroup;
    itm_SucheErgebnis: TdxLayoutItem;
    itm_Funktion: TdxLayoutItem;
    itm_SucheFilterLoeschen: TdxLayoutItem;
    itm_SucheFiltersetzen: TdxLayoutItem;
    lagroup_SucheFilterButtons: TdxLayoutAutoCreatedGroup;
    itm_StrasseBusiness: TdxLayoutItem;
    itm_Abteilung: TdxLayoutItem;
    itm_MailBusinessText: TdxLayoutItem;
    itm_Firma: TdxLayoutItem;
    itm_WebBusinessText: TdxLayoutItem;
    itm_OrtBusiness: TdxLayoutItem;
    itm_PLZBusiness: TdxLayoutItem;
    itm_TelefonDurchwahl: TdxLayoutItem;
    itm_TelefonZentrale: TdxLayoutItem;
    itm_KalFarbePause: TdxLayoutItem;
    itm_KalFarbeArbeit: TdxLayoutItem;
    itm_SchriftFarbePause: TdxLayoutItem;
    itm_SchriftFarbeArbeit: TdxLayoutItem;
    itm_Eintritt: TdxLayoutItem;
    itm_Benutzer: TdxLayoutItem;
    itm_RUL: TdxLayoutItem;
    itm_RULzumJahr: TdxLayoutItem;
    itm_PersNr: TdxLayoutItem;
    itm_ULAnspruch: TdxLayoutItem;
    itm_SollStunden: TdxLayoutItem;
    itm_KontaktartSuche: TdxLayoutItem;
    itm_AbteilungSuche: TdxLayoutItem;
    itm_FirmaSuche: TdxLayoutItem;
    itm_FunktionSuche: TdxLayoutItem;
    itm_NachnameSuche: TdxLayoutItem;
    itm_OrtSuche: TdxLayoutItem;
    itm_PLZSuche: TdxLayoutItem;
    itm_StrasseSuche: TdxLayoutItem;
    itm_VornameSuche: TdxLayoutItem;
    lagrp_SucheMitarbeiter: TdxLayoutAutoCreatedGroup;
    lagrp_SucheOrt: TdxLayoutAutoCreatedGroup;
    lagrp_SucheFirma: TdxLayoutAutoCreatedGroup;
    edt_KontakteSonstigesFacebook: TcxDBTextEdit;
    edt_KontakteSonstigesSkype: TcxDBTextEdit;
    edt_KontakteSonstigesTeams: TcxDBTextEdit;
    itm_Facebook: TdxLayoutItem;
    itm_Skype: TdxLayoutItem;
    itm_Teams: TdxLayoutItem;
    edt_KontaktInternet: TcxDBTextEdit;
    btn_WebPrivate: TcxButton;
    lagrp_PLZOrtBusiness: TdxLayoutAutoCreatedGroup;
    edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit;
    itm_WebBusinessBtn: TdxLayoutItem;
    itm_MailBusinessBtn: TdxLayoutItem;
    btn_EditStaatsangehoerigkeit: TcxButton;
    btn_EditKonfession: TcxButton;
    qry_Contact_Kontaktart: TFDQuery;
    ds_Contact_Kontaktart: TDataSource;
    lagrp_MailBusiness: TdxLayoutAutoCreatedGroup;
    lagrp_InternetBusiness: TdxLayoutAutoCreatedGroup;
    itm_MapBusiness: TdxLayoutItem;
    btn_WebBusiness: TcxButton;
    btn_MapBusiness: TcxButton;
    btn_MailBusiness: TcxButton;
    btn_Close: TdxBarLargeButton;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btn_kontaktsuchenClick(Sender: TObject);
    procedure btn_ClearFilterClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_FirstClick(Sender: TObject);
    procedure btn_PriorClick(Sender: TObject);
    procedure btn_NextClick(Sender: TObject);
    procedure btn_LastClick(Sender: TObject);
    procedure btn_Mail1PrivateClick(Sender: TObject);
    procedure btn_Mail2PrivateClick(Sender: TObject);
    procedure btn_WebPrivateClick(Sender: TObject);
    procedure btn_MapPrivateClick(Sender: TObject);
    procedure btn_EditStaatsangehoerigkeitClick(Sender: TObject);
    procedure btn_EditKonfessionClick(Sender: TObject);
    procedure edt_KontaktSucheNachnameKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure grdDBTblView_SucheCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_WebBusinessClick(Sender: TObject);
    procedure btn_MapBusinessClick(Sender: TObject);
    procedure btn_MailBusinessClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    bButtons: boolean;
    procedure Setbuttons;
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Userze: Tfrm_Userze;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region uses}
  PCM.Data,
  PCM.Modul.C_ZE,
  PCM.Modul.C_ZE.Contacts.Neu,
  PCM.Modul.C_ZE.Contacts.Staatsangehoerigkeit,
  PCM.Time.Strings, PCM.Modul.C_ZE.Contacts.Konfession;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Userze.SetButtons;
begin
  btn_Save.Enabled := qry_Kontakte.State in [dsInsert, dsEdit];
  btn_Cancel.Enabled := qry_Kontakte.State in [dsInsert, dsEdit];
  btn_Delete.Enabled := (not qry_Kontakte.Eof) and not (qry_Kontakte.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Userze.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;

procedure Tfrm_Userze.btn_CancelClick(Sender: TObject);
begin
  qry_Kontakte.Cancel;
end;

procedure Tfrm_Userze.btn_DeleteClick(Sender: TObject);
begin
  if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Kontakte.Delete;
  end;
end;

procedure Tfrm_Userze.btn_ClearFilterClick(Sender: TObject);
begin
  edt_KontaktSucheNachname.Text:= '';
  edt_KontaktSucheVorname.Text:= '';
  cmbbx_KontaktSucheArt.ItemIndex:= -1;
  edt_KontaktSucheStrasse.Text:= '';
  edt_KontaktSuchePLZ.Text:= '';
  edt_KontaktSucheOrt.Text:= '';
  edt_KontaktSucheFirma.Text:= '';
  edt_KontaktSucheAbteilung.Text:= '';
  edt_KontaktSucheFunktion.Text:= '';
  btn_kontaktsuchen.Click;
end;
procedure Tfrm_Userze.btn_CloseClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_Userze.btn_FirstClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.First;
end;

procedure Tfrm_Userze.btn_LastClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.Last;
end;

procedure Tfrm_Userze.btn_NewClick(Sender: TObject);
var
  iAnrede : Integer;
  sVorname, sName: string;
  iID_Kontakt: integer;
begin
  Application.CreateForm(Tfrm_PCManagerNewContact, frm_PCManagerNewContact);
  if frm_PCManagerNewContact.Execute(True,iAnrede, sVorname, sName) then
  begin
    if not qry_Kontakte.active then
       qry_Kontakte.Open;
    if qry_Kontakte.State in [dsInsert, dsedit] then
      qry_Kontakte.Post;
    qry_Kontakte.Append;
    qry_Kontakte.Insert;
    qry_Kontakte.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    if iAnrede <> 0 then
      qry_Kontakte.FieldByName('ID_Anrede').AsInteger:= iAnrede;
    qry_Kontakte.FieldByName('Vorname').AsString:= sVorname;
    qry_Kontakte.FieldByName('Nachname').AsString:= sName;
    qry_Kontakte.Post;
    bButtons:= true;
    dm_PCM.qry_work.SQL.Text:= 'SELECT ID FROM time_user Where ID_Anrede = :ID_Anrede and Vorname = :Vorname and Nachname = :Nachname';
    dm_PCM.qry_work.ParamByName('ID_Anrede').AsInteger:= iAnrede;
    dm_PCM.qry_work.ParamByName('Vorname').AsString:= sVorname;
    dm_PCM.qry_work.ParamByName('Nachname').AsString:= sName;
    dm_PCM.qry_work.open;
    iID_Kontakt:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.Close;
    lagrp_PersonalTab.ItemIndex:= 1;
    qry_Kontakte.Refresh;
    qry_Kontakte.Locate('ID',iID_Kontakt,[]);
  end;
  frm_PCManagerNewContact.Free;
end;
procedure Tfrm_Userze.btn_NextClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.Next;
end;

procedure Tfrm_Userze.btn_PriorClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.Prior;
end;

procedure Tfrm_Userze.btn_WebPrivateClick(Sender: TObject);
var
  sURL: string;
begin
  if edt_KontaktInternet.Text <> '' then
  begin
    sURL := edt_KontaktInternet.text;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;

procedure Tfrm_Userze.btn_SaveClick(Sender: TObject);
begin
  if qry_Kontakte.State in [dsInsert, dsEdit] then
  begin
    qry_Kontakte.Post;
  end;
end;
procedure Tfrm_Userze.btn_kontaktsuchenClick(Sender: TObject);
var
  str_filter: string;
  str_temp:string;
begin
  qry_Kontakte.Open;
  Screen.Cursor := crHourGlass;
  qry_Kontakte.Filtered:= false;
  str_Filter:= 'id_Benutzer = ' +  IntToStr(dm_PCM.iIDBenutzerPCM);
  if edt_KontaktSucheNachname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheNachname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Nachname) like '+ QuotedStr(str_temp);
  end;
  if edt_KontaktSucheVorname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheVorname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Vorname) like ' + QuotedStr(str_temp);
  end;
  if cmbbx_KontaktSucheArt.ItemIndex <> -1 then
  begin
  if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'ID_Kontaktart = ' + IntToStr(Integer(cmbbx_KontaktSucheArt.Properties.Items.Objects[cmbbx_KontaktSucheArt.ItemIndex]));
  end;
  if edt_KontaktSucheStrasse.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheStrasse.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Strasse_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSuchePLZ.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSuchePLZ.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(PLZ_Privat like) ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheOrt.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheOrt.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Ort_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheFirma.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFirma.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Firma) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheAbteilung.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheAbteilung.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Abteilung_Ges) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheFunktion.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFunktion.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Funktion_Ges) like ' + QuotedStr(str_temp);
  end;
  qry_Kontakte.Filter:= str_filter;
  qry_Kontakte.Filtered:= true;
  Screen.Cursor := crDefault;
  grd_Suche.SetFocus;
  grdDBTblView_Suche.Focused := true;
end;


procedure Tfrm_Userze.btn_MapPrivateClick(Sender: TObject);
var
  slink: string;
begin
  sLink:= 'http://maps.google.de/maps?q=' + edt_KontaktStrasse.Text + ',' + edt_KontaktPLZ.Text + '+' + edt_KontaktOrt.Text + '&z=12';
  ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrm_Userze.btn_Mail1PrivateClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Privat').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;

procedure Tfrm_Userze.btn_Mail2PrivateClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Privat1').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;

procedure Tfrm_Userze.btn_EditStaatsangehoerigkeitClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Staatsangehoerigkeit, frm_PCM_Staatsangehoerigkeit);
  if frm_PCM_Staatsangehoerigkeit.Execute(rs_PCMManager_Staatsangehoerigkeitbearbeiten, 3) then
    qry_Contact_Staatsangehoerigkeit.refresh;
end;

procedure Tfrm_Userze.btn_EditKonfessionClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_PCM_Konfession, frm_PCM_Konfession);
   if frm_PCM_Konfession.Execute(rs_PCMManager_Konfessionbearbeiten,3) then
     qry_Contact_Konfession.Refresh;
end;

procedure Tfrm_Userze.btn_MailBusinessClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Ges').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;

procedure Tfrm_Userze.btn_MapBusinessClick(Sender: TObject);
var
  slink: string;
begin
  sLink:= 'http://maps.google.de/maps?q=' + edt_KontaktGeschaeftlichStrasse.Text + ',' + edt_KontaktGeschaeftlichPLZ.Text + '+' + edt_KontaktGeschaeftlichOrt.Text + '&z=12';
  ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);
end;


procedure Tfrm_Userze.btn_WebBusinessClick(Sender: TObject);
var
  sURL: string;
begin
  if edt_KontaktGeschaeftlichInternet.Text <> '' then
  begin
    sURL := edt_KontaktInternet.text;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;

procedure Tfrm_Userze.edt_KontaktSucheNachnameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btn_kontaktsuchen.Click;
end;

{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}

procedure Tfrm_Userze.FormShow(Sender: TObject);
begin
  qry_Contact_Anrede.Open;
  qry_Contact_Familienstand.Open;
  qry_Contact_Geschlecht.Open;
  qry_Contact_Konfession.Open;
  qry_Contact_Staatsangehoerigkeit.Open;
  qry_Contact_Kontaktart.Open;
  qry_kontakte.Open;

  if frm_Userze.HasParent then
  begin
    btn_Close.Visible:= ivnever;
    lagrp_PersonalTab.ItemIndex:= 0;
  end
  else begin
    btn_Close.Visible:= ivAlways;
    if qry_kontakte.Locate('ID', dm_PCM.iIDBenutzerPCM, []) then
      lagrp_PersonalTab.ItemIndex:= 1;
  end;
end;
procedure Tfrm_Userze.grdDBTblView_SucheCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Suche.GetHitTest(grd_Suche.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
    begin
      lagrp_PersonalTab.ItemIndex:= 1;
    end;
  end;
end;



{$EndRegion FormFunktionen}
end.
