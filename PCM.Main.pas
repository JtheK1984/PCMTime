unit PCM.Main;

interface

uses
  {$Region Uses}
  cxBarEditItem,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomCanvas,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  cxEdit,
  cxGeometry,
  cxGraphics,
  cxGridChartView,
  cxGroupBox,
  cxLabel,
  cxLocalization,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxPC,
  cxPivotGridChartConnection,
  cxSplitter,
  cxVariants,
  DateUtils,
  dxBar,
  dxBarBuiltInMenu,
  dxBarExtItems,
  dxChartControl,
  dxChartCore,
  dxChartData,
  dxChartDBData,
  dxChartLegend,
  dxChartMarkers,
  dxChartSimpleDiagram,
  dxChartXYDiagram,
  dxChartXYSeriesAreaView,
  dxChartXYSeriesBarView,
  dxChartXYSeriesLineView,
  dxCoreClasses,
  dxCoreGraphics,
  dxCustomData,
  dxNavBar,
  dxNavBarBase,
  dxNavBarCollns,
  dxNavBarStyles,
  dxSkinsCore,
  FireDAC.Phys.ADS,
  FireDAC.Phys.ADSDef,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Stan.Param,
  inifiles,
  NTTranslator,
  shellapi,
  Strutils,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.Themes,
  VCLTee.Chart,
  VCLTee.DBChart,
  VCLTee.Series,
  VCLTee.TeeDBCrossTab,
  VclTee.TeeGDIPlus,
  VCLTee.TeEngine,
  VCLTee.TeeProcs,
  Winapi.Messages,
  Winapi.Windows,
  SYSTEM.uitypes, dxLayoutContainer, dxLayoutControl, cxImageList, dxUIAClasses,
  dxChartPalette, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;
  {$EndRegion Uses}
