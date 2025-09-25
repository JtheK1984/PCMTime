unit PCMTime.Modul.J_Zeiterfassung;

interface

uses
  {$Region Uses}
  cxBarEditItem,
  cxButtons,
  cxCalendar,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDateUtils,
  cxDBData,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDrawTextUtils,
  cxDropDownEdit,
  cxEdit,
  cxExtEditRepositoryItems,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxGroupBox,
  cxImageComboBox,
  cxImageList,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxScheduler,
  cxSchedulerAgendaView,
  cxSchedulerCustomControls,
  cxSchedulerCustomResourceView,
  cxSchedulerDateNavigator,
  cxSchedulerDayView,
  cxSchedulerDBStorage,
  cxSchedulerGanttView,
  cxSchedulerHolidays,
  cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor,
  cxSchedulerStorage,
  cxSchedulerTimeGridView,
  cxSchedulerTreeListBrowser,
  cxSchedulerUtils,
  cxSchedulerWeekView,
  cxSchedulerYearView,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  cxTimeEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
  dxBarExtItems,
  dxBkgnd,
  dxCore,
  dxDateRanges,
  dxPrnDev,
  dxPrnPg,
  dxPSCompsProvider,
  dxPSCore,
  dxPScxCommon,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPScxGridLayoutViewLnk,
  dxPScxGridLnk,
  dxPScxPageControlProducer,
  dxPScxSchedulerLnk,
  dxPSEdgePatterns,
  dxPSEngn,
  dxPSFillPatterns,
  dxPSGlbl,
  dxPSPDFExport,
  dxPSPDFExportCore,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPSPrVwStd,
  dxPSUtl,
  dxRibbon,
  dxRibbonCustomizationForm,
  dxRibbonSkins,
  dxScrollbarAnnotations,
  dxStatusBar,
  dxWrap,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
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
  system.DateUtils,
  System.ImageList,
  System.SysUtils,
  system.UITypes,
  System.Variants,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows, dxLayoutcxEditAdapters, dxLayoutContainer, cxCurrencyEdit,
  dxLayoutControl, dxLayoutControlAdapters, dxUIAClasses, cxCheckBox,
  cxCheckComboBox, cxGridCustomPopupMenu, cxGridPopupMenu;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_ZE = class(TForm)
    brmgr_Main: TdxBarManager;
    tb_Ansicht: TdxBar;
    ribTab_1View: TdxRibbonTab;
    rib: TdxRibbon;
    tb_FilterMonatJahr: TdxBar;
    cbx_FilterMonth: TcxBarEditItem;
    cbx_FilterYear: TcxBarEditItem;
    tb_FilterVonBis: TdxBar;
    dedt_Von: TcxBarEditItem;
    dedt_Bis: TcxBarEditItem;
    btn_ViewCal: TdxBarLargeButton;
    btn_ViewGrid: TdxBarLargeButton;
    btn_FilterMonthYear: TdxBarLargeButton;
    btn_FilterFromTo: TdxBarLargeButton;
    imglst_32x32: TcxImageList;
    brstat_monat: TdxBarStatic;
    brstat_Jahr: TdxBarStatic;
    brstat_Von: TdxBarStatic;
    brstat_Bis: TdxBarStatic;
    tb_Edit: TdxBar;
    btn_DataNew: TdxBarLargeButton;
    schedDBStrg_Kalender: TcxSchedulerDBStorage;
    tb_kalender: TdxBar;
    btn_View: TdxBarLargeButton;
    btn_CalVor: TdxBarLargeButton;
    btn_CalZurueck: TdxBarLargeButton;
    ppm_Views: TdxBarPopupMenu;
    ppmbtn_ViewTag: TdxBarButton;
    ppmbtn_ViewArbeitswoche: TdxBarButton;
    ppmbtn_ViewWoche: TdxBarButton;
    ppmbtn_ViewMonat: TdxBarButton;
    ppmbtn_ViewJahr: TdxBarButton;
    ppmbtn_ViewAgenda: TdxBarButton;
    ppmbtn_ViewPlanung: TdxBarButton;
    ppmbtn_ViewGanzertag: TdxBarButton;
    qry_Buchungen: TFDQuery;
    ds_Buchungen: TDataSource;
    tb_Optionen: TdxBar;
    btn_user: TdxBarLargeButton;
    btn_Feiertage: TdxBarLargeButton;
    btn_DataNext: TdxBarLargeButton;
    btn_DataPrev: TdxBarLargeButton;
    tb_Drucken: TdxBar;
    btn_Printview: TdxBarLargeButton;
    tb_DruckeGrid: TdxBar;
    btn_print: TdxBarLargeButton;
    ribTab_2Edit: TdxRibbonTab;
    ribTab_3View: TdxRibbonTab;
    ribTab_4Print: TdxRibbonTab;
    ribTab_5Config: TdxRibbonTab;
    ds_Fehltag: TDataSource;
    qry_Fehltag: TFDQuery;
    tb_Monatswerte: TdxBar;
    btn_Calc: TdxBarLargeButton;
    btn_Monthview: TdxBarLargeButton;
    btn_Fehltage: TdxBarLargeButton;
    btn_Online: TdxBarLargeButton;
    btn_BookingWorkBegin: TcxButton;
    btn_BookingWorkEnd: TcxButton;
    btn_BookingBreakEnd: TcxButton;
    btn_BookingBreakBegin: TcxButton;
    Timer1: TTimer;
    tb_fehltage: TdxBar;
    btn_FehltagSet: TdxBarLargeButton;
    cmbbx_Bookingtype: TcxComboBox;
    ppm_printScheduler: TdxBarPopupMenu;
    ppmbtn_PrintTagesansicht: TdxBarButton;
    ppmbtn_PrintWochenansicht: TdxBarButton;
    ppmbtn_PrintMonatsansicht: TdxBarButton;
    ppmbtn_PrintJahresansicht: TdxBarButton;
    ppmbtn_PrintAgenda: TdxBarButton;
    imglst_16x16: TcxImageList;
    comp_EditRepository: TcxEditRepository;
    riEvent: TcxEditRepositoryRichItem;
    comp_PrintCal: TdxComponentPrinter;
    comp_PrintCalLink1: TcxSchedulerReportLink;
    comp_PrintCalLink2: TdxGridReportLink;
    ppm_Calc: TdxBarPopupMenu;
    ppmbtn_CalcDay: TdxBarButton;
    ppmbtn_CalcMonth: TdxBarButton;
    ppmbtn_CalcYear: TdxBarButton;
    ppmbtn_CalcAll: TdxBarButton;
    ppm_Reports: TdxBarPopupMenu;
    ppmbtn_ReportMonth: TdxBarButton;
    ppmbtn_ReportYear: TdxBarButton;
    stbr_ZE: TdxStatusBar;
    sched_Kalender: TcxScheduler;
    grd_Booking: TcxGrid;
    grdDBTblView_Booking: TcxGridDBTableView;
    grdDBTblViewCol_BookingID: TcxGridDBColumn;
    grdDBTblViewCol_BookingTag: TcxGridDBColumn;
    grdDBTblViewCol_BookingDatum: TcxGridDBColumn;
    grdDBTblViewCol_BookingKommen: TcxGridDBColumn;
    grdDBTblViewCol_BookingGehen: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause1Beginn: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause1Ende: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause2Begin: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause2Ende: TcxGridDBColumn;
    grdDBTblViewCol_BookingSollstunden: TcxGridDBColumn;
    grdDBTblView_BookingColumn1: TcxGridDBColumn;
    grdDBTblView_BookingColumn2: TcxGridDBColumn;
    grdDBTblView_BookingColumn3: TcxGridDBColumn;
    grdDBTblView_BookingColumn4: TcxGridDBColumn;
    grdDBTblView_BookingColumn5: TcxGridDBColumn;
    grdDBTblViewCol_BookingMehrarbeit: TcxGridDBColumn;
    grdDBTblView_BookingColumn6: TcxGridDBColumn;
    grdDBTblView_BookingBuchungsart: TcxGridDBColumn;
    grdDBTblViewCol_BookingFeiertag: TcxGridDBColumn;
    grdDBTblViewCol_BookingFehltag: TcxGridDBColumn;
    grdLvl_Booking: TcxGridLevel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    pc_Ze: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    btn_Abteilung: TdxBarLargeButton;
    btn_Firma: TdxBarLargeButton;
    ribTab1: TdxRibbonTab;
    lagrp_Details: TdxLayoutGroup;
    lagrp_Suche: TdxLayoutGroup;
    lagrp_ZETab: TdxLayoutGroup;
    brmgr_MainBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    btn_kontaktsuchen: TcxButton;
    btn_ClearFilter: TcxButton;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    edt_personalnr: TcxTextEdit;
    edt_SearchName: TcxTextEdit;
    edt_SearchSurname: TcxTextEdit;
    qry_Kontakte: TFDQuery;
    qry_KontakteID: TFDAutoIncField;
    qry_KontakteID_Anrede: TIntegerField;
    qry_KontakteVorname: TStringField;
    qry_KontakteNachname: TStringField;
    qry_KontakteZusatz: TStringField;
    qry_KontakteStrasse_Privat: TStringField;
    qry_KontaktePLZ_Privat: TStringField;
    qry_KontakteOrt_Privat: TStringField;
    qry_KontakteTelefon_Privat: TStringField;
    qry_KontakteTelefon_Privat1: TStringField;
    qry_KontakteTelefon_Privat2: TStringField;
    qry_KontakteHandy_privat: TStringField;
    qry_KontakteE_Mail_Privat: TStringField;
    qry_KontakteE_Mail_Privat1: TStringField;
    qry_KontakteE_Mail_Privat2: TStringField;
    qry_KontakteInternet_Privat: TStringField;
    qry_KontakteID_Kontaktart: TIntegerField;
    qry_KontakteBild: TBlobField;
    qry_KontakteGeburtsdatum: TDateField;
    qry_KontakteID_Geschlecht: TIntegerField;
    qry_KontakteID_Familienstand: TIntegerField;
    qry_KontakteID_Staatsangehoerigkeit: TIntegerField;
    qry_KontakteID_Konfession: TIntegerField;
    qry_KontakteInfo: TMemoField;
    qry_KontakteFirma: TStringField;
    qry_KontakteStrasse_Ges: TStringField;
    qry_KontaktePLZ_Ges: TStringField;
    qry_KontakteOrt_Ges: TStringField;
    qry_KontakteAbteilung_Ges: TStringField;
    qry_KontakteFunktion_Ges: TStringField;
    qry_KontakteZentrale_Ges: TStringField;
    qry_KontakteTelefon_Ges: TStringField;
    qry_KontakteHandy_Ges: TStringField;
    qry_KontakteE_Mail_Ges: TStringField;
    qry_KontakteInternet_Ges: TStringField;
    qry_KontakteFacebook: TStringField;
    qry_KontakteSkype: TStringField;
    qry_KontakteICQ: TStringField;
    qry_KontakteLive_Messanger: TStringField;
    qry_KontakteID_Benutzer: TIntegerField;
    qry_KontakteGeburtsname: TStringField;
    qry_KontakteGeburtsland: TStringField;
    qry_KontakteSollstunden: TTimeField;
    qry_KontakteColFontWork: TIntegerField;
    qry_KontakteColCalWork: TIntegerField;
    qry_KontakteColFontBreak: TIntegerField;
    qry_KontakteColCalBreak: TIntegerField;
    qry_KontakteUrlaub: TIntegerField;
    qry_KontakteEintritt: TDateField;
    qry_KontakteID_Zeiterfasser: TIntegerField;
    qry_KontakteOffsetResturlaub: TFMTBCDField;
    qry_KontakteOffsetResturlaubJahr: TIntegerField;
    qry_KontaktePersonalnummer: TIntegerField;
    qry_KontakteID_KontakteApp: TIntegerField;
    qry_KontakteID_Firma: TIntegerField;
    qry_KontakteID_Abteilung: TIntegerField;
    qry_KontakteID_Wochenplan: TIntegerField;
    cxCheckComboBox1: TcxCheckComboBox;
    cxCheckComboBox2: TcxCheckComboBox;
    edt_KontaktSucheFunktion: TcxTextEdit;
    ds_Kontakte: TDataSource;
    grd_Suche: TcxGrid;
    grdDBTblView_Suche: TcxGridDBTableView;
    grdDBTblView_SucheID: TcxGridDBColumn;
    grdDBTblView_SucheVorname: TcxGridDBColumn;
    grdDBTblView_SucheNachname: TcxGridDBColumn;
    grdDBTblView_SucheFunktion_Ges: TcxGridDBColumn;
    grdLvl_Suche: TcxGridLevel;
    grdDBTblView_SucheID_Firma: TcxGridDBColumn;
    grdDBTblView_SucheID_Abteilung: TcxGridDBColumn;
    grdDBTblView_SucheEintritt: TcxGridDBColumn;
    ds_abteilung: TDataSource;
    qry_abteilung: TFDQuery;
    qry_Firma: TFDQuery;
    ds_Firma: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    lbl_Soll: TdxLayoutLabeledItem;
    lbl_Brutto: TdxLayoutLabeledItem;
    lbl_Netto: TdxLayoutLabeledItem;
    lbl_Abwesend: TdxLayoutLabeledItem;
    lbl_Pausen: TdxLayoutLabeledItem;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ViewCalClick(Sender: TObject);
    procedure btn_ViewGridClick(Sender: TObject);
    procedure sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure btn_CalZurueckClick(Sender: TObject);
    procedure ppmbtn_ViewTagClick(Sender: TObject);
    procedure ppmbtn_ViewArbeitswocheClick(Sender: TObject);
    procedure ppmbtn_ViewWocheClick(Sender: TObject);
    procedure ppmbtn_ViewMonatClick(Sender: TObject);
    procedure ppmbtn_ViewJahrClick(Sender: TObject);
    procedure ppmbtn_ViewAgendaClick(Sender: TObject);
    procedure ppmbtn_ViewPlanungClick(Sender: TObject);
    procedure ppmbtn_ViewGanzertagClick(Sender: TObject);
    procedure btn_CalVorClick(Sender: TObject);
    procedure btn_DataNewClick(Sender: TObject);
    procedure btn_DataPrevClick(Sender: TObject);
    procedure btn_DataNextClick(Sender: TObject);
    procedure btn_FilterMonthYearClick(Sender: TObject);
    procedure btn_FilterFromToClick(Sender: TObject);
    procedure btn_userClick(Sender: TObject);
    procedure btn_FeiertageClick(Sender: TObject);
    procedure grdDBTblView_BookingCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_OnlineClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_BookingWorkBeginClick(Sender: TObject);
    procedure btn_BookingWorkEndClick(Sender: TObject);
    procedure btn_BookingBreakBeginClick(Sender: TObject);
    procedure btn_BookingBreakEndClick(Sender: TObject);
    procedure btn_MonthviewClick(Sender: TObject);
    procedure btn_FehltagSetClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_FehltageClick(Sender: TObject);
    procedure sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
    procedure ppmbtn_PrintTagesansichtClick(Sender: TObject);
    procedure ppmbtn_PrintWochenansichtClick(Sender: TObject);
    procedure ppmbtn_PrintMonatsansichtClick(Sender: TObject);
    procedure ppmbtn_PrintJahresansichtClick(Sender: TObject);
    procedure ppmbtn_PrintAgendaClick(Sender: TObject);
    procedure ppmbtn_CalcDayClick(Sender: TObject);
    procedure ppmbtn_CalcMonthClick(Sender: TObject);
    procedure ppmbtn_CalcYearClick(Sender: TObject);
    procedure ppmbtn_CalcAllClick(Sender: TObject);
    procedure ppmbtn_ReportMonthClick(Sender: TObject);
    procedure ppmbtn_ReportYearClick(Sender: TObject);
    procedure grdDBTblView_BookingColumn2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblViewCol_BookingMehrarbeitCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btn_AbteilungClick(Sender: TObject);
    procedure btn_FirmaClick(Sender: TObject);
    procedure btn_kontaktsuchenClick(Sender: TObject);
    procedure btn_ClearFilterClick(Sender: TObject);
    procedure grdDBTblView_SucheCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private-Deklarationen }
    defaultLabelColor: integer;
    defaultFontColor: integer;
    iView: Integer;
    iZE: integer;
    procedure SetMonthValues(AVon,ABis: TDate;ABenutzer: integer);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_ZE: Tfrm_ZE;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Browser.FullScreen,
  PCMTime.Calculate,
  PCM.Data,
  PCM.Helper,
  PCM.Functions.Synch.Wait,
  PCM.Main,
  PCMTime.Modul.C_Company,
  PCMTime.Modul.D_Department,
  PCMTime.Modul.E_User,
  PCMTime.Modul.F_Fehltage,
  PCMTime.Modul.G_Feiertage,
  PCMTime.Modul.I_Fehltage.Edit,
  PCMTime.Modul.J_Zeiterfassung.Filter.Date,
  PCMTime.Modul.J_Zeiterfassung.Buchungen,
  PCMTime.Modul.J_Zeiterfassung.MonatJahrauswahl,
  PCMTime.Modul.K_Monatswerte,
  PCM.Reports,
  PCM.SQL,
  PCM.Time.Strings;
  {$EndRegion Uses}



