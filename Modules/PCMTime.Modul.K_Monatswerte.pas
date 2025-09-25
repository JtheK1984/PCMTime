unit PCMTime.Modul.K_Monatswerte;

interface

uses
  {$Region uses}
  cxButtons,
  cxClasses,
  cxContainer,
  cxGridExportLink,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxDBEdit,
  cxEdit,
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
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  cxTimeEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
  dxDateRanges,
  dxScrollbarAnnotations,
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
  system.dateutils,
  System.ImageList,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.NumberBox,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows, cxCurrencyEdit, dxUIAClasses, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  cxGridCustomPopupMenu, cxGridPopupMenu;
  {$EndRegion uses}
type
  {$Region Type}
  Tfrm_monatswerte = class(TForm)
    AuswertungsJahr: TcxSpinEdit;
    brmgr_MW: TdxBarManager;
    btn_01: TdxBarLargeButton;
    btn_02: TdxBarLargeButton;
    btn_03: TdxBarLargeButton;
    btn_04: TdxBarLargeButton;
    btn_05: TdxBarLargeButton;
    btn_06: TdxBarLargeButton;
    btn_07: TdxBarLargeButton;
    btn_08: TdxBarLargeButton;
    btn_09: TdxBarLargeButton;
    btn_10: TdxBarLargeButton;
    btn_11: TdxBarLargeButton;
    btn_12: TdxBarLargeButton;
    ds_Day: TDataSource;
    dxBarDockControl1: TdxBarDockControl;
    grd_Tag: TcxGrid;
    grd_TagDBTableView1: TcxGridDBTableView;
    grd_TagDBTableView1BA: TcxGridDBColumn;
    grd_TagDBTableView1Datum: TcxGridDBColumn;
    grd_TagDBTableView1Fehltag: TcxGridDBColumn;
    grd_TagDBTableView1Feiertag: TcxGridDBColumn;
    grd_TagDBTableView1Mehrarbeit: TcxGridDBColumn;
    grd_TagDBTableView1Pause: TcxGridDBColumn;
    grd_TagDBTableView1Sollstunden: TcxGridDBColumn;
    grd_TagDBTableView1Tag: TcxGridDBColumn;
    grd_TagDBTableView1Tagesbrutto: TcxGridDBColumn;
    grd_TagDBTableView1Tagesnetto: TcxGridDBColumn;
    grd_TagDBTableView2: TcxGridDBTableView;
    grd_TagLevel1: TcxGridLevel;
    imglst_16x16: TcxImageList;
    lbl_bezKr: TcxLabel;
    lbl_BHOGes: TcxLabel;
    lbl_BHOGesDez: TcxLabel;
    lbl_Buero: TcxLabel;
    lbl_BueroDez: TcxLabel;
    lbl_D1: TcxLabel;
    lbl_D2: TcxLabel;
    lbl_D3: TcxLabel;
    lbl_D4: TcxLabel;
    lbl_D5: TcxLabel;
    lbl_D6: TcxLabel;
    lbl_D7: TcxLabel;
    lbl_FT: TcxLabel;
    lbl_FTM: TcxLabel;
    lbl_FTMDez: TcxLabel;
    lbl_genULGes: TcxLabel;
    lbl_geplULGes: TcxLabel;
    lbl_HO: TcxLabel;
    lbl_HODez: TcxLabel;
    lbl_HomeOffGes: TcxLabel;
    lbl_kr: TcxLabel;
    lbl_krDez: TcxLabel;
    lbl_krunb: TcxLabel;
    lbl_krunbdez: TcxLabel;
    lbl_OfficeGes: TcxLabel;
    lbl_RulVJ: TcxLabel;
    lbl_T1: TcxLabel;
    lbl_T2: TcxLabel;
    lbl_T3: TcxLabel;
    lbl_T4: TcxLabel;
    lbl_T5: TcxLabel;
    lbl_T6: TcxLabel;
    lbl_T7: TcxLabel;
    lbl_TG1: TcxLabel;
    lbl_TG1Dez: TcxLabel;
    lbl_TG2: TcxLabel;
    lbl_TG2Dez: TcxLabel;
    lbl_TG3: TcxLabel;
    lbl_TG3Dez: TcxLabel;
    lbl_ULunb: TcxLabel;
    lbl_ULunbDez: TcxLabel;
    lbl_unbKr: TcxLabel;
    lbl_unbUL: TcxLabel;
    lbl_VerfUL: TcxLabel;
    qry_Day: TFDQuery;
    tb_MW: TdxBar;
    tvTageswerte: TcxGridDBTableView;
    tvTageswerteAuftragNr: TcxGridDBColumn;
    tvTageswerteBSumme: TcxGridDBColumn;
    tvTageswerteBuchungsArt: TcxGridDBColumn;
    tvTageswerteKostenstelle: TcxGridDBColumn;
    tvTageswerteMe1: TcxGridDBColumn;
    tvTageswerteMe2: TcxGridDBColumn;
    tvTageswerteTaetigkNr: TcxGridDBColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Monatsbericht1: TdxBarButton;
    Monatsbericht2: TdxBarButton;
    grd_TagDBTableView1Column1: TcxGridDBColumn;
    grd_TagDBTableView1Column2: TcxGridDBColumn;
    grd_TagDBTableView1Column3: TcxGridDBColumn;
    grd_TagDBTableView1Column4: TcxGridDBColumn;
    grd_TagDBTableView1Column5: TcxGridDBColumn;
    grd_TagDBTableView1Column6: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    lagrp_MA: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    lbl_name: TdxLayoutLabeledItem;
    laitm_MASep: TdxLayoutSeparatorItem;
    laitm_MAVorname: TdxLayoutGroup;
    laitm_MANachname: TdxLayoutGroup;
    lbl_nachname: TdxLayoutLabeledItem;
    lagrp_MW: TdxLayoutGroup;
    grpbx_MonatInfo: TdxLayoutLabeledItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem1: TdxLayoutItem;
    lagrp_Values: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    grpbx_Stat: TdxLayoutLabeledItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    dxLayoutLabeledItem7: TdxLayoutLabeledItem;
    dxLayoutLabeledItem8: TdxLayoutLabeledItem;
    dxLayoutLabeledItem9: TdxLayoutLabeledItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutLabeledItem10: TdxLayoutLabeledItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutLabeledItem11: TdxLayoutLabeledItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutLabeledItem12: TdxLayoutLabeledItem;
    dxLayoutLabeledItem13: TdxLayoutLabeledItem;
    dxLayoutLabeledItem14: TdxLayoutLabeledItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutLabeledItem15: TdxLayoutLabeledItem;
    dxLayoutLabeledItem18: TdxLayoutLabeledItem;
    dxLayoutLabeledItem19: TdxLayoutLabeledItem;
    dxLayoutLabeledItem20: TdxLayoutLabeledItem;
    dxLayoutLabeledItem21: TdxLayoutLabeledItem;
    dxLayoutLabeledItem22: TdxLayoutLabeledItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutLabeledItem17: TdxLayoutLabeledItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutLabeledItem16: TdxLayoutLabeledItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutLabeledItem23: TdxLayoutLabeledItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutLabeledItem24: TdxLayoutLabeledItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutLabeledItem25: TdxLayoutLabeledItem;
    dxLayoutLabeledItem26: TdxLayoutLabeledItem;
    dxLayoutLabeledItem27: TdxLayoutLabeledItem;
    dxLayoutLabeledItem28: TdxLayoutLabeledItem;
    dxLayoutLabeledItem29: TdxLayoutLabeledItem;
    dxLayoutLabeledItem30: TdxLayoutLabeledItem;
    dxLayoutLabeledItem31: TdxLayoutLabeledItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    lbl_KikTag: TcxLabel;
    lbl_KikDez: TcxLabel;
    pm_Buchungen: TcxGridPopupMenu;
    pmm_Buchungen: TdxBarPopupMenu;
    dxBarLargeButton4: TdxBarLargeButton;
    sdlg_Buchungen: TSaveDialog;
    dxLayoutItem52: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutGroup42: TdxLayoutGroup;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutLabeledItem32: TdxLayoutLabeledItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    lbl_T42: TcxLabel;
    lbl_T42Dez: TcxLabel;
    lbl_T41: TcxLabel;
    lbl_T41Dez: TcxLabel;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutLabeledItem33: TdxLayoutLabeledItem;
    procedure AuswertungsJahrPropertiesChange(Sender: TObject);
    procedure SetMonatswerte(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Monatsbericht1Click(Sender: TObject);
    procedure Monatsbericht2Click(Sender: TObject);
    procedure grd_TagDBTableView1TagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grd_TagDBTableView1MehrarbeitCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private-Deklarationen }
    function GetMonthFromButton: integer;
    procedure GetData(Amonat,AJahr: integer);
    procedure SetMonth(AMonth: Integer);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_monatswerte: Tfrm_monatswerte;
  {$EndRegion var}