type
  {$Region Type}
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);

  TMethod = procedure of object;
  TModuleType = (mtForm, mtEvent);
  TModule = class(TCollectionItem)
  protected
    FFormClass: TFormClass;
    FInstance: Pointer;
    FEvent: TMethod;
    FType: TModuleType;
    FRight: Integer;
    FModuleName: String;
    FImageIndex: Integer;
    procedure SetEvent(Value: TMethod);
    procedure SetFormClass(Value: TFormClass);
  public
    property Event: TMethod read FEvent write SetEvent;
    property FormClass: TFormClass read FFormClass write SetFormClass;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
    property Instance: Pointer read FInstance write FInstance;
    property ModuleName: String read FModuleName write FModuleName;
    property Right: Integer read FRight write FRight;
    property Typ: TModuleType read FType;
  end;

  Tfrm_PCM_Main = class(TForm)
    brmgr_Main: TdxBarManager;
    brstc_OpenModule: TdxBarStatic;
    brstc_User: TdxBarStatic;
    btn_CloseModul: TdxBarLargeButton;
    btn_Modulleiste: TdxBarLargeButton;
    btn_RefreshRights: TdxBarLargeButton;
    grpbx_Design: TcxGroupBox;
    iAbmelden: TdxNavBarItem;
    iBeenden: TdxNavBarItem;
    iBenutzerverwaltung: TdxNavBarItem;
    iChangePW: TdxNavBarItem;
    iZeiterfassung: TdxNavBarItem;
    iDesign: TdxNavBarItem;
    iHandbuch: TdxNavBarItem;
    iInfo: TdxNavBarItem;
    imglst_Icons: TImageList;
    iSprache: TdxNavBarItem;
    iSysteminfo: TdxNavBarItem;
    lafCtrl_Main: TcxLookAndFeelController;
    loc_Lang: TcxLocalizer;
    navbr_main: TdxNavBar;
    navbrgrp_Info: TdxNavBarGroup;
    navbrgrp_Bewegungsdaten: TdxNavBarGroup;
    navbrgrp_Optionen: TdxNavBarGroup;
    navbrgrp_Programm: TdxNavBarGroup;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pc_main: TcxPageControl;
    ppm_Main: TPopupMenu;
    ppmbtn_Abmelden: TMenuItem;
    ppmbtn_Backup: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ppmbtn_Benutzer: TMenuItem;
    ppmbtn_Design: TMenuItem;
    ppmbtn_Handbuch: TMenuItem;
    ppmbtn_Info: TMenuItem;
    ppmbtn_Sprache: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    tb_main: TdxBar;
    trayic_Main: TTrayIcon;
    navbrgrp_Stammdaten: TdxNavBarGroup;
    iMitarbeiter: TdxNavBarItem;
    iFehltag: TdxNavBarItem;
    iFeiertage: TdxNavBarItem;
    navbrgrp_Auswertung: TdxNavBarGroup;
    iReports: TdxNavBarItem;
    iMonatswerte: TdxNavBarItem;
    ts_Dashboard: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    iFehltage: TdxNavBarItem;
    iBuchungen: TdxNavBarItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    lblitm_LastBooking: TdxLayoutLabeledItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    dxLayoutLabeledItem7: TdxLayoutLabeledItem;
    dxLayoutLabeledItem8: TdxLayoutLabeledItem;
    lbl_T6: TdxLayoutLabeledItem;
    lbl_T5: TdxLayoutLabeledItem;
    lbl_T2: TdxLayoutLabeledItem;
    lbl_D1: TdxLayoutLabeledItem;
    lbl_T4: TdxLayoutLabeledItem;
    lbl_T1: TdxLayoutLabeledItem;
    lbl_T3: TdxLayoutLabeledItem;
    lbl_T7: TdxLayoutLabeledItem;
    lbl_D4: TdxLayoutLabeledItem;
    lbl_D3: TdxLayoutLabeledItem;
    lbl_D2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem20: TdxLayoutLabeledItem;
    lbl_D7: TdxLayoutLabeledItem;
    lbl_D6: TdxLayoutLabeledItem;
    lbl_D5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem24: TdxLayoutLabeledItem;
    dxLayoutLabeledItem25: TdxLayoutLabeledItem;
    dxLayoutLabeledItem26: TdxLayoutLabeledItem;
    dxLayoutLabeledItem27: TdxLayoutLabeledItem;
    dxLayoutLabeledItem28: TdxLayoutLabeledItem;
    dxLayoutLabeledItem29: TdxLayoutLabeledItem;
    dxLayoutLabeledItem30: TdxLayoutLabeledItem;
    dxLayoutLabeledItem31: TdxLayoutLabeledItem;
    dxLayoutLabeledItem32: TdxLayoutLabeledItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    lbl_TG1: TdxLayoutLabeledItem;
    lbl_TG2: TdxLayoutLabeledItem;
    lbl_TG3: TdxLayoutLabeledItem;
    lbl_BHOGes: TdxLayoutLabeledItem;
    lbl_HO: TdxLayoutLabeledItem;
    lbl_ULunb: TdxLayoutLabeledItem;
    lbl_Buero: TdxLayoutLabeledItem;
    lbl_krunb: TdxLayoutLabeledItem;
    lbl_kr: TdxLayoutLabeledItem;
    lbl_FTM: TdxLayoutLabeledItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    lblitm_NextAbs: TdxLayoutLabeledItem;
    lblitm_NextFT: TdxLayoutLabeledItem;
    lbl_TG2Dez: TdxLayoutLabeledItem;
    lbl_TG1Dez: TdxLayoutLabeledItem;
    lbl_TG3Dez: TdxLayoutLabeledItem;
    lbl_ULunbDez: TdxLayoutLabeledItem;
    lbl_krDez: TdxLayoutLabeledItem;
    lbl_FTMDez: TdxLayoutLabeledItem;
    lbl_BHOGesDez: TdxLayoutLabeledItem;
    lbl_HODez: TdxLayoutLabeledItem;
    lbl_BueroDez: TdxLayoutLabeledItem;
    lbl_krunbDez: TdxLayoutLabeledItem;
    iKalender: TdxNavBarItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem9: TdxLayoutLabeledItem;
    lblb: TdxLayoutLabeledItem;
    dxLayoutLabeledItem11: TdxLayoutLabeledItem;
    dxLayoutLabeledItem12: TdxLayoutLabeledItem;
    dxLayoutLabeledItem13: TdxLayoutLabeledItem;
    dxLayoutLabeledItem14: TdxLayoutLabeledItem;
    lbl_RulVJ: TdxLayoutLabeledItem;
    lbl_OffHomeOffGes: TdxLayoutLabeledItem;
    lbl_HomeOffGes: TdxLayoutLabeledItem;
    lbl_OfficeGes: TdxLayoutLabeledItem;
    lbl_FT: TdxLayoutLabeledItem;
    lbl_bezKr: TdxLayoutLabeledItem;
    lbl_genULGes: TdxLayoutLabeledItem;
    chartctrl_Birthday: TdxChartControl;
    chartctrl_BirthdayChart: TdxChartSimpleDiagram;
    chartctrl_BirthdaySeries: TdxChartSimpleSeries;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Datum: TcxGridDBColumn;
    cxGrid1DBTableView1Bezeichnung: TcxGridDBColumn;
    dxChartControl1: TdxChartControl;
    dxChartSimpleDiagram1: TdxChartSimpleDiagram;
    dxChartSimpleSeries1: TdxChartSimpleSeries;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Kuerzel: TcxGridDBColumn;
    cxGrid2DBTableView1Beschreibung: TcxGridDBColumn;
    cxGrid2DBTableView1Von: TcxGridDBColumn;
    cxGrid2DBTableView1Bis: TcxGridDBColumn;
    iFirma: TdxNavBarItem;
    iAbteilungen: TdxNavBarItem;
    iZeitplan: TdxNavBarItem;
    procedure btn_CloseModulClick(Sender: TObject);
    procedure btn_ModulleisteClick(Sender: TObject);
    procedure btn_RefreshRightsClick(Sender: TObject);
    procedure btnCloseAllGroupsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure iSpracheClick(Sender: TObject);
    procedure NavBarClick(Sender: TObject);
    procedure pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure ppmbtn_AbmeldenClick(Sender: TObject);
    procedure ppmbtn_BackupClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure ppmbtn_BenutzerClick(Sender: TObject);
    procedure ppmbtn_DesignClick(Sender: TObject);
    procedure ppmbtn_HandbuchClick(Sender: TObject);
    procedure ppmbtn_InfoClick(Sender: TObject);
    procedure ppmbtn_SpracheClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure iReportsClick(Sender: TObject);
  private
    { Private-Deklarationen }

  public
    { Public-Deklarationen }
    iAuswertungMonat: Integer;
    iAuswertungJahr: Integer;
    bAbmelden: Boolean;
    Modules: TCollection;
    function CurrentModule: TForm;
    procedure CloseModules;
    procedure LoadData;
    procedure Abmelden;
    procedure RegisterNavBarItems;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_PCM_Main: Tfrm_PCM_Main;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Benutzerverwaltung,
  PCM.Data,
  PCM.Design,
  PCM.Helper,
  PCM.Functions,
  PCM.Functions.Appinfo,
  PCM.Functions.ChangePW,
  PCM.Functions.Languages,
  PCM.Functions.Login,
  PCM.Functions.Synch.Wait,
  PCM.Handbuch,
  PCMTime.Modul.C_Company,
  PCMTime.Modul.D_Department,
  PCMTime.Modul.E_User,
  PCMTime.Modul.F_Fehltage,
  PCMTime.Modul.G_Feiertage,
  PCMTIme.Modul.H_Zeitpläne,
  PCMTime.Modul.I_Fehltage.Edit,
  PCMTime.Modul.J_Zeiterfassung,
  PCMTime.Modul.K_Monatswerte,
  PCMTime.Modul.L_Reporting,
  PCM.Time.Strings,
  PCM.SQL,
  PCM.splash,
  PCMTime.Calculate;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure Tfrm_PCM_Main.btn_ModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btn_Modulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btn_Modulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  if dm_pcm.iIDZEPCM > 0 then
  begin
    for iPage := pc_Main.PageCount - 1 downto 1 do
    begin
      try
        TForm(pc_Main.Pages[iPage].Controls[0]).Close;
        TForm(pc_Main.Pages[iPage].Controls[0]).Free;
      except
      end;
      pc_Main.Pages[iPage].Free;
    end;
  end
  else begin
    for iPage := pc_Main.PageCount - 1 downto 0 do
    begin
      try
        TForm(pc_Main.Pages[iPage].Controls[0]).Close;
        TForm(pc_Main.Pages[iPage].Controls[0]).Free;
      except
      end;
      pc_Main.Pages[iPage].Free;
    end;
  end;