procedure Tfrm_ZE.SetMonthValues(AVon,ABis: TDate;ABenutzer: integer);
begin
  //
  dm_PCM.qry_work2.SQL.Text:=  'SELECT Sum(ArbeitszeitI + PausenI) AS Brutto,cast(SEC_TO_TIME((Sum(ArbeitszeitI + PausenI)) * 60) AS char) AS BruttoT, (Sum(ArbeitszeitI + PausenI)) /60 AS BruttoD,'+
                               'Sum(PausenI) AS Pausen ,cast(SEC_TO_TIME(Sum(PausenI * 60)) AS char) as PausenT, Sum(PausenI / 60) as PausenD,' +
                               'Sum(ArbeitszeitI) AS IStzeit,cast(SEC_TO_TIME(Sum(ArbeitszeitI * 60)) AS char) as IStzeitT, Sum(ArbeitszeitI / 60) as IStzeitD,' +
                               'Sum(SollstundenI) as Sollzeit,cast(SEC_TO_TIME(Sum(SollstundenI * 60)) AS char) as SollzeitT, Sum(SollstundenI / 60) as SollzeitD ' +
                               'FROM time_Buchungen WHERE Datum>= :Von AND Datum <= :Bis AND ID_Benutzer = :ID';
  dm_PCM.qry_work2.ParamByName('Von').AsDate:= AVon;
  dm_PCM.qry_work2.ParamByName('Bis').AsDate:= Abis;
  dm_PCM.qry_work2.ParamByName('ID').AsInteger:= dm_pcm.iIDZEPCM;
  dm_PCM.qry_work2.open;

  lbl_Soll.Caption:= 'Soll: ' + Copy(dm_PCM.qry_work2.FieldByName('SollzeitT').asString,1, Length(dm_PCM.qry_work2.FieldByName('SollzeitT').asString) -3) + ' | ' + FormatFloat('0.00',dm_PCM.qry_work2.FieldByName('SollzeitD').AsFloat);
  lbl_Brutto.Caption:= 'Brutto: ' + Copy(dm_PCM.qry_work2.FieldByName('BruttoT').asString,1, Length(dm_PCM.qry_work2.FieldByName('BruttoT').asString) -3) + ' | ' + FormatFloat('0.00',dm_PCM.qry_work2.FieldByName('BruttoD').AsFloat);
  lbl_Pausen.Caption:= 'Pausen: ' + Copy(dm_PCM.qry_work2.FieldByName('PausenT').asString,1, Length(dm_PCM.qry_work2.FieldByName('PausenT').asString) -3) + ' | ' + FormatFloat('0.00',dm_PCM.qry_work2.FieldByName('PausenD').AsFloat);
  lbl_Abwesend.Caption:= 'Abwesend: '
  + GetTimeValue(Round(GetFeiertage(dm_pcm.iIDZEPCM,AVon,ABis) * 480)
  + Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480 )
  + Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480)) + ' | '
  + FormatFloat('0.00',(GetFeiertage(dm_pcm.iIDZEPCM,AVon,ABis)  * 480
  + (GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480)
  + (GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480)) / 60);


  lbl_Netto.Caption:= 'Netto: '
  + GetTimeValue(Round(dm_PCM.qry_Work2.FieldByName('IStzeit').asInteger
  - GetFeiertage(dm_pcm.iIDZEPCM,AVon,ABis ) * 480)
  - Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480 )
  - Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480)) + ' | '
  + FormatFloat('0.00',dm_PCM.qry_Work2.FieldByName('IStzeitD').asFloat
  - (GetFeiertage(dm_pcm.iIDZEPCM,AVon,ABis) * 480  / 60)
  - (GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480  / 60)
  - (GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,AVon,Abis) * 480 / 60));