implementation

{$R *.dfm}

uses
  {$Region Type}
  PCMTime.Calculate,
  PCM.Reports,Pcm.Helper,
  PCM.Data,
  PCM.Time.Strings,
  PCM.Functions.Synch.Wait,
  PCMTime.Modul.I_Fehltage.Edit,
  PCMTime.Modul.J_Zeiterfassung,
  PCM.Main;
  {$EndRegion Type}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_monatswerte.GetMonthFromButton: integer;
begin
  Result:= 0;
  if btn_01.LargeImageIndex = 0 then
    Result:= 1;
  if btn_02.LargeImageIndex = 0 then
    Result:= 2;
  if btn_03.LargeImageIndex = 0 then
    Result:= 3;
  if btn_04.LargeImageIndex = 0 then
    Result:= 4;
  if btn_05.LargeImageIndex = 0 then
    Result:= 5;
  if btn_06.LargeImageIndex = 0 then
    Result:= 6;
  if btn_07.LargeImageIndex = 0 then
    Result:= 7;
  if btn_08.LargeImageIndex = 0 then
    Result:= 8;
  if btn_09.LargeImageIndex = 0 then
    Result:= 9;
  if btn_10.LargeImageIndex = 0 then
    Result:= 10;
  if btn_11.LargeImageIndex = 0 then
    Result:= 11;
  if btn_12.LargeImageIndex = 0 then
    Result:= 12;