end;
procedure Tfrm_PCM_Main.pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  brstc_OpenModule.Caption := NewPage.Caption;
end;
procedure Tfrm_PCM_Main.btn_RefreshRightsClick(Sender: TObject);
var
  Item: TdxNavBarItem;
  Module: TModule;
begin
  if dm_pcm.iIDZEPCM > 0 then
  begin
    btn_RefreshRights.Enabled := False;
    try
      if (pc_Main.PageCount > 1) and (pc_Main.ActivePage <> ts_Dashboard) then
      begin
        Module := TModule(Modules.FindItemID(pc_Main.ActivePage.Tag));
        if Module.Typ = mtForm then
        begin
          Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
          TForm(pc_Main.ActivePage.Controls[0]).Close;
          TForm(pc_Main.ActivePage.Controls[0]).Free;
          pc_Main.ActivePage.Free;
          NavBarClick(Item);
        end;
      end;
    finally
      btn_RefreshRights.Enabled := True;
    end;
  end
  else begin
    btn_RefreshRights.Enabled := False;
    try
      if (pc_Main.PageCount > 0)  then
      begin
        Module := TModule(Modules.FindItemID(pc_Main.ActivePage.Tag));
        if Module.Typ = mtForm then
        begin
          Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
          TForm(pc_Main.ActivePage.Controls[0]).Close;
          TForm(pc_Main.ActivePage.Controls[0]).Free;
          pc_Main.ActivePage.Free;
          NavBarClick(Item);
        end;
      end;
    finally
      btn_RefreshRights.Enabled := True;
    end;
  end;
end;
procedure Tfrm_PCM_Main.btnCloseAllGroupsClick(Sender: TObject);
var
  iCount: Integer;
begin
  for iCount := 1 to navbr_main.Groups.Count -1 do
  begin
    navbr_main.Groups[iCount].Expanded := False;
  end;
end;
procedure Tfrm_PCM_Main.btn_CloseModulClick(Sender: TObject);
begin
  if dm_pcm.iIDZEPCM > 0 then
  begin
    if pc_Main.PageCount > 1 then
    begin
      if pc_Main.PageCount = 2 then
        brstc_OpenModule.Caption := 'Dashboard';
      if pc_Main.ActivePage <> ts_Dashboard  then
      begin
        TForm(pc_Main.ActivePage.Controls[0]).Close;
        TForm(pc_Main.ActivePage.Controls[0]).Free;
        pc_Main.ActivePage.Free;
      end;
    end;
  end
  else begin
    if pc_Main.PageCount > 0 then
    begin
      if pc_Main.PageCount = 1 then
      brstc_OpenModule.Caption := rs_Backup_CAP_ChooseModul;
      TForm(pc_Main.ActivePage.Controls[0]).Close;
      TForm(pc_Main.ActivePage.Controls[0]).Free;
      pc_Main.ActivePage.Free;
    end;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  dm_PCM.bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.LoadData;
  procedure GetData(Amonat,AJahr: integer);
  var
    iJahr,iMonat,iTag: Word;
    iULVJ,iULANsp,iULgepl,iULgen: double;
    iVMonat,iVJahr,iGLZVMonat,iGLZ,iAktGLZ: integer;
        sHour,sMin: String;
  begin
    iULgen:= 0;
    iULgepl:= 0;
    iVMonat:= AMonat - 1;
    iVJahr:= AJahr ;
    if iVMonat = 0 then
    begin
      iVMonat:= 12;
      iVJahr:= AJahr -1 ;
    end;

    DecodeDate(Date,iJahr,iMonat,iTag);
    // Urlaubsanspruch
    iULANsp:= GetULAnspruch(dm_pcm.iIDZEPCM);
    // Urlaub Vorjahr
    iULVJ:= GetULVorJahr(dm_pcm.iIDZEPCM,AJahr -1,12);
    lbl_RulVJ.Caption:= FormatFloat('0.0', iULVJ);
    // Urlaub geplan genommen
    if AJahr <  iJAhr then
    begin
      iULgepl:= 0;
      iULgen:=  GetFehltagSum(1, 1, 1,dm_pcm.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
      lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
//      lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);;
    end;
    if AJahr =  iJAhr then
    begin
      iULgen:=  GetFehltagSum(1, 1, 1,dm_pcm.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,iMonat,iTag));
      lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