end;
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
// ZE - Ansicht
procedure Tfrm_ZE.btn_OnlineClick(Sender: TObject);
begin
  if (dm_pcm.iIDZEPCM > 0) and (iZE > 0 )then
    btn_online.Visible:= ivalways
  else
    btn_online.Visible:= ivnever;
  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= true;
  ribTab_2Edit.Visible:=  false;
  ribTab_3View.Visible:= false;
  tb_Drucken.Visible:= false;
  tb_DruckeGrid.Visible:= true;
  tb_fehltage.Visible:= true;
  pc_Ze.ItemIndex:= 0;
end;
procedure Tfrm_ZE.btn_ViewGridClick(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
  sMonat: String;
  AProperties: TcxComboBoxProperties;
begin
  if (dm_pcm.iIDZEPCM > 0) and (iZE > 0 )then
    btn_online.Visible:= ivalways
  else
    btn_online.Visible:= ivnever;
  tb_FilterMonatJahr.Visible:= true;
  tb_FilterVonBis.Visible:= true;
  tb_Monatswerte.Visible:= true;
  ribTab_3View.Visible:= false;
  ribTab_2Edit.Visible:=  true;
  ribTab_4Print.Visible:= true;
  tb_Drucken.Visible:= false;
  tb_DruckeGrid.Visible:= true;
  tb_fehltage.Visible:= true;
  pc_Ze.ItemIndex:= 1;
  DecodeDate(Now,iJahr,iMonat,iTag);
  case iMonat of
    1: sMonat:= 'Januar';
    2: sMonat:= 'Februar';
    3: sMonat:= 'März';
    4: sMonat:= 'April';
    5: sMonat:= 'Mai';
    6: sMonat:= 'Juni';
    7: sMonat:= 'Juli';
    8: sMonat:= 'August';
    9: sMonat:= 'September';
    10: sMonat:= 'Oktober';
    11: sMonat:= 'November';
    12: sMonat:= 'Dezember';
  end;
  AProperties := TcxComboBoxProperties(cbx_FilterMonth.Properties);
  cbx_FilterMonth.ItemIndex := AProperties.Items.IndexOf(sMonat);
  AProperties := TcxComboBoxProperties(cbx_FilterYear.Properties);
  cbx_FilterYear.ItemIndex := AProperties.Items.IndexOf(IntToStr(iJahr));
   dedt_Von.EditValue:= '01.'+ inttoStr(iMonat) +'.' + inttoStr(iJahr);
  dedt_Bis.EditValue:= DateToStr(EndOfAMonth(iJahr,iMonat));
  qry_Fehltag.open;
  qry_Buchungen.SQL.Text:= 'SELECT ID,Datum, Tag, Kommen, Gehen, Pause1Beginn, Pause1Ende,' +
                           'Pause2Beginn,Pause2Ende,Sollstunden,Sollstundeni,MinToHour(Sollstundeni) AS SollStundenStd,Round(Sollstundeni / 60,2) AS SollStundenDez,' +
                           'Arbeitszeit,Arbeitszeiti,MinToHour(Arbeitszeiti) AS ArbeitszeitStd,Round(Arbeitszeiti / 60,2) AS ArbeitszeitDez,' +
                           'Pauseni,MinToHour(Pauseni) AS PausenStd,Round(Pauseni / 60,2) AS PausenDez,'+
                           'Mehrarbeiti,MinToHour(Mehrarbeiti) AS MehrarbeitStd,Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'+
                           'Buchungsart,Feiertag,Fehltag From time_Buchungen Where Datum between :Von and :Bis and ID_Benutzer = :ID';
  qry_Buchungen.ParamByName('Von').AsDate:= StrToDate(dedt_Von.EditValue);
  qry_Buchungen.ParamByName('Bis').AsDate:= StrToDate(dedt_Bis.EditValue);
  qry_Buchungen.ParamByName('ID').AsInteger:= dm_pCm.iIDZEPCM;
  qry_Buchungen.open;
  SetMonthValues(StrToDate(dedt_Von.EditValue), StrToDate(dedt_Bis.EditValue),dm_pCm.iIDZEPCM);
end;
procedure Tfrm_ZE.btn_ViewCalClick(Sender: TObject);
begin
  if (dm_pcm.iIDZEPCM > 0) and (iZE > 0 )then
    btn_online.Visible:= ivalways
  else
    btn_online.Visible:= ivnever;
  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= false;
  ribTab_3View.Visible:= true;
  ribTab_2Edit.Visible:= false;
  ribTab_4Print.Visible:= true;
  rib.ActiveTab:= ribTab_3View;
  tb_Drucken.Visible:= true;
  tb_DruckeGrid.Visible:= false;
  tb_fehltage.Visible:= false;
  pc_Ze.ItemIndex:= 2;
//  dm_PCM.qry_Kalender_Benutzer.Filter:= 'ID = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
//  dm_PCM.qry_Kalender_Benutzer.Open;
//  dm_PCM.qry_Kalender_Benutzer.Filtered:= True;
  dm_PCM.qry_Kalender_Kalender.sql.Text:= 'Select * From time_Kalender Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Kalender_Kalender.ParamByName('ID_Benutzer').AsInteger := dm_PCM.iIDZEPCM;
  dm_PCM.qry_Kalender_Kalender.Open;
  schedDBStrg_Kalender.Reminders.Active:= false;
end;
// ZE - Filter Monat
procedure Tfrm_ZE.btn_FilterMonthYearClick(Sender: TObject);
var
  dVon,dBis:  TDate;
begin
  dVon:= StartOfAMonth(StrToInt(cbx_FilterYear.EditValue),cbx_FilterMonth.itemindex+1);
  dBis:= EndOfAMonth(StrToInt(cbx_FilterYear.EditValue),cbx_FilterMonth.itemindex+1);
  qry_Buchungen.SQL.Text:= 'SELECT ID,Datum, Tag, Kommen, Gehen, Pause1Beginn, Pause1Ende,' +
                           'Pause2Beginn,Pause2Ende,Sollstunden,Sollstundeni,MinToHour(Sollstundeni) AS SollStundenStd,Round(Sollstundeni / 60,2) AS SollStundenDez,' +
                           'Arbeitszeit,Arbeitszeiti,MinToHour(Arbeitszeiti) AS ArbeitszeitStd,Round(Arbeitszeiti / 60,2) AS ArbeitszeitDez,' +
                           'Pauseni,MinToHour(Pauseni) AS PausenStd,Round(Pauseni / 60,2) AS PausenDez,'+
                           'Mehrarbeiti,MinToHour(Mehrarbeiti) AS MehrarbeitStd,Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'+
                           'Buchungsart,Feiertag,Fehltag From time_Buchungen Where Datum between :Von and :Bis';
  qry_Buchungen.ParamByName('Von').AsDate:= dvon;
  qry_Buchungen.ParamByName('Bis').AsDate:= dbis;
  qry_Buchungen.open;
  SetMonthValues(dvon, dbis,dm_pCm.iIDZEPCM);
end;
// ZE - Filter Von Bis
procedure Tfrm_ZE.btn_FilterFromToClick(Sender: TObject);
var
  dVon,dBis:  TDate;
begin
  dVon:= StrToDate(dedt_von.EditValue);
  dBis:= StrToDate(dedt_bis.EditValue);
  qry_Buchungen.SQL.Text:= 'SELECT ID,Datum, Tag, Kommen, Gehen, Pause1Beginn, Pause1Ende,' +
                           'Pause2Beginn,Pause2Ende,Sollstunden,Sollstundeni,MinToHour(Sollstundeni) AS SollStundenStd,Round(Sollstundeni / 60,2) AS SollStundenDez,' +
                           'Arbeitszeit,Arbeitszeiti,MinToHour(Arbeitszeiti) AS ArbeitszeitStd,Round(Arbeitszeiti / 60,2) AS ArbeitszeitDez,' +
                           'Pauseni,MinToHour(Pauseni) AS PausenStd,Round(Pauseni / 60,2) AS PausenDez,'+
                           'Mehrarbeiti,MinToHour(Mehrarbeiti) AS MehrarbeitStd,Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'+
                           'Buchungsart,Feiertag,Fehltag From time_Buchungen Where Datum between :Von and :Bis';
  qry_Buchungen.ParamByName('Von').AsDate:= dvon;
  qry_Buchungen.ParamByName('Bis').AsDate:= dbis;
  qry_Buchungen.open;
end;
// ZE - Monatswerte
procedure Tfrm_ZE.btn_MonthviewClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_monatswerte,frm_monatswerte);
  frm_PCM_Main.iAuswertungMonat:= cbx_FilterMonth.itemindex+1;
  frm_PCM_Main.iAuswertungJahr:= StrToint(cbx_FilterYear.EditValue);

  frm_monatswerte.ShowModal;
