unit PCM.Modul.C_ZE.Booking;

interface

uses
  {$Region Uses}
  cxClasses,
  cxContainer,
  cxControls,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxImageComboBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxSpinEdit,
  cxTextEdit,
  cxTimeEdit,
  data.db,
  dxBar,
  FIredac.Stan.Param,
  System.Classes,
  system.DateUtils,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Winapi.Messages,
  Winapi.Windows, dxLayoutcxEditAdapters, dxLayoutContainer, cxCurrencyEdit,
  cxCalendar, dxLayoutControl, dxLayoutLookAndFeels, dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Booking = class(TForm)
    brmgr_Data: TdxBarManager;
    btn_DataCancel: TdxBarLargeButton;
    btn_DataClose: TdxBarLargeButton;
    btn_DataNext: TdxBarLargeButton;
    btn_DataPrev: TdxBarLargeButton;
    btn_DataSave: TdxBarLargeButton;
    imgcmbbx_Arbeitsort: TcxDBImageComboBox;
    lucmbbx_Fehltag: TcxDBLookupComboBox;
    tb_Data: TdxBar;
    tedt_Gehen: TcxDBTimeEdit;
    tedt_Kommen: TcxDBTimeEdit;
    tedt_Pause1Beginn: TcxDBTimeEdit;
    tedt_Pause1Ende: TcxDBTimeEdit;
    tedt_Pause2Beginn: TcxDBTimeEdit;
    tedt_Pause2Ende: TcxDBTimeEdit;
    dxLayoutControl1: TdxLayoutControl;
    edt_101Tag: TcxDBSpinEdit;
    edt_100Date: TcxDBDateEdit;
    lagrp_Main: TdxLayoutGroup;
    itm_101Tag: TdxLayoutItem;
    itm_100Datum: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    itm_200Beginn: TdxLayoutItem;
    itm_200Ende: TdxLayoutItem;
    itm_201Beginn: TdxLayoutItem;
    itm_201Ende: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    lagrp_200Arbeitszeit: TdxLayoutGroup;
    lagrp_4Stunden: TdxLayoutGroup;
    lagrp_303Pause2: TdxLayoutGroup;
    lagrp_201Pause1: TdxLayoutGroup;
    lagrp_1Buchung: TdxLayoutGroup;
    itm_103Fehltag: TdxLayoutItem;
    lucmbbx_Feiertag: TcxDBImageComboBox;
    itm_102Feiertag: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    edt_SollStd: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    edt_SollDez: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    edt_BruttoStd: TcxTextEdit;
    edt_BruttoDez: TcxTextEdit;
    edt_NettoStd: TcxTextEdit;
    edt_NettoDez: TcxTextEdit;
    edt_PauseDez: TcxTextEdit;
    edt_PauseStd: TcxTextEdit;
    edt_MAStd: TcxTextEdit;
    edt_MADez: TcxTextEdit;
    procedure btn_DataCancelClick(Sender: TObject);
    procedure btn_DataCloseClick(Sender: TObject);
    procedure btn_DataNextClick(Sender: TObject);
    procedure btn_DataPrevClick(Sender: TObject);
    procedure btn_DataSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    procedure SetButtons;
    procedure SetDayValues;
    procedure SetDayEditValues(ASollstunden,ABrutto,ANetto,APause,AGLZ: integer);
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Booking: Tfrm_Booking;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCMTime.Calculate,
  PCM.Data,
  PCM.Strings,
  PCM.Modul.C_ZE;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_Booking.SetButtons;
begin
  btn_DataSave.Enabled := frm_ze.qry_Buchungen.State in [dsInsert, dsEdit];
  btn_DataCancel.Enabled := frm_ze.qry_Buchungen.State in [dsInsert, dsEdit];
end;
procedure Tfrm_Booking.SetDayValues;
begin
  edt_SollStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('SollstundenI').asInteger);
  edt_SollDez.Text:= FormatFloat('0.00',frm_ZE.qry_Buchungen.FieldByName('SollstundenI').AsInteger / 60);
  edt_BruttoStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('Arbeitszeiti').asInteger + frm_ZE.qry_Buchungen.FieldByName('Pauseni').asInteger);
  edt_BruttoDez.Text:= FormatFloat('0.00',(frm_ZE.qry_Buchungen.FieldByName('Arbeitszeiti').asInteger + frm_ZE.qry_Buchungen.FieldByName('Pauseni').asInteger) / 60);
  edt_PauseStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('Pauseni').asInteger);
  edt_PauseDez.Text:= FormatFloat('0.00',frm_ZE.qry_Buchungen.FieldByName('Pauseni').AsInteger / 60);
  edt_NettoStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('Arbeitszeiti').asInteger);
  edt_NettoDez.Text:= FormatFloat('0.00',frm_ZE.qry_Buchungen.FieldByName('Arbeitszeiti').AsInteger / 60);
  if frm_ZE.qry_Buchungen.FieldByName('Mehrarbeiti').asInteger < 0 then
  begin
    edt_MAStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('Mehrarbeiti').asInteger * -1) + '-';
    edt_MADez.Text:= FormatFloat('0.00',frm_ZE.qry_Buchungen.FieldByName('Mehrarbeiti').AsInteger / 60 * -1) + '-';
  end
  else begin
    edt_MAStd.Text:= GetTimeValue(frm_ZE.qry_Buchungen.FieldByName('Mehrarbeiti').asInteger);
    edt_MADez.Text:= FormatFloat('0.00',frm_ZE.qry_Buchungen.FieldByName('Mehrarbeiti').AsInteger / 60);
  end;