//      iULgepl:= GetFehltagSum(1, 1, 1,EncodeDate(AJahr,iMonat,iTag),EncodeDate(AJahr,12,31));
//      lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
    end;
    if AJahr >  iJAhr then
    begin
//      iULgepl:= GetFehltagSum(1, 1, 1,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
      iULgen:= 0;
//      lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
      lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
    end;
//    if iULVJ + iULANsp - iULgepl - iULgen < 0 then
//      lbl_VerfUL.Caption:= FormatFloat('0.0',( iULVJ + iULANsp - iULgepl - iULgen) *-1) + '-'
//    else
//      lbl_VerfUL.Caption:= FormatFloat('0.0', iULVJ + iULANsp - iULgepl - iULgen);
    lbl_bezKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 1,dm_pcm.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
//    lbl_unbKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 2,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
//    lbl_unbUL.Caption:= FormatFloat('0.0',  GetFehltagSum(1, 1, 0,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
    lbl_OfficeGes.Caption:= IntToStr(GetBuchungsart(0,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
    lbl_HomeOffGes.Caption:= IntToStr(GetBuchungsart(1,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
    lbl_FT.Caption:= FormatFloat('0.0', GetFeiertage(dm_pcm.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
    lbl_OffHomeOffGes.Caption:= '[B]' + IntToStr(GetBuchungsart(0,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31))+GetBuchungsart(1,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31))) + '[/B]';

    dm_PCM.qry_Work.SQL.Text:=  'SELECT aktuelleMehrarbeit,cast(SEC_TO_TIME(aktuelleMehrarbeit * 60) AS char) as MehrarbeitT, aktuelleMehrarbeit / 60 as MehrarbeitD FROM time_Monatswerte WHERE Monat = :Monat AND Jahr = :Jahr';
    dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= iVMonat;
    dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= iVJahr;
    dm_PCM.qry_Work.open;
    iGLZVMonat:= dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').AsInteger;
    lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
    if iGLZVMonat < 0 then
    begin
      lbl_T6.Caption:= '-' + GetTimeValue(dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').asInteger * -1);
      lbl_D6.Caption:= '-' + FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1);
    end
    else begin
      lbl_T6.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').asInteger);
      lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
    end;
    dm_PCM.qry_Work.Close;

    dm_PCM.qry_Work.SQL.Text:=  'SELECT ' +
                                'IStzeit + Pausen AS Brutto,cast(SEC_TO_TIME((IStzeit + Pausen) * 60) AS char) AS BruttoT, (IStzeit + Pausen) /60 AS BruttoD, ' +
                                'Pausen,cast(SEC_TO_TIME(Pausen * 60) AS char) as PausenT, Pausen / 60 as PausenD, ' +
                                'IStzeit,cast(SEC_TO_TIME(IStzeit * 60) AS char) as IStzeitT, IStzeit / 60 as IStzeitD, ' +
                                'Sollzeit,cast(SEC_TO_TIME(Sollzeit * 60) AS char) as SollzeitT, Sollzeit / 60 as SollzeitD, ' +
                                'Mehrarbeit,cast(SEC_TO_TIME(Mehrarbeit * 60) AS char) as MehrarbeitT, Mehrarbeit / 60 as MehrarbeitD,' +
                                'aktuelleMehrarbeit,cast(SEC_TO_TIME(aktuelleMehrarbeit * 60) AS char) as MehrarbeitT, aktuelleMehrarbeit / 60 as MehrarbeitD,' +
                                'Resturlaub ' +
                                'FROM time_Monatswerte WHERE Monat = :Monat AND Jahr = :Jahr';
    dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= AMonat;
    dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= AJahr;
    dm_PCM.qry_Work.open;


    lbl_T1.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Brutto').asInteger);
    lbl_D1.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('BruttoD').AsFloat);
    lbl_T2.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Pausen').asInteger);
    lbl_D2.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('PausenD').AsFloat);
    lbl_T3.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('IStzeit').asInteger);
    lbl_D3.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('IStzeitD').AsFloat);
    lbl_T4.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Sollzeit').asInteger);
    lbl_D4.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('SollzeitD').AsFloat);
    iGLZ:= dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger;
    if dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat < 0 then
    begin
       lbl_TG3.Caption:=  '-' + FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat * -1);
       lbl_TG3Dez.Caption:= '-' + GetTimeValue(Round(dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat * -1  * 480));
    end
    else begin
      lbl_TG3.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat);
      lbl_TG3Dez.Caption:= GetTimeValue(Round(dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat * 480));
    end;
    if iGLZ < 0 then
    begin
      lbl_T5.Caption:= '-' + GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger * -1);
      lbl_D5.Caption:= '-' + FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1);
    end
    else begin
      lbl_T5.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger);
      lbl_D5.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
    end;

    dm_PCM.qry_Work.open;
    var ift:= GetFeiertage(dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_FTM.caption:= FormatFloat('0.00',ift);
    lbl_FTMDEz.caption:= GetTimeValue(Round(ift * 480 ));
    var iunbUL:= GetFehltagSum(1, 1, 0, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_ULunb.caption:= FormatFloat('0.00',iunbUL);
    lbl_ULunbDez.caption:= GetTimeValue(Round(iunbUL * 480 ));
    var ikr:=  GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_kr.caption:= FormatFloat('0.00',ikr);
    lbl_krDez.caption:= GetTimeValue(Round(ikr * 480 ));
    var ikrunb:=  GetFehltagSum(1, 2, 0, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_krunb.caption:= FormatFloat('0.00',ikrunb);
    lbl_krunbDez.caption:= GetTimeValue(Round(ikrunb * 480 ));
    var iBuero:=  GetBuchungsart(0,dm_pcm.iIDZEPCM, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_Buero.caption:= FormatFloat('0.00',iBuero);
    lbl_BueroDez.caption:= GetTimeValue(Round(iBuero * 480 ));
    var iHO:=  GetBuchungsart(1,dm_pcm.iIDZEPCM, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
    lbl_HO.caption:= FormatFloat('0.00',iHO);
    lbl_HODez.caption:= GetTimeValue(Round(iHO * 480 ));
    lbl_BHOGes.Caption:= '[B]' + FormatFloat('0.00',iHO + iBuero) + '[/B]';
    lbl_BHOGesDez.Caption:= '[B]' + GetTimeValue(Round((iHO + iBuero) * 480)) + '[/B]';
    iAktGLZ:= dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').asInteger;
    if iAktGLZ < 0 then
    begin
      iAktGLZ:= iAktGLZ * -1;
      var iHour:= iAktGLZ div 60;
      var iMin:= iAktGLZ mod 60;
      if iHour < 10 then
        sHour:= '0' + IntToStr(iHour)
      else
        sHour:= IntToStr(iHour);
      if iMin < 10 then
        sMin:= '0' + IntToStr(iMin)
      else
        sMin:= IntToStr(iMin);
      lbl_T7.Caption:= '[B]' + '-' + sHour + ':' + sMin +  '[/B]';
      lbl_D7.Caption:= '[B]' + '-' + FormatFloat('0.00',iAktGLZ / 60) + '[/B]';
    end
    else begin
      var iHour:= iAktGLZ div 60;
      var iMin:= iAktGLZ mod 60;
      if iHour < 10 then
        sHour:= '0' + IntToStr(iHour)
      else
        sHour:= IntToStr(iHour);
      if iMin < 10 then
        sMin:= '0' + IntToStr(iMin)
      else
        sMin:= IntToStr(iMin);
      lbl_T7.Caption:= '[B]' + sHour + ':' + sMin + '[/B]';
      lbl_D7.Caption:= '[B]' + FormatFloat('0.00',iAktGLZ / 60) + '[/B]';
    end;

    if AJahr * 100 + Amonat <  iJahr * 100 + iMonat then
    begin
      lbl_TG1.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,1),EndOfAMonth(AJahr,AMonat)));
      lbl_TG1Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,1),EndOfAMonth(AJahr,AMonat)) * 480));
      lbl_TG2.Caption:= '0,0';
      lbl_TG2Dez.Caption:= '00:00';
    end;


    if AJahr * 100 + Amonat =  iJahr * 100 + iMonat then
    begin
      lbl_TG1.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,1),EncodeDate(AJahr,iMonat,iTag)));
      lbl_TG1Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,1),EncodeDate(AJahr,iMonat,iTag)) * 480));

      lbl_TG2.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,iTag),EndOfAMonth(AJahr,AMonat)));
      lbl_TG2Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,EncodeDate(AJahr,AMonat,itag),EndOfAMonth(AJahr,AMonat)) * 480));
    end;




    if AJahr * 100 + Amonat >  iJahr * 100 + iMonat then
    begin
      dm_PCM.qry_Work.SQL.Text:=  'SELECT Sum(Zeb.SollstundenI / zeft.faktor) / 480 as Anzahl ' +
                                  'FROM time_buchungen zeb ' +
                                  'LEFT OUTER JOIN time_user zeu ON ID_Zeiterfasser = :ID ' +
                                  'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                                  'WHERE zeb.SollstundenI > 0 and Feiertag <> 1 and zeb.Datum > :Von and zeb.Datum <= :Bis AND zeft.Typ = 1 AND zeft.Bezahlt = 1';
      dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_Work.ParamByName('Von').asDate:= EncodeDate(AJahr,AMonat,1);
      dm_PCM.qry_Work.ParamByName('Bis').asDate:= EndOfAMonth(AJahr,AMonat);
      dm_PCM.qry_Work.open;
      iULgepl:= dm_PCM.qry_Work.FieldByName('Anzahl').AsFloat;
      lbl_TG1.Caption:= '0.0';
      lbl_TG1Dez.Caption:= '00:00';
      lbl_TG2.Caption:= FormatFloat('0.0', iULgepl);
      dm_PCM.qry_Work.Close;
    end;
  end;