end;
// ZE - Fehltage
procedure Tfrm_ZE.btn_FehltagSetClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Fehltageeintragen,frm_Fehltageeintragen);
  frm_Fehltageeintragen.ShowModal;
end;
// Edit
procedure Tfrm_ZE.btn_DataNewClick(Sender: TObject);
var
  iMonat,iJahr: integer;
  wJahr,wMonat,wTag: word;
  iHour,iMinutes,iSec,iMSec:word;
  iBjahr, iBMonat, iBTag: word;
  iAnzahl: integer;
  iDoW: Integer;
  sDayname: string;
  tSollstunden: TTime;
  dBDate: TDate;
begin
  grdDBTblView_Booking.DataController.DataSource:= nil;
  Application.CreateForm(Tfrm_ChooseDate,frm_ChooseDate);
  frm_ChooseDate.Execute(True,iMonat,iJahr);
  dm_PCM.qry_Work.SQL.Text:= 'SELECT COUNT(*) as Anzahl From time_feiertage Where Jahr = :Jahr';
  dm_PCM.qry_Work.ParamByName('jahr').asInteger:= iJahr;
  dm_PCM.qry_Work.open;
  iAnzahl:=dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;
  if iAnzahl = 0  then
  begin
    SetMessageDialog(2,rs_PCMTime_FeiertagforYear + IntToStr(iJahr) + rs_PCMTime_FeiertagforYear1,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    exit;
  end;
  tSollstunden:= GetPersonalSollStunden(dm_PCM.iIDZEPCM);
  DecodeTime(tSollstunden,iHour,iMinutes,iSec,iMSec);

  if iMonat = 13 then
    wTag:= DaysInAYear(iJahr)
  else
    DecodeDate(EndOfAMonth(iJahr,iMonat),wJahr,wMonat,wTag);
  ShowWaitForm(TForm(Self), PWideChar(rs_Function_Helper_Datenwerdenerstellt),wTag ,417, 65);
  dm_PCM.qry_Work.Prepare;
  for var i := 0 to wTag -1 do
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Insert into time_buchungen ' +
                               '(Datum, Tag, Kommen, Gehen,Pause1Beginn,Pause1Ende,Pause2Beginn,Pause2Ende,Sollstunden,SollstundenI,Arbeitszeit,ArbeitszeitI,Feiertag,Fehltag,Mehrarbeit,MehrarbeitI,PausenI,FeiertagI,Buchungsart) ' +
                               'Values ' +
                               '(:Datum, :Tag, :Kommen, :Gehen, :Pause1Beginn, :Pause1Ende, :Pause2Beginn, :Pause2Ende, :Sollstunden, :SollstundenI, :Arbeitszeit, :ArbeitszeitI, :Feiertag, :Fehltag,:Mehrarbeit,:MehrarbeitI,0,0,-1)';
    if iMonat = 13 then
    begin
      dBDate:= IncDay(EncodeDate(iJahr,1,1),i);
    end
    else begin
      dBDate:= IncDay(EncodeDate(iJahr,iMonat,1),i);
    end;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dBDate;
    DecodeDate(dBDate,iBjahr, iBMonat, iBTag);
    dm_PCM.qry_Work1.SQL.Text:= 'SELECT COUNT(*) as Kat From time_feiertage Where Jahr = :Jahr AND Monat = :Monat AND Tag = :Tag';
    dm_PCM.qry_Work1.ParamByName('jahr').asInteger:= iBjahr;
    dm_PCM.qry_Work1.ParamByName('monat').asInteger:= iBMonat;
    dm_PCM.qry_Work1.ParamByName('Tag').asInteger:= iBTag;
    dm_PCM.qry_Work1.Prepare;
    dm_PCM.qry_Work1.open;
    iAnzahl:=dm_PCM.qry_Work1.FieldByName('Kat').AsInteger;
    dm_PCM.qry_Work1.Close;
    dm_PCM.qry_Work1.UnPrepare;
    if iAnzahl = 0  then
    begin
      dm_PCM.qry_Work.ParamByName('Feiertag').AsInteger:= 0;
    end
    else begin
      dm_PCM.qry_Work1.SQL.Text:= 'SELECT Kategorie From time_feiertage Where Jahr = :Jahr AND Monat = :Monat AND Tag = :Tag';
      dm_PCM.qry_Work1.ParamByName('jahr').asInteger:= iBJahr;
      dm_PCM.qry_Work1.ParamByName('monat').asInteger:= iBMonat;
      dm_PCM.qry_Work1.ParamByName('Tag').asInteger:= iBTag;
      dm_PCM.qry_Work1.Prepare;
      dm_PCM.qry_Work1.open;
      iAnzahl:=dm_PCM.qry_Work1.FieldByName('Kategorie').AsInteger;
      dm_PCM.qry_Work1.Close;
      dm_PCM.qry_Work1.UnPrepare;
      dm_PCM.qry_Work.ParamByName('Feiertag').AsInteger:= iAnzahl;
    end;
    iDoW:= DayOfTheWeek(dBDate);
    WaitFormStep;
    Case iDoW of
    1:
      begin
        sDayName:= 'Mo.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    2:
      begin
        sDayName:= 'Di.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    3:
      begin
        sDayName:= 'Mi.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    4:
      begin
        sDayName:= 'Do.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    5:
      begin
        sDayName:= 'Fr.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    6:
      begin
        sDayName:= 'Sa.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= StrToTime('00:00');
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= 0;
      end;
    7:
      begin
        sDayName:= 'So.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= StrToTime('00:00');
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= 0;
      end;
    End;
    dm_PCM.qry_Work.ParamByName('Tag').AsString:= sDayname;
    dm_PCM.qry_Work.ParamByName('Kommen').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Gehen').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause1Beginn').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause1Ende').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause2Beginn').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause2Ende').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Arbeitszeit').AsString := '00:00';
    dm_PCM.qry_Work.ParamByName('ArbeitszeitI').AsInteger := 0;
    dm_PCM.qry_Work.ParamByName('Mehrarbeit').AsString := '00:00';
    dm_PCM.qry_Work.ParamByName('MehrarbeitI').AsInteger := 0;
    dm_PCM.qry_Work.ParamByName('Fehltag').AsString := ' ';


    dm_PCM.qry_Work2.sql.Text:= 'Select Count(*) as Anzahl From time_buchungen Where Datum = :Datum';
    dm_PCM.qry_Work2.ParamByName('Datum').AsDate:= dBDate;
    dm_PCM.qry_Work2.Prepare;
    dm_PCM.qry_Work2.open;
    iAnzahl:= dm_PCM.qry_Work2.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_Work2.Close;
    dm_PCM.qry_Work2.UnPrepare;

    if iAnzahl = 0  then
    begin
      dm_PCM.qry_Work.Unprepare;
      dm_PCM.qry_Work.ExecSQL;
      dm_PCM.qry_Work.Unprepare
    end;
    qry_Buchungen.SQL.Text:= 'SELECT ID,Datum, Tag, Kommen, Gehen, Pause1Beginn, Pause1Ende,' +
                           'Pause2Beginn,Pause2Ende,Sollstunden,Sollstundeni,MinToHour(Sollstundeni) AS SollStundenStd,Round(Sollstundeni / 60,2) AS SollStundenDez,' +
                           'Arbeitszeit,Arbeitszeiti,MinToHour(Arbeitszeiti) AS ArbeitszeitStd,Round(Arbeitszeiti / 60,2) AS ArbeitszeitDez,' +
                           'Pauseni,MinToHour(Pauseni) AS PausenStd,Round(Pauseni / 60,2) AS PausenDez,'+
                           'Mehrarbeiti,MinToHour(Mehrarbeiti) AS MehrarbeitStd,Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'+
                           'Buchungsart,Feiertag,Fehltag From time_Buchungen Where Datum between :Von and :Bis';
    if iMonat = 13 then
    begin
      qry_Buchungen.ParamByName('Von').AsDate:= StartOfAMonth(iJahr,1);
      qry_Buchungen.ParamByName('Bis').AsDate:= EndOfAMonth(iJahr,12);
    end
    else begin
      qry_Buchungen.ParamByName('Von').AsDate:= StartOfAMonth(iJahr,iMonat);
      qry_Buchungen.ParamByName('Bis').AsDate:= EndOfAMonth(iJahr,iMonat);
    end;
    qry_Buchungen.open;
  end;
  CloseWaitForm;
  dm_PCM.qry_Work.UnPrepare;
  grdDBTblView_Booking.DataController.DataSource:= ds_Buchungen;