end;
procedure Tfrm_monatswerte.grd_TagDBTableView1MehrarbeitCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Tag: string;
  Feiertag, Sollstunden, Arbeitszeit: Integer;
  Mehrarbeit: double;
  Fehltag: String;
begin
  try
    Tag := VarToStr(AViewInfo.GridRecord.Values[1]);
    Sollstunden := VarAsType(AViewInfo.GridRecord.Values[4], varInteger);
    Arbeitszeit := VarAsType(AViewInfo.GridRecord.Values[6], varInteger);
    Feiertag := VarAsType(AViewInfo.GridRecord.Values[14], varInteger);
    Mehrarbeit := VarAsType(AViewInfo.GridRecord.Values[12], varDouble);
    Fehltag := VarAsType(AViewInfo.GridRecord.Values[13], varString);
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
procedure Tfrm_monatswerte.grd_TagDBTableView1TagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Tag: string;
  Feiertag, Sollstunden, Arbeitszeit: Integer;
  Fehltag: string;
begin
  try
    Tag := VarToStr(AViewInfo.GridRecord.Values[1]);
    Sollstunden := VarAsType(AViewInfo.GridRecord.Values[4], varInteger);
    Arbeitszeit := VarAsType(AViewInfo.GridRecord.Values[6], varInteger);
    Feiertag := VarAsType(AViewInfo.GridRecord.Values[14], varInteger);
    Fehltag := VarAsType(AViewInfo.GridRecord.Values[13], varString);
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
procedure Tfrm_monatswerte.Monatsbericht1Click(Sender: TObject);
begin
  Drucke_PCM_ZE_Monatsbericht(GetMonthFromButton,AuswertungsJahr.EditingValue);