end;
procedure Tfrm_Booking.SetDayEditValues(ASollstunden,ABrutto,ANetto,APause,AGLZ: integer);
begin
  edt_SollStd.Text:= GetTimeValue(ASollstunden);
  edt_SollDez.Text:= FormatFloat('0.00',ASollstunden/ 60);

  edt_BruttoStd.Text:= GetTimeValue(ABrutto);
  edt_BruttoDez.Text:= FormatFloat('0.00',ABrutto / 60);

  edt_PauseStd.Text:= GetTimeValue(APause);
  edt_PauseDez.Text:= FormatFloat('0.00',APause / 60);

  edt_NettoStd.Text:= GetTimeValue(ANetto);
  edt_NettoDez.Text:= FormatFloat('0.00',ANetto / 60);
  if AGLZ < 0 then
  begin
    edt_MAStd.Text:= GetTimeValue(AGLZ * - 1 ) + '-';
    edt_MADez.Text:= FormatFloat('0.00',AGLz / 60 * -1) + '-';
  end
  else begin
    edt_MAStd.Text:= GetTimeValue(AGLZ);
    edt_MADez.Text:= FormatFloat('0.00',AGLz / 60);
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Booking.btn_DataCancelClick(Sender: TObject);
begin
  frm_ZE.qry_Buchungen.Cancel;
end;
procedure Tfrm_Booking.btn_DataCloseClick(Sender: TObject);
begin
  if frm_ZE.qry_Buchungen.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg(rs_PCMTime_MSGDataNotSaved, mtWarning, [mbYes,mbNo], 0) = mrno then
      Exit;
  end;
  Close;
end;
procedure Tfrm_Booking.btn_DataNextClick(Sender: TObject);
begin
  btn_DataSaveClick(Sender);
  frm_ZE.qry_Buchungen.Next;
  SetDayValues;
  Caption:= 'PCM - Manager: ' + frm_ZE.qry_Buchungen.FieldByName('Datum').AsString + ' - ' + frm_ZE.qry_Buchungen.FieldByName('Tag').AsString;
end;
procedure Tfrm_Booking.btn_DataPrevClick(Sender: TObject);
begin
  btn_DataSaveClick(Sender);
  frm_ZE.qry_Buchungen.Prior;
  SetDayValues;
  Caption:= 'PCM - Manager: ' + frm_ZE.qry_Buchungen.FieldByName('Datum').AsString + ' - ' + frm_ZE.qry_Buchungen.FieldByName('Tag').AsString;
end;
procedure Tfrm_Booking.btn_DataSaveClick(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
  iFehltag: integer;
  iFeiertag: integer;
  iSollstunden: integer;
  iArbeitszeit: integer;
  iPause1: integer;
  iPause2: integer;
  iMehrarbeit: integer;
  sMehrarbeit: String;
begin
  if frm_ZE.qry_Buchungen.State in [dsInsert, dsEdit] then
  begin
    frm_ZE.qry_Buchungen.post;
    iFehltag:= 0;
    iFeiertag:= 0;
    iSollstunden:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    iArbeitszeit:= MinutesBetween(tedt_Gehen.Time,tedt_Kommen.Time);
    iPause1:= MinutesBetween(tedt_Pause1Ende.Time,tedt_Pause1Beginn.Time);
    iPause2:= MinutesBetween(tedt_Pause2Ende.Time,tedt_Pause2Beginn.Time);
    if (lucmbbx_Fehltag.EditValue = 'UL') or (lucmbbx_Fehltag.EditValue = 'K') then
      iFehltag:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    if (lucmbbx_Fehltag.EditValue = 'ULH') then
      iFehltag:= Round(MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
    if (frm_ZE.qry_Buchungen.FieldByName('Feiertag').AsInteger = 2) then
      iFeiertag:= Round(MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
    if (frm_ZE.qry_Buchungen.FieldByName('Feiertag').AsInteger = 1) then
      iFeiertag:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    if (iFeiertag = iFehltag) and (iFeiertag = 480) then
      iFehltag := 0;

    iMehrarbeit:= iArbeitszeit - iSollstunden - iPause1 - iPause2 + iFehltag + iFeiertag;
    if iMehrarbeit < 0  then
      sMehrarbeit:= '-' + FormatDateTime('hh:mm',(iMehrarbeit /1440) * -1)
    else
      sMehrarbeit:= FormatDateTime('hh:mm',iMehrarbeit /1440);
//    edt_Mehrarbeit.EditValue:= sMehrarbeit;
    DecodeDate(frm_ZE.qry_Buchungen.FieldByName('Datum').AsDateTime,iJahr,iMonat,iTag);
    BerechneTage(iTag,iMonat,iJahr);
    frm_ZE.qry_Buchungen.Refresh;
    SetDayEditValues(iSollstunden,iArbeitszeit,iArbeitszeit-iPause1 - iPause2,iPause1 - iPause2,iMehrarbeit);
  end;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_Booking.FormShow(Sender: TObject);
begin
  SetDayValues;
end;
{$EndRegion Formfunctions}

end.