end;
procedure Tfrm_ZE.btn_DataPrevClick(Sender: TObject);
begin
  qry_Buchungen.Prior;
end;
procedure Tfrm_ZE.btn_DataNextClick(Sender: TObject);
begin
  qry_Buchungen.Next;
end;
// View - Popup
procedure Tfrm_ZE.ppmbtn_ViewTagClick(Sender: TObject);
begin
  iView:= 1;
  sched_Kalender.ViewDay.Active := True;
  sched_Kalender.SelectDays(sched_Kalender.SelectedDays[0], sched_Kalender.SelectedDays[0], True);
  btn_CalZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_CalVor.Hint := rs_PCMManager_Tagvor;
end;
procedure Tfrm_ZE.ppmbtn_ViewArbeitswocheClick(Sender: TObject);
var
  iTag: integer;
begin
  iView:= 2;
  iTag := Round(sched_Kalender.SelectedDays.Count / 2);
  sched_Kalender.SelectWorkDays(sched_Kalender.SelectedDays[iTag]);
  btn_CalZurueck.Hint := rs_PCMManager_ArbWocheZurueck;
  btn_CalVor.Hint := rs_PCMManager_ArbWocheVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewWocheClick(Sender: TObject);
begin
  iView:= 3;
  sched_Kalender.ViewWeek.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_WocheZurueck;
  btn_CalVor.Hint := rs_PCMManager_Wochevor;