end;
procedure Tfrm_monatswerte.Monatsbericht2Click(Sender: TObject);
begin
//  Drucke_PCM_ZE_Jahresbericht(AuswertungsJahr.EditingValue);
end;
procedure Tfrm_monatswerte.GetData(Amonat,AJahr: integer);
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
  grpbx_Stat.Caption:= '[B]'+ rs_PCMTime_StatistikUL + IntToStr(AJahr) + ' ' + FormatFloat('0.0', iULANsp) + rs_PCMTime_StatistikULDays +'[/B]';
  // Urlaub Vorjahr
  iULVJ:= GetULVorJahr(dm_pcm.iIDZEPCM, AJahr -1,12);
  lbl_RulVJ.Caption:= FormatFloat('0.0', iULVJ);
  // Urlaub geplan genommen
  if AJahr <  iJAhr then
  begin
    iULgepl:= 0;
    iULgen:=  GetFehltagSum(1, 1, 1,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);;
  end;
  if AJahr =  iJAhr then
  begin
    iULgen:=  GetFehltagSum(1, 1, 1,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,iMonat,iTag));
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
    iULgepl:= GetFehltagSum(1, 1, 1,dm_PCM.iIDZEPCM,EncodeDate(AJahr,iMonat,iTag),EncodeDate(AJahr,12,31));
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
  end;
  if AJahr >  iJAhr then
  begin
    iULgepl:= GetFehltagSum(1, 1, 1,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
    iULgen:= 0;
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
  end;
  if iULVJ + iULANsp - iULgepl - iULgen < 0 then
    lbl_VerfUL.Caption:= FormatFloat('0.0',( iULVJ + iULANsp - iULgepl - iULgen) *-1) + '-'
  else
    lbl_VerfUL.Caption:= FormatFloat('0.0', iULVJ + iULANsp - iULgepl - iULgen);
  lbl_bezKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 1,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_unbKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 2,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_unbUL.Caption:= FormatFloat('0.0',  GetFehltagSum(1, 1, 0,dm_PCM.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_OfficeGes.Caption:= IntToStr(GetBuchungsart(0,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_HomeOffGes.Caption:= IntToStr(GetBuchungsart(1,dm_pcm.iIDZEPCM, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_FT.Caption:= FormatFloat('0.0', GetFeiertage(dm_pcm.iIDZEPCM,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));


  dm_PCM.qry_Work.SQL.Text:=  'SELECT aktuelleMehrarbeit,cast(SEC_TO_TIME(aktuelleMehrarbeit * 60) AS char) as MehrarbeitT, aktuelleMehrarbeit / 60 as MehrarbeitD FROM time_Monatswerte WHERE ID_Benutzer = :ID and Monat = :Monat AND Jahr = :Jahr';
  dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= iVMonat;
  dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= iVJahr;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDZEPCM;
  dm_PCM.qry_Work.open;
  iGLZVMonat:= dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').AsInteger;
  lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
  if iGLZVMonat < 0 then
  begin
    lbl_T6.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').asInteger * -1) + '-';
    lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1) + '-';
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
                              'FROM time_Monatswerte WHERE Monat = :Monat AND Jahr = :Jahr and ID_Benutzer = :ID';
  dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= AMonat;
  dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= AJahr;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_pcm.iIDZEPCM;
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
     lbl_TG3.Caption:=  FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat * -1) + '-';;
     lbl_TG3Dez.Caption:=GetTimeValue(dm_PCM.qry_Work.FieldByName('Resturlaub').asInteger * -1  * 480) + '-';
  end
  else begin
    lbl_TG3.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat);
    lbl_TG3Dez.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Resturlaub').asInteger * 480);
  end;
  if iGLZ < 0 then
  begin
    lbl_T5.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger * -1) + '-';
    lbl_D5.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1) + '-';
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

  var ikrk:=  GetFehltagSumKik(1, 2, 0, 1,dm_PCM.iIDZEPCM, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_KikTag.caption:= FormatFloat('0.00',ikrk);
  lbl_KikDez.caption:= GetTimeValue(0);

  var ikrunb:=  GetFehltagSum(1, 2, 0, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_krunb.caption:= FormatFloat('0.00',ikrunb);
  lbl_krunbDez.caption:= GetTimeValue(Round(ikrunb * 480 ));
  var iBuero:=  GetBuchungsart(0,dm_pcm.iIDZEPCM, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_Buero.caption:= FormatFloat('0.00',iBuero);
  lbl_BueroDez.caption:= GetTimeValue(Round(iBuero * 480 ));
  var iHO:=  GetBuchungsart(1,dm_pcm.iIDZEPCM, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_HO.caption:= FormatFloat('0.00',iHO);
  lbl_HODez.caption:= GetTimeValue(Round(iHO * 480 ));
  lbl_BHOGes.Caption:= FormatFloat('0.00',iHO + iBuero);
  lbl_BHOGesDez.Caption:= GetTimeValue(Round((iHO + iBuero) * 480));



    lbl_T42.Caption:= GetTimeValue(Round(ift * 480 )
    + Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 )
    + Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480)


    );


    lbl_T41.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('IStzeit').asInteger
    - Round(ift * 480 )
    - Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 )
    - Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480)


    );



    lbl_T42Dez.Caption:= FormatFloat('0.00',Round(ift * 480 / 60)
    + Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 / 60 )
    + Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 / 60)


    );


    lbl_T41Dez.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('IStzeitD').asFloat
    - (ift * 480 / 60)
    - Round(GetFehltagSum(1, 1, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 / 60 )
    - Round(GetFehltagSum(1, 2, 1, dm_pcm.iIDZEPCM,StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat)) * 480 / 60)
    );









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
    lbl_T7.Caption:= sHour + ':' + sMin + '-';
    lbl_D7.Caption:= FormatFloat('0.00',iAktGLZ / 60) + '-';
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
    lbl_T7.Caption:= sHour + ':' + sMin;
    lbl_D7.Caption:= FormatFloat('0.00',iAktGLZ / 60);
  end;

  if AJahr * 100 + Amonat <  iJahr * 100 + iMonat then
  begin
    lbl_TG1.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1,dm_pcm.iIDZEPCM, EncodeDate(AJahr,AMonat,1),EndOfAMonth(AJahr,AMonat)));
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
                                'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                                'WHERE zeb.ID_Benutzer = :ID and zeb.SollstundenI > 0 and Feiertag <> 1 and zeb.Datum > :Von and zeb.Datum <= :Bis AND zeft.Typ = 1 AND zeft.Bezahlt = 1';
    dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDZEPCM;
    dm_PCM.qry_Work.ParamByName('Von').asDate:= EncodeDate(AJahr,AMonat,1);
    dm_PCM.qry_Work.ParamByName('Bis').asDate:= EndOfAMonth(AJahr,AMonat);
    dm_PCM.qry_Work.open;
    iULgepl:= dm_PCM.qry_Work.FieldByName('Anzahl').AsFloat;
    lbl_TG1.Caption:= '0.0';
    lbl_TG1Dez.Caption:= '00:00';
    lbl_TG2.Caption:= FormatFloat('0.0', iULgepl);
    dm_PCM.qry_Work.Close;
  end;









  qry_Day.SQL.Text:=  'SELECT ID,Datum, Tag,Kommen, Gehen,Pause1Beginn,Pause1Ende,'+
                      'Pause2Beginn,Pause2Ende,MinToHour(Sollstundeni) AS SollStundenStd,Round(Sollstundeni / 60,2) AS SollStundenDez,'+
                      'MinToHour(Arbeitszeiti) AS NettoStd,Round(Arbeitszeiti / 60,2) AS NettoDez,'+
                      'MinToHour(Arbeitszeiti  + Pauseni) AS BruttotStd,Round((Arbeitszeiti + Pauseni) / 60,2) AS BruttoDez,'+
                      'MinToHour(Pauseni) AS PausenStd,Round(Pauseni / 60,2) AS PausenDez,'+
                      'MinToHour(Mehrarbeiti) AS MehrarbeitStd,Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'+
                      'Buchungsart,Feiertag,Fehltag From time_Buchungen ' +
                      'WHERE MONTH(Datum) = :Monat AND YEAR(Datum) = :Jahr and ID_Benutzer = :ID ' +
                      'ORDER by datum';
  qry_Day.ParamByName('Monat').asInteger := AMonat;
  qry_Day.ParamByName('Jahr').asInteger := AJahr;
  qry_Day.ParamByName('ID').asInteger := dm_PCM.iIDZEPCM;
  qry_Day.Open;