var
  iJahr,iMonat,iTag: Word;
begin
  if dm_pcm.iIDZEPCM > 0 then
  begin
    iMonatswerte.Visible:= true;
    iFehltage.Visible:= true;
    iZeiterfassung.Visible:= true;

    dm_PCM.qry_Kalender_Kalender.Open;
    dm_PCM.qry_Work.SQL.Text:= ASSQL_GetUsername[dm_PCM.iDBType];
    dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Open;
    brstc_User.Caption:= dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
    dm_PCM.qry_Work.Close;

    dm_PCM.qry_Work.SQL.Text:= 'SELECT Text From time_message';
    dm_PCM.qry_Work.open;
    lblitm_LastBooking.Caption:= dm_PCM.qry_Work.FieldByName('Text').AsString;
    dm_PCM.qry_Work.Close;

    dm_PCM.qry_Work.SQL.Text:= 'SELECT Bezeichnung, Datum FROM time_feiertage WHERE Datum > NOW() LIMIT 1';
    dm_PCM.qry_Work.open;
    lblitm_NextFT.Caption:= dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString + ' am ' + DateToStr(dm_PCM.qry_Work.FieldByName('Datum').AsDateTime);
    dm_PCM.qry_Work.Close;

    dm_PCM.qry_Work.SQL.Text:= 'SELECT Kuerzel,Beschreibung,von,bis FROM time_buchungen tib '+
                               'LEFT OUTER JOIN time_fehltage tift ON tift.ID = tib.ID_Fehltage '+
                               'WHERE tib.Datum > NOW() and tib.ID_Fehltage >0 LIMIT 1';
    dm_PCM.qry_Work.open;
    lblitm_NextAbs.Caption:= dm_PCM.qry_Work.FieldByName('Kuerzel').AsString + ' - ' + dm_PCM.qry_Work.FieldByName('Beschreibung').AsString + ', Zeitraum: ' +  DateToStr(dm_PCM.qry_Work.FieldByName('Von').AsDateTime) + ' - '+  DateToStr(dm_PCM.qry_Work.FieldByName('Bis').AsDateTime);
    dm_PCM.qry_Work.Close;
    DecodeDate(Date,iJahr,iMonat,iTag);
    GetData(iMonat,iJahr);


    dm_PCM.qry_ChartGeburtstage.sql.Text:=  'Select Count(*) as Wert, Monat as Monat, ' +
                                            'case Monat ' +
                                            'when 1 then ''Januar'' ' +
                                            'when 2 then ''Februar'' ' +
                                            'when 3 then ''März'' ' +
                                            'when 4 then ''April'' ' +
                                            'when 5 then ''Mai'' ' +
                                            'when 6 then ''Juni'' ' +
                                            'when 7 then ''Juli'' ' +
                                            'when 8 then ''August'' ' +
                                            'when 9 then ''September'' ' +
                                            'when 10 then ''Oktober'' ' +
                                            'when 11 then ''November'' ' +
                                            'ELSE ''Dezember'' ' +
                                            'END AS Monatbes, ' +
                                            'Cast(ID_benutzer AS UNSIGNED ) AS ID_Benutzer ' +
                                            'From time_feiertage ' +
                                            'Where Jahr = :Jahr ' +
                                            'Group by Monat ' +
                                            'Order by Monat ASC';
    dm_PCM.qry_ChartGeburtstage.ParamByName('Jahr').AsInteger:= iJahr;
    dm_PCM.qry_ChartGeburtstage.Open;


    dm_PCM.qry_FT.sql.Text:=  'SELECT Datum, Bezeichnung From time_feiertage ' +
                              'Where Jahr = :Jahr ORDER BY Jahr, monat, tag';
    dm_PCM.qry_FT.ParamByName('Jahr').AsInteger:= iJahr;
    dm_PCM.qry_FT.Open;

    dm_PCM.qry_abw.sql.Text:=   'Select Count(*) as Wert, MONTH(Von) as Monat,  case MONTH(Von) ' +
                                'when 1 then ''Januar'' ' +
                                'when 2 then ''Februar'' ' +
                                'when 3 then ''März'' ' +
                                'when 4 then ''April'' ' +
                                'when 5 then ''Mai'' ' +
                                'when 6 then ''Juni'' ' +
                                'when 7 then ''Juli'' ' +
                                'when 8 then ''August'' ' +
                                'when 9 then ''September'' ' +
                                'when 10 then ''Oktober'' ' +
                                'when 11 then ''November'' ' +
                                'ELSE ''Dezember'' ' +
                                'END AS Monatbes ' +
                                'From time_fehltage ' +
                                'Where YEAR(Von) = :Jahr ' +
                                'Group by MONTH(Von) ' +
                                'Order by Monat ASC';
    dm_PCM.qry_abw.ParamByName('Jahr').AsInteger:= iJahr;
    dm_PCM.qry_abw.Open;

    dm_PCM.qry_Fehltag.sql.Text:= 'Select Kuerzel,Beschreibung,Von,Bis from time_fehltage ' +
                                  'Where Year(Von) = :Jahr ORDER BY Von';
    dm_PCM.qry_Fehltag.ParamByName('Jahr').AsInteger:= iJahr;
    dm_PCM.qry_Fehltag.Open;
  end
  else begin
    iMonatswerte.Visible:= false;
    iFehltage.Visible:= false;
    iZeiterfassung.Visible:= false;
    ts_Dashboard.Destroy;
  end;
