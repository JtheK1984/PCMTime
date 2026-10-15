unit PCMTime.Modul.M_Error;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxBar, cxClasses, System.ImageList,
  Vcl.ImgList, cxImageList, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxTextEdit, cxLabel,
  cxButtons, dxGDIPlusClasses, cxImage, cxGroupBox, cxPC,inifiles, Vcl.Themes,system.UITypes,
  cxMemo, cxProgressBar, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,Vcl.FileCtrl, Vcl.ExtCtrls, shellapi, AbBase,
  AbBrowse, AbZBrows, AbZipper, cxButtonEdit, dxUIAClasses, dxCoreGraphics,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, system.IOUtils, cxCalendar, cxTimeEdit,
  cxCurrencyEdit, cxImageComboBox;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Buchungsfehler = class(TForm)
    brmgr_Backup: TdxBarManager;
    btn_Save: TdxBarLargeButton;
    ds_Backup: TDataSource;
    qry_Backup: TFDQuery;
    tmr_Backup: TTimer;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    grd_Booking: TcxGrid;
    grdDBTblView_Booking: TcxGridDBTableView;
    grdLvl_Booking: TcxGridLevel;
    grdDBTblView_BookingID_Benutzer: TcxGridDBColumn;
    grdDBTblView_BookingDatum: TcxGridDBColumn;
    grdDBTblView_BookingMeldung: TcxGridDBColumn;
    grdDBTblView_BookingID_Buchung: TcxGridDBColumn;
    grdDBTblView_BookingName: TcxGridDBColumn;
    procedure grdDBTblView_BookingCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tmr_BackupTimer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    procedure RefreshMessages;
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  frm_Buchungsfehler: Tfrm_Buchungsfehler;

implementation

{$R *.dfm}

uses  PCM.Data,
      PCMTime.Modul.J_Zeiterfassung,
      PCM.Main,
      PCM.Functions,
      PCM.Functions.Synch.Wait,
			PCM.Time.Strings;

////////////////////////////////////////////////////////////////////////////////
// Button Functions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region ButtonFunktionen}
procedure Tfrm_Buchungsfehler.grdDBTblView_BookingCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  Employee, BookingID: Integer;
  BookingDate: TDate;
  BookingPage: TcxTabSheet;
begin
  if (AButton <> mbLeft) or (ACellViewInfo = nil) or
    not qry_Backup.Active or qry_Backup.IsEmpty then Exit;
  AHandled := True;
  if Assigned(frm_ZE) and (frm_ZE.qry_Buchungen.State in [dsEdit, dsInsert]) then
  begin
    ShowMessage('Bitte die aktuelle Buchung zuerst speichern oder abbrechen.');
    Exit;
  end;
  Employee := qry_Backup.FieldByName('ID_Benutzer').AsInteger;
  BookingID := qry_Backup.FieldByName('ID_Buchung').AsInteger;
  BookingDate := qry_Backup.FieldByName('Datum').AsDateTime;
  if Employee <= 0 then Exit;
  frm_PCM_Main.NavBarClick(frm_PCM_Main.iBuchungen);
  if Assigned(frm_ZE) then
  begin
    BookingPage := frm_ZE.Parent as TcxTabSheet;
    if frm_ZE.SelectBooking(Employee, BookingID, BookingDate) then
    begin
      // Only this error-list workflow closes the overview after the editor.
      FreeAndNil(frm_ZE);
      BookingPage.Free;
      if Parent is TcxTabSheet then
        frm_PCM_Main.pc_Main.ActivePage := TcxTabSheet(Parent);
      RefreshMessages;
    end;
  end;
end;
procedure Tfrm_Buchungsfehler.tmr_BackupTimer(Sender: TObject);
begin

end;
{$EndRegion ButtonFunktionen}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Buchungsfehler.RefreshMessages;
var
  BookingID: Integer;
begin
  BookingID := 0;
  if qry_Backup.Active and not qry_Backup.IsEmpty then
    BookingID := qry_Backup.FieldByName('ID_Buchung').AsInteger;
  qry_Backup.DisableControls;
  try
    qry_Backup.Close;
    qry_Backup.SQL.Text := 'SELECT Concat(tu.Nachname,'', '',tu.Vorname) AS Name , tm.`*`   FROM time_user tu LEFT OUTER JOIN time_meldungen tm ON tm.ID_Benutzer = tu.ID WHERE tu.ID_benutzer = :ID';
    qry_Backup.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
    qry_Backup.Open;
    if BookingID > 0 then qry_Backup.Locate('ID_Buchung', BookingID, []);
  finally
    qry_Backup.EnableControls;
  end;
end;

procedure Tfrm_Buchungsfehler.FormShow(Sender: TObject);
begin
  RefreshMessages;
end;
{$EndRegion FormFunktionen}
end.