//  dm_PCM.qry_Work.SQL.Text:=


end;
procedure Tfrm_monatswerte.SetMonth(AMonth: Integer);
begin
  btn_01.LargeImageIndex:= -1 + AMonth;
  btn_02.LargeImageIndex:= -2 + AMonth;
  btn_03.LargeImageIndex:= -3 + AMonth;
  btn_04.LargeImageIndex:= -4 + AMonth;
  btn_05.LargeImageIndex:= -5 + AMonth;
  btn_06.LargeImageIndex:= -6 + AMonth;
  btn_07.LargeImageIndex:= -7 + AMonth;
  btn_08.LargeImageIndex:= -8 + AMonth;
  btn_09.LargeImageIndex:= -9 + AMonth;
  btn_10.LargeImageIndex:= -10 + AMonth;
  btn_11.LargeImageIndex:= -11 + AMonth;
  btn_12.LargeImageIndex:= -12 + AMonth;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_monatswerte.AuswertungsJahrPropertiesChange(Sender: TObject);
begin
  SetMonth(1);
  grpbx_MonatInfo.Caption:= '[B]' + rs_PCMTime_Auswertung + DateToStr(StartOfAMonth(AuswertungsJahr.value,1))
                          + ' bis ' + DateToStr(EndOfAMonth(AuswertungsJahr.value,1))+'[/B]';
  GetData(1,AuswertungsJahr.value);