end;
procedure Tfrm_ZE.ppmbtn_ViewMonatClick(Sender: TObject);
begin
  iView:= 4;
  sched_Kalender.GoToDate(sched_Kalender.SelectedDays[0], vmMonth);
  btn_CalZurueck.Hint := rs_PCMManager_MonatZurueck;
  btn_CalVor.Hint := rs_PCMManager_Monatvor;
end;
procedure Tfrm_ZE.ppmbtn_ViewJahrClick(Sender: TObject);
begin
  iView:= 5;
  sched_Kalender.ViewYear.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_JahrZurueck;
  btn_CalVor.Hint := rs_PCMManager_JahrVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewAgendaClick(Sender: TObject);
begin
  iView:= 6;
  sched_Kalender.ViewAgenda.Active := True;
end;
procedure Tfrm_ZE.ppmbtn_ViewPlanungClick(Sender: TObject);
begin
  iView:= 7;
  sched_Kalender.ViewTimegrid.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_JahrZurueck;
  btn_CalVor.Hint := rs_PCMManager_JahrVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewGanzertagClick(Sender: TObject);
begin
  iView:= 1;
  if ppmbtn_ViewGanzertag.Tag = 0  then
  begin
    ppmbtn_ViewGanzertag.Tag:= 1;
    sched_Kalender.ViewDay.WorkTimeOnly := true
  end
  else begin
    ppmbtn_ViewGanzertag.Tag:= 0;
    sched_Kalender.ViewDay.WorkTimeOnly := false;
  end;
end;
// View
procedure Tfrm_ZE.btn_CalZurueckClick(Sender: TObject);
begin
  case iView of
  1,6,7: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True); // Tag
  2: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -3), True); // Arbeitswoche
  3:
    begin
      sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
      sched_Kalender.ViewWeek.Active := True;
    end; // Woche
  4: sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[0], -3), vmMonth); // Monat
  5: sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, -1), IncYear(sched_Kalender.DateNavigator.Date, -1 ), True); // Jahr
  end;

end;
procedure Tfrm_ZE.btn_ClearFilterClick(Sender: TObject);
begin
  edt_SearchSurname.Text:= '';
  edt_SearchName.Text:= '';
  edt_personalnr.Text:= '';
  for var i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
    cxCheckComboBox1.States[i] := cbsUnchecked;
  for var i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
    cxCheckComboBox2.States[i] := cbsUnchecked;
  edt_KontaktSucheFunktion.Text:= '';
  btn_kontaktsuchen.Click;
end;
procedure Tfrm_ZE.btn_CalVorClick(Sender: TObject);
begin
  case iView of
  1,6,7: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True); // Tag
  2: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 11), True); // Arbeitswoche
  3:
    begin
      sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 13), True);
      sched_Kalender.ViewWeek.Active := True;
      end; // Woche
  4: sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[sched_Kalender.SelectedDays.Count-1], 3), vmMonth); // Monat
  5: sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, 1), IncYear(sched_Kalender.DateNavigator.Date, 1 ), True); // Jahr
  end;
end;
// Print
procedure Tfrm_ZE.btn_printClick(Sender: TObject);
begin
  Drucke_PCM_ZE_Monatsbericht(cbx_FilterMonth.itemindex+1,cbx_FilterYear.EditValue);
end;
procedure Tfrm_ZE.ppmbtn_PrintTagesansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderTag;
  comp_PrintCalLink1.PrintStyles.Daily.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintWochenansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderWoche;
  comp_PrintCalLink1.PrintStyles. Weekly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintMonatsansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderMonat;
  comp_PrintCalLink1.PrintStyles.Monthly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintJahresansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_Kalenderjahr;
  comp_PrintCalLink1.PrintStyles.Yearly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintAgendaClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_Kalenderagenda;
  comp_PrintCalLink1.PrintStyles.Agenda.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_ReportMonthClick(Sender: TObject);
var
  iMonat, iJahr: integer;
begin
  Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
  frm_PCManagerChooseDate.Execute(True,iMonat,iJahr);
  Drucke_PCM_ZE_Monatsbericht(iMonat,IntToStr(iJahr));
end;
procedure Tfrm_ZE.ppmbtn_ReportYearClick(Sender: TObject);
var
  iJahr: integer;
begin
  Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
  frm_PCManagerChooseDate.Execute(True,True,iJahr);
//  Drucke_PCM_ZE_Jahresbericht(iJahr);
end;
// Config
procedure Tfrm_ZE.btn_FirmaClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Firma,frm_Firma);
  frm_Firma.ShowModal;
end;
procedure Tfrm_ZE.btn_kontaktsuchenClick(Sender: TObject);
var
  str_filter: string;
  str_temp:string;
begin
  qry_Kontakte.Open;
  Screen.Cursor := crHourGlass;
  qry_Kontakte.Filtered:= false;
//  str_Filter:= 'id_Benutzer = ' +  IntToStr(dm_PCM.iIDBenutzerPCM);
  if edt_SearchSurname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_SearchSurname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Nachname) like '+ QuotedStr(str_temp);
  end;
  if edt_Searchname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_Searchname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Vorname) like ' + QuotedStr(str_temp);
  end;

  if edt_personalnr.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_personalnr.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Strasse_Privat) like ' + QuotedStr(str_temp);
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
procedure Tfrm_ZE.btn_AbteilungClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Abteilung,frm_Abteilung);
  frm_Abteilung.ShowModal;
end;
procedure Tfrm_ZE.btn_userClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Userze,frm_Userze);
  frm_Userze.ShowModal;
end;
procedure Tfrm_ZE.btn_FeiertageClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Feiertage,frm_Feiertage);
  frm_Feiertage.ShowModal;
end;
procedure Tfrm_ZE.btn_FehltageClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Fehltage,frm_Fehltage);
  frm_Fehltage.ShowModal;
