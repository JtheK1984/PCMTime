unit PCM.Modul.C_ZE.User;

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
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_Userze = class(TForm)
    brmgr_User: TdxBarManager;
    btn_Close: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    cmbbx_KontaktAnrede: TcxDBLookupComboBox;
    colcmbbx_CalBreak: TcxDBColorComboBox;
    colcmbbx_CalWork: TcxDBColorComboBox;
    colcmbbx_FontBreak: TcxDBColorComboBox;
    colcmbbx_FontWork: TcxDBColorComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    ds_Contact_Anrede: TDataSource;
    ds_Contact_Familienstand: TDataSource;
    ds_Contact_Geschlecht: TDataSource;
    ds_Contact_Konfession: TDataSource;
    ds_Contact_Staatsangehoerigkeit: TDataSource;
    ds_Kontakte: TDataSource;
    dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit;
    edt_KontaktEmail1: TcxDBTextEdit;
    edt_KontaktEmail2: TcxDBTextEdit;
    edt_KontaktGeburtsland: TcxDBTextEdit;
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
    grpbx_KontaktAllgemein: TcxGroupBox;
    grpbx_KontakteGeschaeftlich: TcxGroupBox;
    grpbx_KontakteZusatz: TcxGroupBox;
    grpbx_KontakteZusatzSonstige: TcxGroupBox;
    grpbx_ZE: TcxGroupBox;
    img_KontaktZusatzPicture: TcxDBImage;
    lbl_CalBreak: TcxLabel;
    lbl_CalWork: TcxLabel;
    lbl_FontBreak: TcxLabel;
    lbl_FontWork: TcxLabel;
    lbl_KontaktAnrede: TcxLabel;
    lbl_KontaktEmail1: TcxLabel;
    lbl_KontaktEmail2: TcxLabel;
    lbl_KontaktGeburtsland: TcxLabel;
    lbl_KontaktGeburtsname: TcxLabel;
    lbl_KontaktGeschaeftlichAbteilung: TcxLabel;
    lbl_KontaktGeschaeftlichEMail: TcxLabel;
    lbl_KontaktGeschaeftlichFirma: TcxLabel;
    lbl_KontaktGeschaeftlichInternet: TcxLabel;
    lbl_KontaktGeschaeftlichPLZOrt: TcxLabel;
    lbl_KontaktGeschaeftlichStrasse: TcxLabel;
    lbl_KontaktGeschaeftlichTelefonZentrale: TcxLabel;
    lbl_KontaktHandy: TcxLabel;
    lbl_KontaktNachname: TcxLabel;
    lbl_KontaktName: TcxLabel;
    lbl_KontaktPLZOrt: TcxLabel;
    lbl_KontaktStrasse: TcxLabel;
    lbl_KontaktTelefon1: TcxLabel;
    lbl_KontaktTelefon2: TcxLabel;
    lbl_KontaktZusatz: TcxLabel;
    lbl_KontaktZusatzFamilienstand: TcxLabel;
    lbl_KontaktZusatzGeburtsdatum: TcxLabel;
    lbl_KontaktZusatzGeschlecht: TcxLabel;
    lbl_KontaktZusatzkonfession: TcxLabel;
    lbl_KontaktZusatzStaatsanghoerigkeit: TcxLabel;
    lbl_Sollstunden: TcxLabel;
    lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox;
    lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox;
    lucmbbx_KontaktZusatzkonfession: TcxDBLookupComboBox;
    lucmbbx_KontaktZusatzStaatsanghoerigkeit: TcxDBLookupComboBox;
    mem_KontakteZusatzSonstige: TcxDBMemo;
    pc_Kontakte_Kontakte_Adressen: TcxPageControl;
    pnl_KontaktZusatzPicture: TcxGroupBox;
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
    tb_User: TdxBar;
    tedt_Sollstunden: TcxDBTimeEdit;
    ts_A_Zusatz: TcxTabSheet;
    ts_B_Geschaeftlich: TcxTabSheet;
    ts_B_Ze: TcxTabSheet;
    cxLabel2: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    qry_KontakteID_Zeiterfasser: TIntegerField;
    qry_KontakteOffsetResturlaub: TFMTBCDField;
    qry_KontakteOffsetResturlaubJahr: TIntegerField;
    qry_KontaktePersonalnummer: TIntegerField;
    qry_KontakteID_KontakteApp: TIntegerField;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxLabel8: TcxLabel;
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
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
  PCMManager.Modul.H_ZE;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Userze.btn_CloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Userze.btn_SaveClick(Sender: TObject);
begin
  qry_kontakte.post;
end;
procedure Tfrm_Userze.SetButtons;
begin
  btn_Save.Enabled := qry_Kontakte.State in [dsInsert, dsEdit];
end;
procedure Tfrm_Userze.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
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
  qry_kontakte.Open;
end;
{$EndRegion FormFunktionen}
end.