end;
procedure Tfrm_monatswerte.SetMonatswerte(Sender: TObject);
var
  iMonat: integer;
begin
  iMonat := (Sender as TComponent).Tag;
  SetMonth(iMonat);
  grpbx_MonatInfo.Caption:= '[B]' + rs_PCMTime_Auswertung + DateToStr(StartOfAMonth(AuswertungsJahr.value,iMonat))
                      + ' bis ' + DateToStr(EndOfAMonth(AuswertungsJahr.value,iMonat))+'[/B]';
  GetData(iMonat,AuswertungsJahr.value);
end;
procedure Tfrm_monatswerte.cxButton1Click(Sender: TObject);
begin
  ShowWaitForm(TForm(frm_monatswerte), PWideChar(rs_Function_Helper_BerechneMonat1),1 ,417, 65);
  BerechneTage(0,GetMonthFromButton,StrToint(AuswertungsJahr.EditingValue),dm_pcm.iIDZEPCM);
  BerechneMonat(GetMonthFromButton,StrToint(AuswertungsJahr.EditingValue),dm_pcm.iIDZEPCM);
  GetData(GetMonthFromButton,AuswertungsJahr.value);
  CloseWaitForm;
end;
procedure Tfrm_monatswerte.cxButton3Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Fehltageeintragen,frm_Fehltageeintragen);
  frm_Fehltageeintragen.ShowModal;
  GetData(GetMonthFromButton,AuswertungsJahr.value);
end;
procedure Tfrm_monatswerte.dxBarLargeButton4Click(Sender: TObject);
begin
  if sdlg_Buchungen.Execute then
  begin
    ExportGridToExcel(sdlg_Buchungen.FileName, grd_tag);
    SetMessageDialog(1,rs_PCMManager_GridExport1 + sdlg_Buchungen.FileName +  rs_PCMManager_GridExport2,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_monatswerte.FormShow(Sender: TObject);
begin
  dm_PCM.qry_Kalender_Kalender.Open;
  AuswertungsJahr.value:= frm_PCM_Main.iAuswertungJahr;
  SetMonth(frm_PCM_Main.iAuswertungMonat);
  grpbx_MonatInfo.Caption:= '[B]' + rs_PCMTime_Auswertung + DateToStr(StartOfAMonth(frm_PCM_Main.iAuswertungJahr,frm_PCM_Main.iAuswertungMonat))
                      + ' bis ' + DateToStr(EndOfAMonth(frm_PCM_Main.iAuswertungJahr,frm_PCM_Main.iAuswertungMonat))+'[/B]';
  dm_PCM.qry_Work.SQL.Text:= 'Select vorName, Nachname from time_user where ID = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger := dm_PCM.iIDZEPCM;
  dm_PCM.qry_Work.Open;
  lbl_name.Caption:= dm_pcm.qry_Work.FieldByName('vorName').AsString;
  lbl_nachname.Caption:=dm_pcm.qry_Work.FieldByName('Nachname').AsString;
  dm_PCM.qry_Work.Close;
  GetData(frm_PCM_Main.iAuswertungMonat,AuswertungsJahr.value);
end;
{$EndRegion FormFunktionen}
end.