end;
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pc_Main.ControlCount > 0 then
    Result := TForm(pc_Main.ActivePage.Controls[0])
  else
    Result := nil;
end;
procedure Tfrm_PCM_Main.RegisterNavBarItems;
  procedure RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.FormClass := FormClass;
      NewModule.Instance := Instance;
      NewModule.Right := Right;
      NewModule.ModuleName := SideBarItemName;
      NewModule.ImageIndex := Item.SmallImageIndex;
    end;
  end;
  procedure RegisterEvent(SideBarItemName: string; Event: TMethod);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.Event := Event;
      NewModule.ModuleName := SideBarItemName;
    end
  end;
begin
  Modules.Clear;
  RegisterForm('iBenutzerverwaltung', Tfrm_PCM_User, @frm_PCM_User, 1);
  RegisterForm('iDesign', Tfrm_PCM_Design, @frm_PCM_Design, 1);
  RegisterForm('iFirma', Tfrm_Firma, @frm_Firma, 1);
  RegisterForm('iAbteilungen', Tfrm_Abteilung, @frm_Abteilung, 1);
  RegisterForm('iMitarbeiter', Tfrm_UserZE, @frm_UserZE, 1);
  RegisterForm('iFehltag', Tfrm_Fehltage, @frm_Fehltage, 1);
  RegisterForm('iFeiertage', Tfrm_Feiertage, @frm_Feiertage, 1);
  RegisterForm('iMonatswerte', Tfrm_monatswerte, @frm_monatswerte, 1);
  RegisterForm('iReports', Tfrm_Reports, @frm_Reports, 1);
  RegisterForm('iFehltage', Tfrm_Fehltageeintragen, @frm_Fehltageeintragen, 1);
  RegisterForm('iZeiterfassung',Tfrm_ZE, @frm_ZE, 1);
  RegisterForm('iZeitplan',Tfrm_Zeitplan, @frm_Zeitplan, 1);
  RegisterForm('iBuchungen',Tfrm_ZE, @frm_ZE, 1);
  RegisterForm('iKalender',Tfrm_ZE, @frm_ZE, 1);
  RegisterForm('iSysteminfo',Tfrm_PCM_System, @frm_PCM_System, 1);
  RegisterForm('iInfo',Tfrm_PCM_InfoApp, @frm_PCM_InfoApp, 1);
  RegisterForm('iHandbuch',Tfrm_PCM_Handbuch,@frm_PCM_Handbuch, 1);
  RegisterEvent('iAbmelden', Abmelden);
  RegisterEvent('iBeenden', Close);
