unit PCMTime.Modul.E_User;

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
  DateUtils,
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
  cxGridCustomView, cxGrid, Winapi.shellapi, dxUIAClasses, dxCore,
  dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, cxCheckBox,
  cxCheckComboBox, cxDBCheckComboBox, cxImageComboBox, Vcl.ComCtrls, cxDateUtils,
  cxButtonEdit, system.Hash;
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
    edt_Geburtsland: TcxDBTextEdit;
    edt_KontaktGeburtsname: TcxDBTextEdit;
    edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit;
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
    btn_MapPrivate: TcxButton;
    itm_Zusatz: TdxLayoutItem;
    itm_StrassePrivat: TdxLayoutItem;
    itm_WebPrivatText: TdxLayoutItem;
    itm_Mail1PrivatText: TdxLayoutItem;
    itm_Mail2PrivatText: TdxLayoutItem;
    itm_Geburtsdatum: TdxLayoutItem;
    itm_Familienstand: TdxLayoutItem;
    itm_Geschlecht: TdxLayoutItem;
    itm_Konfession: TdxLayoutItem;
    itm_Staatsangehoerigkeit: TdxLayoutItem;
    itm_Picture: TdxLayoutItem;
    mem_Sonstige: TcxDBMemo;
    itm_ZusatzSeperator: TdxLayoutSeparatorItem;
    itm_Sonstiges: TdxLayoutItem;
    lbl_Sonstiges: TdxLayoutLabeledItem;
    lagrp_Zeiterfassung: TdxLayoutGroup;
    itm_StaatsangehoerigkeitBtn: TdxLayoutItem;
    itm_KonfessionBtn: TdxLayoutItem;
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
    edt_KontaktSucheFunktion: TcxTextEdit;
    edt_KontaktSucheOrt: TcxTextEdit;
    edt_KontaktSuchePLZ: TcxTextEdit;
    edt_KontaktSucheStrasse: TcxTextEdit;
    edt_KontaktSucheVorname: TcxTextEdit;
    btn_ClearFilter: TcxButton;
    btn_kontaktsuchen: TcxButton;
    lagrp_PersonalTab: TdxLayoutGroup;
    lagrp_Suche: TdxLayoutGroup;
    lagrp_Mitarbeiter: TdxLayoutGroup;
    lagrp_SucheFilter: TdxLayoutGroup;
    itm_SucheErgebnis: TdxLayoutItem;
    itm_Funktion: TdxLayoutItem;
    itm_SucheFilterLoeschen: TdxLayoutItem;
    itm_SucheFiltersetzen: TdxLayoutItem;
    itm_Abteilung: TdxLayoutItem;
    itm_MailBusinessText: TdxLayoutItem;
    itm_Firma: TdxLayoutItem;
    itm_TelefonDurchwahl: TdxLayoutItem;
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
    edt_KontakteSonstigesTeams: TcxDBTextEdit;
    itm_Teams: TdxLayoutItem;
    edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit;
    btn_EditStaatsangehoerigkeit: TcxButton;
    btn_EditKonfession: TcxButton;
    qry_Contact_Kontaktart: TFDQuery;
    ds_Contact_Kontaktart: TDataSource;
    btn_Close: TdxBarLargeButton;
    rib_contacts: TdxRibbon;
    ribTS_Contacts: TdxRibbonTab;
    brmgr_ContactsBar1: TdxBar;
    cxCheckComboBox1: TcxCheckComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lagrp_Firma: TdxLayoutGroup;
    cxButton1: TcxButton;
    itm_FirmaBtn: TdxLayoutItem;
    qry_Firma: TFDQuery;
    ds_Firma: TDataSource;
    qry_abteilung: TFDQuery;
    ds_abteilung: TDataSource;
    qry_KontakteID_Firma: TIntegerField;
    qry_KontakteID_Abteilung: TIntegerField;
    cxCheckComboBox2: TcxCheckComboBox;
    dxLayoutItem2: TdxLayoutItem;
    lagrp_Zeitplan: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    qry_benutzer: TFDQuery;
    ds_benutzer: TDataSource;
    lucmbbx_Wochenplan: TcxDBLookupComboBox;
    lagrp_ZeitplanEdit: TdxLayoutGroup;
    qry_wp: TFDQuery;
    ds_WP: TDataSource;
    qry_KontakteID_Wochenplan: TIntegerField;
    itm_ZeitplanGrid: TdxLayoutItem;
    grd_ZP: TcxGrid;
    grdDBTblView_ZP: TcxGridDBTableView;
    grdlvl_ZP: TcxGridLevel;
    itm_ZeitplanBar: TdxLayoutItem;
    dxBarDockControl1: TdxBarDockControl;
    brmgr_ContactsBar2: TdxBar;
    btn_ZPNew: TdxBarLargeButton;
    btn_ZPSave: TdxBarLargeButton;
    btn_ZPCancel: TdxBarLargeButton;
    btn_ZPDelete: TdxBarLargeButton;
    btn_ZPAdd: TdxBarLargeButton;
    lagrp_ZusatzDetails: TdxLayoutGroup;
    lagrp_ZusatzDetailsWithoutiMAGE: TdxLayoutGroup;
    lagrp_Staatsangehoerigkeit: TdxLayoutGroup;
    lagrp_Konfession: TdxLayoutGroup;
    edt_Email1: TcxDBButtonEdit;
    edt_Email2: TcxDBButtonEdit;
    edt_KontaktInternet: TcxDBButtonEdit;
    lagrp_SucheMitarbeiter: TdxLayoutGroup;
    lagrp_SucheOrt: TdxLayoutGroup;
    lagrp_SucheFirma: TdxLayoutGroup;
    edt_KontaktSucheNachname: TcxTextEdit;
    lagrp_SucheFilterButtons: TdxLayoutGroup;
    lagrp_PLZOrtMaps: TdxLayoutGroup;
    edt_KontaktGeschaeftlichEMail: TcxDBButtonEdit;
    qry_ZP: TFDQuery;
    ds_ZP: TDataSource;
    grdDBTblView_ZPID: TcxGridDBColumn;
    grdDBTblView_ZPID_Benutzer: TcxGridDBColumn;
    grdDBTblView_ZPID_Wochenplan: TcxGridDBColumn;
    grdDBTblView_ZPVon: TcxGridDBColumn;
    grdDBTblView_ZPBis: TcxGridDBColumn;
    dedt_Von: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dedt_Bis: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    qry_KontakteBenutzer: TStringField;
    qry_KontaktePasswort: TStringField;
    qry_KontakteZurgiff_Web: TStringField;
    qry_KontakteZugriff_App: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    qry_benutzerID: TLargeintField;
    qry_benutzerBenutzer: TStringField;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure SetButtonsEnabledVisibleZP(DataSet: TDataSet);
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
    procedure btn_Mail2PrivateClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_WebPrivateClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_MapPrivateClick(Sender: TObject);
    procedure btn_EditStaatsangehoerigkeitClick(Sender: TObject);
    procedure btn_EditKonfessionClick(Sender: TObject);
    procedure SearchKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure grdDBTblView_SucheCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_MapBusinessClick(Sender: TObject);
    procedure btn_MailBusinessClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_Mail1PrivateClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_ZPNewClick(Sender: TObject);
    procedure btn_ZPSaveClick(Sender: TObject);
    procedure btn_ZPCancelClick(Sender: TObject);
    procedure btn_ZPDeleteClick(Sender: TObject);
    procedure btn_ZPAddClick(Sender: TObject);
    procedure qry_ZPAfterScroll(DataSet: TDataSet);
    procedure lagrp_PersonalTabTabChanging(Sender: TObject;
      ANewTabIndex: Integer; var Allow: Boolean);
    procedure qry_KontakteBeforePost(DataSet: TDataSet);
  private
    { Private-Deklarationen }
  public
    bButtons: boolean;
    procedure Setbuttons;
    procedure SetbuttonsZP;
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
  PCM.Functions.Synch.Wait,
  PCM.Time.Strings,
  PCMTime.Modul.E_User.Konfession,
  PCMTime.Modul.E_User.Neu,
  PCMTime.Modul.E_User.Staatsangehoerigkeit;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsunktionen}
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
procedure Tfrm_Userze.SetButtonsZP;
begin
  btn_ZPSave.Enabled := qry_ZP.State in [dsInsert, dsEdit];
  btn_ZPCancel.Enabled := qry_ZP.State in [dsInsert, dsEdit];
  btn_ZPDelete.Enabled := (not qry_ZP.Eof) and not (qry_ZP.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Userze.SetButtonsEnabledVisibleZP(DataSet: TDataSet);
begin
  SetButtonsZP;
end;
{$EndRegion Hilfsunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
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
  for var i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
    cxCheckComboBox1.States[i] := cbsUnchecked;
  for var i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
    cxCheckComboBox2.States[i] := cbsUnchecked;
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
  qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
  qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
  qry_Zp.open;
end;
procedure Tfrm_Userze.btn_LastClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.Last;
  qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
  qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
  qry_Zp.open;
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
    qry_Kontakte.FieldByName('ID_Benutzer').AsInteger:= -1;
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
  qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
  qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
  qry_Zp.open;
end;
procedure Tfrm_Userze.btn_PriorClick(Sender: TObject);
begin
  btn_Save.Click;
  qry_Kontakte.Prior;
  qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
  qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
  qry_Zp.open;
end;
procedure Tfrm_Userze.btn_WebPrivateClick(Sender: TObject; AButtonIndex: Integer);
var
  sURL: string;
begin
  if edt_KontaktInternet.Text <> '' then
  begin
    sURL := edt_KontaktInternet.text;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_Userze.btn_ZPAddClick(Sender: TObject);
var
  iDays: integer;
  dDatum: TDate;
  iDoW: integer;
  iID_Benutzer: integer;
  iID_Tagesplan: integer;
  iID_Buchung: integer;
  tSoll: TTime;
  iSoll: Integer;
  iStd,iMin,iSek,iMSec: Word;
  sTag: String;
  ijahr,iMonat,iTag: Word;
  iFeiertag: integer;
  iFeiertagI: integer;
begin
  iDays:= Round(dedt_Bis.Date - dedt_Von.date) + 1;
  iID_Benutzer:= qry_Kontakte.FieldByName('ID').AsInteger;
  ShowWaitForm(TForm(Self), PWideChar('Zeitplan wird eingetragen'),idays ,417, 65);
  for var i := 0 to idays -1 do
  begin
    dDatum:= IncDay(dedt_Von.date,i);
    WaitFormSetText('Zeitplan wird eingetragen für ' + DateToStr(dDatum));
    iDoW := DayOfTheWeek(dDatum);
    case iDoW of
    1:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Mon as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Mo.';
      end;
    2:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Die as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Di.';
      end;
    3:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Mit as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Mi.';
      end;
    4:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Don as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Do.';
      end;
    5:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Fre as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Fr.';
      end;
    6:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Sam as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'Sa.';
      end;
    7:
      begin
        dm_pcm.qry_work.SQl.Text:= 'Select Son as ID_Tagesplan From time_Wochenplan Where ID = :ID';
        sTag:= 'So.';
      end;
    end;
    dm_pcm.qry_work.ParamByName('ID').AsInteger:= lucmbbx_Wochenplan.EditValue;
    dm_pcm.qry_work.Open;
    iID_Tagesplan:= dm_pcm.qry_work.FieldByName('ID_tagesplan').AsInteger;
    dm_pcm.qry_work.Close;

    dm_pcm.qry_work1.SQL.Text:= 'Select Count(*) as Anzahl from time_buchung Where Datum = :Datum and ID_Benutzer = :ID_Benutzer';
    dm_pcm.qry_work1.ParamByName('Datum').AsDate:= dDatum;
    dm_pcm.qry_work1.ParamByName('ID_Benutzer').AsInteger:= iID_Benutzer;
    dm_pcm.qry_Work1.Open;
    if dm_pcm.qry_Work1.FieldByName('Anzahl').asInteger = 0 then
    begin

      dm_pcm.qry_work.SQL.Text:= 'insert into time_buchung (Datum, ID_Tagesplan,ID_Benutzer) Values (:Datum, :ID_Tagesplan,:ID_Benutzer)';
      dm_pcm.qry_work.ParamByName('Datum').AsDate:= dDatum;
      dm_pcm.qry_work.ParamByName('ID_Benutzer').AsInteger:= iID_Benutzer;
      dm_pcm.qry_work.ParamByName('ID_Tagesplan').AsInteger:= iID_Tagesplan;
      dm_pcm.qry_Work.ExecSQL;
      iID_Buchung := dm_pcm.con_pcm.GetLastAutoGenValue('time_zeitplan_buchung');

      dm_pcm.qry_work.SQL.Text:= 'Select Sollzeit From time_zeitplan Where ID = :ID';
      dm_pcm.qry_work.ParamByName('ID').AsInteger:= iID_Tagesplan;
      dm_pcm.qry_work.open;
      tSoll:= dm_pcm.qry_work.FieldByName('Sollzeit').AsDateTime;
      dm_pcm.qry_work.Close;


      DecodeTime(tSoll,iStd,iMin,iSek,iMSec);
      iSoll:= iStd * 60 + iMin;
      DecodeDate(dDatum,ijahr,iMonat,iTag);
      dm_pcm.qry_work.SQL.Text:= 'SELECT Kategorie FROM time_feiertage ' +
                                 'WHERE Jahr = :Jahr ' +
                                 'and Monat = :Monat ' +
                                 'and Tag = :Tag ' +
                                 'and BL IN (SELECT tf.BL FROM time_user tu LEFT OUTER JOIN time_firma tf ON tf.ID = tu.ID_Firma WHERE tu.ID = :ID_benutzer)';
      dm_pcm.qry_work.ParamByName('Jahr').AsInteger:= iJahr;
      dm_pcm.qry_work.ParamByName('Monat').AsInteger:= iMonat;
      dm_pcm.qry_work.ParamByName('Tag').AsInteger:= iTag;
      dm_pcm.qry_work.ParamByName('ID_benutzer').AsInteger:= iID_Benutzer;
      dm_pcm.qry_work.open;
      iFeiertag:= 0;
      iFeiertagI:= 0;
      if dm_pcm.qry_work.RecordCount > 0 then
      begin
        iFeiertag:=  dm_pcm.qry_work.FieldByName('Kategorie').AsInteger;
        iFeiertagI:= Round(iSOll / iFeiertag)
      end;



      dm_pcm.qry_work.SQL.Text:= 'insert into time_buchungen (Datum, Tag ,Sollstunden,SollstundenI,Feiertag,FeiertagI, ID_Benutzer,ID_Buchung) values (:Datum, :Tag ,:Sollstunden,:SollstundenI,:Feiertag,:FeiertagI, :ID_Benutzer,:ID_Buchung)';
      dm_pcm.qry_work.ParamByName('Datum').AsDate := dDatum;
      dm_pcm.qry_work.ParamByName('Tag').AsString := sTag;
      dm_pcm.qry_work.ParamByName('Sollstunden').AsTime:= tSoll;
      dm_pcm.qry_work.ParamByName('SollstundenI').AsInteger:= iSoll;
      dm_pcm.qry_work.ParamByName('Feiertag').AsInteger:= iFeiertag;
      dm_pcm.qry_work.ParamByName('FeiertagI').AsInteger:= iFeiertagI;
      dm_pcm.qry_work.ParamByName('ID_Benutzer').AsInteger:= iID_benutzer;
      dm_pcm.qry_work.ParamByName('ID_Buchung').AsInteger:= iID_Buchung;
      dm_pcm.qry_Work.ExecSQL;
      WaitFormStep;
    end;
  end;
  CloseWaitform;
  lagrp_ZeitplanEdit.Visible:= false;
end;
procedure Tfrm_Userze.btn_ZPCancelClick(Sender: TObject);
begin
  qry_ZP.Cancel;
  lagrp_ZeitplanEdit.Visible:= false;
end;
procedure Tfrm_Userze.btn_ZPDeleteClick(Sender: TObject);
begin
  if qry_ZP.FieldByName('ID').AsInteger > 0 then
  begin
    qry_ZP.Delete;
  end
end;
procedure Tfrm_Userze.btn_ZPNewClick(Sender: TObject);
begin
  if qry_ZP.State in [dsInsert, dsedit] then
    qry_ZP.Post;
  qry_ZP.Append;
  qry_ZP.Insert;
  lagrp_ZeitplanEdit.Visible:= true;
end;
procedure Tfrm_Userze.btn_ZPSaveClick(Sender: TObject);
begin
  if qry_ZP.State in [dsInsert, dsEdit] then
  begin
    qry_ZP.FieldByName('ID_Benutzer').AsInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
    qry_ZP.Post;
  end;
end;
procedure Tfrm_Userze.btn_Mail1PrivateClick(Sender: TObject; AButtonIndex: Integer);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Privat').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);

end;
procedure Tfrm_Userze.btn_SaveClick(Sender: TObject);
begin
  if qry_Kontakte.State in [dsInsert, dsEdit] then
  begin
    if qry_Kontakte.Fieldbyname('iD_Benutzer').asinteger = -1 then
      qry_Kontakte.Fieldbyname('iD_Benutzer').asinteger := 0;
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
//  str_Filter:= 'id_Benutzer = ' +  IntToStr(dm_PCM.iIDBenutzerPCM);
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
  str_temp:= '';
  for var i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
  begin
    if cxCheckComboBox1.GetItemState(i) = cbsChecked then
    begin
      str_temp:= str_temp + ',' + IntToStr(cxCheckComboBox1.Properties.Items[i].Tag)
    end;
  end;
  if str_temp <> '' then
  begin
    str_temp:= Copy(str_temp,2,Length(str_temp));
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'ID_Firma in( ' + str_temp + ')';
  end;
  str_temp:= '';
  for var i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
  begin
    if cxCheckComboBox2.GetItemState(i) = cbsChecked then
    begin
      str_temp:= str_temp + ',' + IntToStr(cxCheckComboBox2.Properties.Items[i].Tag)
    end;
  end;
  if str_temp <> '' then
  begin
    str_temp:= Copy(str_temp,2,Length(str_temp));
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'ID_Abteilung in( ' + str_temp + ')';
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
procedure Tfrm_Userze.btn_Mail2PrivateClick(Sender: TObject; AButtonIndex: Integer);
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
procedure Tfrm_Userze.btn_MailBusinessClick(Sender: TObject; AButtonIndex: Integer);
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
  dm_PCM.qry_Work.SQL.text:= 'SELECT Strasse, PLZ, Ort From time_firma Where iD = :ID';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= qry_Kontakte.FieldByName('ID_Firma').AsInteger;
  dm_PCM.qry_Work.Open;
  sLink:= 'http://maps.google.de/maps?q=' + dm_PCM.qry_Work.FieldByName('Strasse').AsString + ',' + dm_PCM.qry_Work.FieldByName('PLZ').AsString + '+' + dm_PCM.qry_Work.FieldByName('Ort').AsString + '&z=12';
  dm_PCM.qry_Work.Close;
  ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);
end;
procedure Tfrm_Userze.grdDBTblView_SucheCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Suche.GetHitTest(grd_Suche.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
    begin
      qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
      qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
      qry_Zp.open;
      lagrp_PersonalTab.ItemIndex:= 1;
    end;
  end;
end;
procedure Tfrm_Userze.lagrp_PersonalTabTabChanging(Sender: TObject;
  ANewTabIndex: Integer; var Allow: Boolean);
begin
  qry_Zp.sql.text:= 'Select * From time_user_wochenplan Where ID_Benutzer = :ID';
  qry_Zp.ParamByName('ID').asInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
  qry_Zp.open;
end;

procedure Tfrm_Userze.qry_KontakteBeforePost(DataSet: TDataSet);
var
  plainPwd, md5Pwd: string;
begin
  plainPwd := DataSet.FieldByName('Passwort').AsString;
  md5Pwd := THashMD5.GetHashString(plainPwd);
  DataSet.FieldByName('Passwort').AsString := md5Pwd;
end;

procedure Tfrm_Userze.qry_ZPAfterScroll(DataSet: TDataSet);
//var
//  sdate: String;
begin
//  sdate:= DateToStr(dedt_Von.Date);
//  if sDate <> '00.00.0000' then
//    lagrp_ZeitplanEdit.Visible:= false
//  else
//    lagrp_ZeitplanEdit.Visible:= true;
end;
procedure Tfrm_Userze.SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btn_kontaktsuchen.Click;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Userze.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Userze.FormShow(Sender: TObject);
var
  NewItem: TcxCheckComboBoxItem;
begin
  qry_benutzer.open;
  qry_Firma.Open;
  qry_wp.Open;
  qry_Abteilung.Open;
  qry_Contact_Anrede.Open;
  qry_Contact_Familienstand.Open;
  qry_Contact_Geschlecht.Open;
  qry_Contact_Konfession.Open;
  qry_Contact_Staatsangehoerigkeit.Open;
  qry_Contact_Kontaktart.Open;
  qry_kontakte.Open;
  dm_PCM.qry_Work.SQl.Text:= 'SELECT id, nummer, Bezeichnung, if(Typ = 1, ''Hauptsitz'', ''Arbeitsort'') AS Typ FROM time_firma';
  dm_PCM.qry_Work.open;
  while not dm_PCM.qry_Work.eof do
  begin
    NewItem := cxCheckComboBox1.Properties.Items.Add;
    NewItem.Description := dm_PCM.qry_Work.FieldByName('Nummer').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Typ').AsString;
    NewItem.ShortDescription := dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Typ').AsString;
    NewItem.Tag := dm_PCM.qry_Work.FieldByName('ID').asInteger;
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
  dm_PCM.qry_Work.SQl.Text:= 'SELECT id, nummer, Bezeichnung FROM time_Abteilung';
  dm_PCM.qry_Work.open;
  while not dm_PCM.qry_Work.eof do
  begin
    NewItem := cxCheckComboBox2.Properties.Items.Add;
    NewItem.Description := dm_PCM.qry_Work.FieldByName('Nummer').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString;
    NewItem.ShortDescription := dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString;
    NewItem.Tag := dm_PCM.qry_Work.FieldByName('ID').asInteger;
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
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
{$EndRegion FormFunktionen}
end.