end;
{$EndRegion Toolbar}
////////////////////////////////////////////////////////////////////////////////
// Tabfunction                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region Tabfunction}
// Tab Zeiterfassung Online
procedure Tfrm_ZE.ppmbtn_CalcAllClick(Sender: TObject);
begin
  BerechneMonate(dm_pcm.iIDZEPCM);
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.ppmbtn_CalcDayClick(Sender: TObject);
var
  wJahr,wMonat,wTag: word;
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar(rs_Function_Helper_BerechneTag1),1 ,417, 65);
  DecodeDate(qry_Buchungen.FieldByName('Datum').AsDateTime,wJahr,wMonat,wTag);
  BerechneTage(wTag,wMonat,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(wMonat,wJahr,dm_pcm.iIDZEPCM);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.ppmbtn_CalcMonthClick(Sender: TObject);
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar(rs_Function_Helper_BerechneMonat1),1 ,417, 65);
  BerechneTage(0,cbx_FilterMonth.itemindex+1,StrToInt(cbx_FilterYear.EditValue),dm_pcm.iIDZEPCM);
  BerechneMonat(cbx_FilterMonth.itemindex+1,StrToInt(cbx_FilterYear.EditValue),dm_pcm.iIDZEPCM);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.ppmbtn_CalcYearClick(Sender: TObject);
