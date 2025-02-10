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
  PCM.Modul.C_ZE.Feiertage.Aktualisieren in 'Modules\PCM.Modul.C_ZE.Feiertage.Aktualisieren.pas' {frm_FeiertageAktualisieren},
  PCM.Modul.C_ZE.Feiertage.Neu.Berechnen in 'Modules\PCM.Modul.C_ZE.Feiertage.Neu.Berechnen.pas',
  PCM.Modul.C_ZE.Feiertage.Neu in 'Modules\PCM.Modul.C_ZE.Feiertage.Neu.pas' {fFeiertageBerechnen},
  PCM.Modul.C_ZE.User in 'Modules\PCM.Modul.C_ZE.User.pas' {frm_Userze},
  PCMManager.Modul.H_ZE.Booking in 'Modules\PCMManager.Modul.H_ZE.Booking.pas' {frm_Booking},
  PCMManager.Modul.H_ZE.ChooseMonth in 'Modules\PCMManager.Modul.H_ZE.ChooseMonth.pas' {frm_ChooseDate},
  PCMManager.Modul.H_ZE.Fehltage.Edit in 'Modules\PCMManager.Modul.H_ZE.Fehltage.Edit.pas' {frm_Fehltageeintragen},
  PCMManager.Modul.H_ZE.Fehltage in 'Modules\PCMManager.Modul.H_ZE.Fehltage.pas' {frm_Fehltage},
  PCMManager.Modul.H_ZE.Feiertage in 'Modules\PCMManager.Modul.H_ZE.Feiertage.pas' {frm_Feiertage},
  PCMManager.Modul.H_ZE.Monatswerte in 'Modules\PCMManager.Modul.H_ZE.Monatswerte.pas' {frm_monatswerte},
  PCMManager.Modul.H_ZE in 'Modules\PCMManager.Modul.H_ZE.pas' {frm_ZE},
  PCMManager.Modul.G_Finanzen.Filter.Date in 'Modules\PCMManager.Modul.G_Finanzen.Filter.Date.pas' {frm_PCManagerChooseDate},
  PCMTime.Calculate in 'Helper\PCMTime.Calculate.pas';

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
  sStyle: String;
  slocale: String;

begin
  Checkinis;
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:=ifini.ReadString('PCMZeiterfassung','Style','Windows');
  slocale:=ifini.ReadString('PCMZeiterfassung','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  TStyleManager.TrySetStyle(sStyle);
  {$IFDEF WIN64}
  Application.Title:= 'PCM - PCMZeiterfassung 64-Bit';
  TNtTranslator.SetNew(slocale,[],'de');
  {$else}
  Application.Title:= 'PCM - PCMZeiterfassung 32-Bit';
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM,dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main,frm_PCM_Main);
  Application.Run;
end.
