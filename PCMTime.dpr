program PCMTime;

uses
  inifiles,
  NtTranslator,
  System.SysUtils,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uWVLoader,
  Windows,
  PCM.Helper,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCM.Reports in 'PCM-Functions\PCM.Reports.pas',
  PCM.splash in 'PCM.splash.pas' {SplashScreen},
  PCMTime.Modul.G_Feiertage.Aktualisieren in 'Modules\PCMTime.Modul.G_Feiertage.Aktualisieren.pas' {frm_FeiertageAktualisieren},
  PCMTime.Modul.G_Feiertage.Neu.Berechnen in 'Modules\PCMTime.Modul.G_Feiertage.Neu.Berechnen.pas',
  PCMTime.Modul.G_Feiertage.Neu in 'Modules\PCMTime.Modul.G_Feiertage.Neu.pas' {fFeiertageBerechnen},
  PCMTime.Modul.J_Zeiterfassung.Buchungen in 'Modules\PCMTime.Modul.J_Zeiterfassung.Buchungen.pas' {frm_Booking},
  PCMTime.Modul.J_Zeiterfassung.MonatJahrauswahl in 'Modules\PCMTime.Modul.J_Zeiterfassung.MonatJahrauswahl.pas' {frm_ChooseDate},
  PCMTime.Modul.I_Fehltage.Edit in 'Modules\PCMTime.Modul.I_Fehltage.Edit.pas' {frm_Fehltageeintragen},
  PCMTime.Modul.F_Fehltage in 'Modules\PCMTime.Modul.F_Fehltage.pas' {frm_Fehltage},
  PCMTime.Modul.G_Feiertage in 'Modules\PCMTime.Modul.G_Feiertage.pas' {frm_Feiertage},
  PCMTime.Modul.K_Monatswerte in 'Modules\PCMTime.Modul.K_Monatswerte.pas' {frm_monatswerte},
  PCMTime.Modul.J_Zeiterfassung in 'Modules\PCMTime.Modul.J_Zeiterfassung.pas' {frm_ZE},
  PCMTime.Modul.J_Zeiterfassung.Filter.Date in 'Modules\PCMTime.Modul.J_Zeiterfassung.Filter.Date.pas' {frm_PCManagerChooseDate},
  PCMTime.Calculate in 'Helper\PCMTime.Calculate.pas',
  PCMTime.Import.HRWorks in 'Helper\PCMTime.Import.HRWorks.pas',
  PCMTime.Import.PDF in 'Helper\PCMTime.Import.PDF.pas',
  PCMTime.Modul.J_Zeiterfassung.Import in 'Modules\PCMTime.Modul.J_Zeiterfassung.Import.pas' {ImportForm},
  PCMTime.Modul.E_User.Neu in 'Modules\PCMTime.Modul.E_User.Neu.pas' {frm_PCManagerNewContact},
  PCMTime.Modul.E_User in 'Modules\PCMTime.Modul.E_User.pas' {frm_Userze},
  PCMTime.Modul.E_User.Konfession in 'Modules\PCMTime.Modul.E_User.Konfession.pas' {frm_PCM_Konfession},
  PCMTime.Modul.E_User.Staatsangehoerigkeit in 'Modules\PCMTime.Modul.E_User.Staatsangehoerigkeit.pas' {frm_PCM_Staatsangehoerigkeit},
  PCMTime.dxSettings in 'PCMTime.dxSettings.pas',
  PCM.Time.Strings in 'Modules\PCM.Time.Strings.pas',
  PCMTime.Modul.L_Reporting in 'Modules\PCMTime.Modul.L_Reporting.pas' {frm_Reports},
  PCMTime.Modul.C_Company in 'Modules\PCMTime.Modul.C_Company.pas' {frm_Firma},
  PCMTime.Modul.D_Department in 'Modules\PCMTime.Modul.D_Department.pas' {Form1},
  PCMTIme.Modul.H_Zeitpläne in 'Modules\PCMTIme.Modul.H_Zeitpläne.pas' {frm_Zeitplan};

{$R *.res}

{$IFDEF WIN64}
  {$R 'Versioninfo64.res'}
{$else}
  {$R 'Versioninfo32.res'}
{$ENDIF}


{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}

var
  ifini: TIniFile;
  slocale: String;

begin
  Checkinis;
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  slocale:=ifini.ReadString('PCMZeiterfassung','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  {$IFDEF WIN64}
  Application.Title:= 'PCM - PCMZeiterfassung 64-Bit';
  {$else}
  Application.Title:= 'PCM - PCMZeiterfassung 32-Bit';
  {$ENDIF}
  TNtTranslator.SetNew(slocale,[],'de');									
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.