var
  wJahr,wMonat,wTag: word;
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar(rs_Function_Helper_BerechneJahr1),1 ,417, 65);
  DecodeDate(Date,wJahr,wMonat,wTag);
  BerechneTage(0,0,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(1,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(2,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(3,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(4,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(5,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(6,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(7,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(8,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(9,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(10,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(11,wJahr,dm_pcm.iIDZEPCM);
  BerechneMonat(12,wJahr,dm_pcm.iIDZEPCM);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.btn_BookingWorkBeginClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Kommen = :Kommen,Buchungsart = :BA Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Kommen').AsTime:= tTimes;
  dm_PCM.qry_Work.ParamByName('BA').asInteger:= cmbbx_Bookingtype.ItemIndex;
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.ExecSQL;
  sText:= rs_PCMTime_LastBookingKommen + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
  dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
  dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
  dm_PCM.qry_Work.ExecSQL;
  stbr_ZE.Panels[1].Text:= sText;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingBreakBeginClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  tp1,tp2: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Select Pause1Beginn,Pause2Beginn From time_buchungen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.open;
  tp1:= dm_PCM.qry_Work.FieldByName('Pause1Beginn').AsDateTime;
  tp2:= dm_PCM.qry_Work.FieldByName('Pause2Beginn').AsDateTime;
  dm_PCM.qry_Work.Close;

  if tp1 = StrToTime('00:00') then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Pause1Beginn = :Pause1Beginn Where Datum = :Datum';
    dm_PCM.qry_Work.ParamByName('Pause1Beginn').AsTime:= tTimes;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
    dm_PCM.qry_Work.ExecSQL;
    sText:= rs_PCMTime_LastBooking1PauseBeginn + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
    dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
    dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
    dm_PCM.qry_Work.ExecSQL;
    stbr_ZE.Panels[1].Text:= sText;
  end
  else begin
    if tp2 = StrToTime('00:00') then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Pause2Beginn = :Pause2Beginn Where Datum = :Datum';
      dm_PCM.qry_Work.ParamByName('Pause2Beginn').AsTime:= tTimes;
      dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
      dm_PCM.qry_Work.ExecSQL;
      sText:= rs_PCMTime_LastBooking2PauseBeginn + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
      dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
      dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
      dm_PCM.qry_Work.ExecSQL;
      stbr_ZE.Panels[1].Text:= sText;
    end
  end;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingBreakEndClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  tp1,tp2: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Select Pause1Ende,Pause2Ende From time_buchungen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.open;
  tp1:= dm_PCM.qry_Work.FieldByName('Pause1Ende').AsDateTime;
  tp2:= dm_PCM.qry_Work.FieldByName('Pause2Ende').AsDateTime;
  dm_PCM.qry_Work.Close;

  if tp1 = StrToTime('00:00') then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Pause1ende = :Pause1ende Where Datum = :Datum';
    dm_PCM.qry_Work.ParamByName('Pause1ende').AsTime:= tTimes;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
    dm_PCM.qry_Work.ExecSQL;
    sText:= rs_PCMTime_LastBooking1PauseEnd + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
    dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
    dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
    dm_PCM.qry_Work.ExecSQL;
    stbr_ZE.Panels[1].Text:= sText;
  end
  else begin
    if tp2 = StrToTime('00:00') then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Pause2ende = :Pause2ende Where Datum = :Datum';
      dm_PCM.qry_Work.ParamByName('Pause2ende').AsTime:= tTimes;
      dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
      dm_PCM.qry_Work.ExecSQL;
      sText:= rs_PCMTime_LastBooking2PauseEnd + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
      dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
      dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
      dm_PCM.qry_Work.ExecSQL;
      stbr_ZE.Panels[1].Text:= sText;
    end
  end;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingWorkEndClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
  iJahr,iMonat,iTag: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeDate(dDate,iJahr,iMonat,iTag);
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Update time_buchungen Set Gehen = :Gehen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Gehen').AsTime:= tTimes;
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.ExecSQL;
  sText:= rs_PCMTime_LastBookingGehen + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
  dm_PCM.qry_Work.SQL.Text:= 'Update time_message Set Text = :Text';
  dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
  dm_PCM.qry_Work.ExecSQL;
  stbr_ZE.Panels[1].Text:= sText;
  BerechneTage(iTag,iMonat,iJahr,dm_pcm.iIDZEPCM);
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.grdDBTblViewCol_BookingMehrarbeitCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Tag: string;
  Feiertag, Sollstunden, Arbeitszeit: Integer;
  Mehrarbeit: double;
  Fehltag: string;
begin
  try
    Tag := VarToStr(AViewInfo.GridRecord.Values[1]);
    Sollstunden := VarAsType(AViewInfo.GridRecord.Values[10], varInteger);
    Arbeitszeit := VarAsType(AViewInfo.GridRecord.Values[12], varInteger);
    Feiertag := VarAsType(AViewInfo.GridRecord.Values[18], varInteger);
    Mehrarbeit := VarAsType(AViewInfo.GridRecord.Values[16], varDouble);
    Fehltag := VarAsType(AViewInfo.GridRecord.Values[19], varString);
    if (Tag = 'Sa.') or (Tag = 'So.') then
    begin
      ACanvas.Font.Color := clActiveBorder;
    end;
    if Mehrarbeit > 0 then
    begin
      ACanvas.Font.Color :=clWebLightGreen;
      ACanvas.Font.Style:= [fsbold];
    end
    else begin
      if Mehrarbeit < 0 then
      begin
        ACanvas.Font.Color:= clWebLightCoral;
        ACanvas.Font.Style:= [fsbold];
      end
      else begin
        if ((Feiertag > 0) and (Sollstunden > 0)) or ((Arbeitszeit > 0) and (Sollstunden > 0)) or ((Fehltag <> '') and (Sollstunden > 0))  then
        begin
          ACanvas.Font.Style := [fsBold];
        end;
      end;
    end;
  except
  end;
end;
procedure Tfrm_ZE.grdDBTblView_BookingCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Booking.GetHitTest(grd_Booking.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Buchungen.FieldByName('ID').AsInteger > 0 then
    begin
      Application.CreateForm(Tfrm_Booking,frm_Booking);
      frm_Booking.Caption:= 'PCM - Manager: ' + qry_Buchungen.FieldByName('Datum').AsString + ' - ' + qry_Buchungen.FieldByName('Tag').AsString;
      frm_Booking.ShowModal;
    end;
  end;
end;
end;
procedure Tfrm_ZE.grdDBTblView_BookingColumn2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Tag: string;
  Feiertag, Sollstunden, Arbeitszeit: Integer;
  Fehltag: string;
begin
  try
    Tag := VarToStr(AViewInfo.GridRecord.Values[1]);
    Sollstunden := VarAsType(AViewInfo.GridRecord.Values[10], varInteger);
    Arbeitszeit := VarAsType(AViewInfo.GridRecord.Values[12], varInteger);
    Feiertag := VarAsType(AViewInfo.GridRecord.Values[18], varInteger);
    Fehltag := VarAsType(AViewInfo.GridRecord.Values[19], varString);
    if (Tag = 'Sa.') or (Tag = 'So.') then
    begin
      ACanvas.Font.Color := clActiveBorder;
    end;
    if ((Feiertag > 0) and (Sollstunden > 0)) or ((Arbeitszeit > 0) and (Sollstunden > 0)) or ((Fehltag <> '') and (Sollstunden > 0)) then
    begin
      ACanvas.Font.Style := [fsBold];
    end;
  except
  end;
end;
procedure Tfrm_ZE.grdDBTblView_SucheCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Suche.GetHitTest(grd_Suche.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
    begin
      dm_PCM.iIDZEPCM:= qry_Kontakte.FieldByName('ID').AsInteger;
      ribTab_1View.Visible := true;
      ribTab_2Edit.Visible := true;
      ribTab_3View.Visible := true;
      ribTab_4Print.Visible := true;
      ribTab_5Config.Visible := true;

      lagrp_ZETab.ItemIndex:= 1;
      case dm_PCM.iModulTab of
      1: btn_OnlineClick(Self);
      2: btn_ViewGridClick(Self);
      3: btn_ViewCalClick(Self);
      end;
    end;
  end;
end;
procedure Tfrm_ZE.sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
begin
  dm_PCM.qry_work.Close;
  dm_PCM.qry_work.SQL.Text := 'SELECT LabelColor,FontColor from time_Kalender WHERE ID = ' + intToStr(AViewInfo.Event.ID);
  dm_PCM.qry_work.Open;
  if dm_PCM.qry_work.FieldByName('LabelColor').AsString <> '' then
  begin
    ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('FontColor').asInteger;
    ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('LabelColor').AsInteger;
  end
  else begin
    ACanvas.Font.Color := defaultFontColor;
    ACanvas.Brush.Color := defaultLabelColor;
  end;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_ZE.sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
begin
  AInfo.ShowReminder:= false;
  AInfo.Location:=   AEvent.Message;
end;
procedure Tfrm_ZE.Timer1Timer(Sender: TObject);
var
  tKommen: TTime;
  tGehen: TTime;
  tPause1Beginn: TTime;
  tPause1ende: TTime;
  tPause2Beginn: TTime;
  tPause2ende: TTime;
begin
  dm_PCm.qry_Timer.ResourceOptions.SilentMode:=True;
  stbr_ZE.Panels[0].Text:= rs_PCMTime_CurrentDatetime + FormatDateTime('dd.MM.yyyy hh:mm:ss',Now);
  dm_PCm.qry_Timer.SQL.Text:= 'Select Kommen, Gehen, Pause1Beginn,Pause1ende,Pause2Beginn,Pause2ende From time_buchungen Where Datum = :Datum';
  dm_PCm.qry_Timer.ParamByName('Datum').AsDate:= Date;
  dm_PCm.qry_Timer.open;
  tKommen:= dm_PCm.qry_Timer.FieldByName('Kommen').AsDateTime;
  tGehen:=dm_PCm.qry_Timer.FieldByName('Gehen').AsDateTime;
  tPause1Beginn:=dm_PCm.qry_Timer.FieldByName('Pause1Beginn').AsDateTime;
  tPause1ende:=dm_PCm.qry_Timer.FieldByName('Pause1ende').AsDateTime;
  tPause2Beginn:=dm_PCm.qry_Timer.FieldByName('Pause2Beginn').AsDateTime;
  tPause2ende:=dm_PCm.qry_Timer.FieldByName('Pause2ende').AsDateTime;
  dm_PCm.qry_Timer.close;
  // Kommen
  if tKommen <> StrToTime('00:00') then
    btn_BookingWorkBegin.Enabled:= false
  else
    btn_BookingWorkBegin.Enabled:= true;
  // Gehen
  if (tGehen <> StrToTime('00:00')) or (btn_Bookingbreakend.Enabled) then
    btn_BookingWorkEnd.Enabled:= false
  else
    if (tKommen <> StrToTime('00:00')) then
      btn_BookingWorkEnd.Enabled:= true;




  if (tPause1Beginn <> StrToTime('00:00')) and (tPause2Beginn <> StrToTime('00:00'))then
  begin
    if tKommen <> StrToTime('00:00') then
      btn_BookingBreakBegin.Enabled:= false
  end
  else begin
    if (tPause1Beginn <> StrToTime('00:00')) and (tPause1Ende = StrToTime('00:00')) or (tPause2Beginn <> StrToTime('00:00')) and (tPause2Ende = StrToTime('00:00')) then
    begin
      btn_BookingBreakBegin.Enabled:= false;
    end
    else begin
      if (tKommen <> StrToTime('00:00')) and (tGehen = StrToTime('00:00')) then
        btn_BookingBreakBegin.Enabled:= true;
    end;
  end;

  if (tPause1ende <> StrToTime('00:00')) and (tPause2ende <> StrToTime('00:00'))then
  begin
    btn_BookingBreakend.Enabled:= false
  end
  else begin
    if (tPause1ende <> StrToTime('00:00')) and (tPause2Beginn = StrToTime('00:00'))then
    begin
      btn_BookingBreakend.Enabled:= false
    end
    else begin
      if ((tPause2Beginn <> StrToTime('00:00')) and (tPause2Ende = StrToTime('00:00'))) or ((tPause1Beginn <> StrToTime('00:00')) and (tPause1Ende = StrToTime('00:00'))) then
      begin
      if (tKommen <> StrToTime('00:00')) and (tGehen = StrToTime('00:00')) then
          btn_BookingBreakend.Enabled:= true;
      end;
    end;
  end;
  if not btn_BookingWorkEnd.Enabled then
  begin
    btn_BookingBreakBegin.Enabled:= false;
  end;
  dm_PCm.qry_Timer.ResourceOptions.SilentMode:=false;

end;
{$EndRegion Tabfunction}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_ZE.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_ZE.FormShow(Sender: TObject);
var
  NewItem: TcxCheckComboBoxItem;
begin
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
  rib.ColorSchemeName:= dm_PCM.sDesign;
  rib.Refresh;
  iZE:= dm_pcm.iIDZEPCM;

  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= true;
  ribTab_2Edit.Visible:=  false;
  ribTab_3View.Visible:= false;
  tb_Drucken.Visible:= false;
  tb_fehltage.Visible:= true;

  pc_Ze.ItemIndex:= 0;
  iView:= 1;
  defaultLabelColor:= 13083265;
  defaultFontColor:= 0;
  grd_Booking.Align:= alClient;


  if dm_pcm.iIDZEPCM > 0 then
  begin
    btn_online.Visible:= ivalways;
    case dm_PCM.iModulTab of
    1: btn_OnlineClick(Self);
    2: btn_ViewGridClick(Self);
    3: btn_ViewCalClick(Self);
    end;
   lagrp_ZETab.ItemIndex:= 1;
  end
  else begin
    btn_online.Visible:= ivnever;
    ribTab_1View.Visible := false;
    ribTab_2Edit.Visible := false;
    ribTab_3View.Visible := false;
    ribTab_4Print.Visible := false;
    ribTab_5Config.Visible := false;
    lagrp_ZETab.ItemIndex:= 0;
  end;
end;
{$EndRegion FormFunktionen}
end.