end;
{$ENDREGION}
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Navbarfunktionen}
procedure Tfrm_PCM_Main.iReportsClick(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
begin
  DecodeDate(Date,iJahr,iMonat,iTag);
  Application.CreateForm(Tfrm_Reports,frm_Reports);
  frm_Reports.Execute('','','',iMonat,iJahr);
  frm_Reports.ShowModal;
end;
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  ifINI: TIniFile;
begin
  Application.CreateForm(Tfrm_PCM_Language,frm_PCM_Language);
  frm_PCM_Language.Position:= poScreenCenter;
  frm_PCM_Language.ShowModal;
  ifINI := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    ifINI.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    ifINI.Free;
  end;
end;
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  Module: TModule;
  fTabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pc_Main.PageCount -1 do
    begin
      if pc_Main.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;

  function CreateNewTabSheet(sTabName: String): Integer;
  var
    tshNew: TcxTabSheet;
  begin
    tshNew := TcxTabSheet.Create(pc_Main);
    tshNew.PageControl := pc_Main;
    tshNew.Name := sTabName;
    pc_Main.ActivePage := tshNew;
    Result := pc_Main.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      Module := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(Module) then
      begin
        sModul:= Module.ModuleName;
        sModulCaption:= Module.ModuleName;
        case AnsiIndexStr(sModul, ['iBenutzerverwaltung','iDesign','iMitarbeiter','iSysteminfo','iInfo','iHandbuch','iBuchungen','iZeiterfassung','iKalender','iReports','iFirma','iAbteilungen','iZeitplan']) of

        0:
          begin
            sModulCaption := 'i'  + rs_PCM_Benutzerverwaltung;
            dm_PCM.iModulTab:= 1;
          end;
        1:
          begin
            sModulCaption := 'i'  + rs_PCM_Design;
            dm_PCM.iModulTab:= 1;
          end;
        2:
          begin
            sModulCaption := 'i'  + rs_PCMTime_Mitarbeiter;
            dm_PCM.iModulTab:= 1;
          end;
        3:
          begin
            sModulCaption := 'i'  + rs_PCM_Systeminformation;
            dm_PCM.iModulTab:= 3;
          end;
        4:
          begin
            sModulCaption := 'i'  + rs_PCM_Programminfo;
            dm_PCM.iModulTab:= 3;
          end;
        5:
					begin
            sModulCaption := 'i'  + rs_PCM_Handbuch;
            dm_PCM.iModulTab:= 3;
          end;
        6:
					begin
            sModul:= 'i'  + rs_PCMTime_Zeiterfassung;
            sModulCaption := 'i'  + rs_PCMTime_Zeiterfassung;
            dm_PCM.iModulTab:= 2;
          end;
        7:
					begin
            sModul:= 'i'  + rs_PCMTime_Zeiterfassung;
            sModulCaption := 'i'  + rs_PCMTime_Zeiterfassung;
            dm_PCM.iModulTab:= 1;
          end;
        8:
					begin
            sModul:= 'i'  + rs_PCMTime_Zeiterfassung;
            sModulCaption := 'i'  + rs_PCMTime_Zeiterfassung;
            dm_PCM.iModulTab:= 3;
          end;
        9:
					begin
            sModulCaption := 'i'  + rs_PCMTime_Reports;

          end;
        10:
					begin
            sModulCaption := 'i'  + rs_PCMTime_Firma;

          end;
        11:
					begin
            sModulCaption := 'i'  + rs_PCMTime_Abteilungen;

          end;
        12:
					begin
            sModulCaption := 'i'  + rs_PCMTime_Zeitplan;

          end;
        end;
        iPageIndex := TabExist('tsh' + sModul);
        if iPageIndex > -1 then
        begin
          pc_Main.ActivePageIndex := iPageIndex;
          fTabForm := CurrentModule;
          if fTabForm <> nil then
            if not fTabForm.Focused then
              if Assigned(fTabForm.OnActivate) then
              begin
                fTabForm.OnActivate(Sender);
                brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if Module.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try
            ShowWaitForm(TForm(Self), PWideChar(rs_General_Formload), 1,417, 65);
            Application.ProcessMessages;
            WaitFormStep;
            TForm(Module.Instance^) := Module.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          fTabForm := TForm((Module.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          fTabForm.Parent := pc_Main.Pages[iPageIndex];
          pc_Main.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pc_Main.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pc_Main.Pages[iPageIndex].ImageIndex := Module.ImageIndex;
          pc_Main.Pages[iPageIndex].InsertComponent(fTabForm);
          fTabForm.BorderStyle := bsNone;
          fTabForm.ALign:= AlClient;
          fTabForm.Enabled := True;
          fTabForm.Show;
          CloseWaitform;
          brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if Module.Typ = mtEvent then
          begin
            Module.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseModules;
  WriteLog(PCM_Logname,rs_PCM_Beenden,0);
end;
procedure Tfrm_PCM_Main.FormCreate(Sender: TObject);
begin
  Modules := TCollection.Create(TModule);
end;
procedure Tfrm_PCM_Main.FormDeactivate(Sender: TObject);
begin
  dm_PCM.bclose:= true
end;
procedure Tfrm_PCM_Main.FormDestroy(Sender: TObject);
begin
  Modules.Free;
end;
procedure Tfrm_PCM_Main.FormHide(Sender: TObject);
begin
  CloseModules;
end;
procedure Tfrm_PCM_Main.FormKeyPress(Sender: TObject; var Key: Char);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyPress) then
        m.OnKeyPress(Sender, Key);
end;
procedure Tfrm_PCM_Main.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyUp) then
        m.OnKeyUp(Sender, Key, Shift);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
  procedure BarResize;
  var
    rRect: TRect;
    iTemp, iUsedSpace: Integer;
    BarControl: TdxBarControlAccess;
  begin
    if (brmgr_Main.Bars[0] <> nil) and (brmgr_Main.Bars[0].Control <> nil) then
    begin
      BarControl := TdxBarControlAccess(brmgr_Main.Bars[0].Control);

      iUsedSpace := 0;

      brstc_OpenModule.Width := 0;

      for iTemp := 0 to BarControl.Bar.ItemLinks.Count - 1 do
      begin
        if BarControl.Bar.ItemLinks.Items[iTemp].Item = btn_Modulleiste then
        begin
          Inc(iUsedSpace, 0);
        end
        else
        begin
          if BarControl.Bar.ItemLinks.Items[iTemp].Item <> brstc_OpenModule then
          begin
            Inc(iUsedSpace, BarControl.Bar.ItemLinks.Items[iTemp].ItemRect.Width);
          end;
        end;
      end;

      if BarControl.MarkExists then
      begin
        rRect := BarControl.MarkRect;
        Inc(iUsedSpace, rRect.Right - rRect.Left);
      end;
       brmgr_Main.BeginUpdate;
      Try
        brstc_OpenModule.Width := (brmgr_Main.Bars[0].Control as TdxBarControl).Width -  iUsedSpace - btn_Modulleiste.Width  - 45;
      Finally
        brmgr_Main.EndUpdate();
      End;
    end;
  end;
begin
  BarResize;
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
begin
  lafCtrl_Main.NativeStyle:= false;
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
  	lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    SplashScreen := TSplashScreen.Create(nil);
    SplashScreen.Update;
    SplashScreen.Execute(dm_PCM.bStyle);
    if dm_PCM.bStyle then
    begin
      NavBarClick(iDesign);
    end
    else begin
      WriteLog(PCM_Logname,rs_PCM_Start,0);
    end;
  end;
  DecodeDate(Date, iJahr,iMonat,iTag);
  frm_PCM_Main.iAuswertungMonat:= iMonat;
  frm_PCM_Main.iAuswertungJahr:= iJahr;
end;
{$ENDRegion}
////////////////////////////////////////////////////////////////////////////////
// Traymenü                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region Traymenu}
procedure Tfrm_PCM_Main.ppmbtn_BenutzerClick(Sender: TObject);
begin
  navbarclick(iBenutzerverwaltung);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_DesignClick(Sender: TObject);
begin
  NavBarClick(iDesign);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_BackupClick(Sender: TObject);
begin
  navbarclick(iZeiterfassung);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  navbarclick(iSysteminfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_InfoClick(Sender: TObject);
begin
  navbarclick(iInfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_HandbuchClick(Sender: TObject);
begin
  navbarclick(iHandbuch);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SpracheClick(Sender: TObject);
begin
  iSpracheClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AbmeldenClick(Sender: TObject);
begin
  Abmelden
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  Close;
end;
{$ENDRegion}
end.


