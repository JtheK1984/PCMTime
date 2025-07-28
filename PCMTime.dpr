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
  PCM.Modul.C_ZE.Booking.Feiertage.Aktualisieren in 'Modules\PCM.Modul.C_ZE.Booking.Feiertage.Aktualisieren.pas' {frm_FeiertageAktualisieren},
  PCM.Modul.C_ZE.Booking.Feiertage.Neu.Berechnen in 'Modules\PCM.Modul.C_ZE.Booking.Feiertage.Neu.Berechnen.pas',
  PCM.Modul.C_ZE.Booking.Feiertage.Neu in 'Modules\PCM.Modul.C_ZE.Booking.Feiertage.Neu.pas' {fFeiertageBerechnen},
  PCM.Modul.C_ZE.Booking in 'Modules\PCM.Modul.C_ZE.Booking.pas' {frm_Booking},
  PCM.Modul.C_ZE.Booking.ChooseMonth in 'Modules\PCM.Modul.C_ZE.Booking.ChooseMonth.pas' {frm_ChooseDate},
  PCM.Modul.C_ZE.Booking.Fehltage.Edit in 'Modules\PCM.Modul.C_ZE.Booking.Fehltage.Edit.pas' {frm_Fehltageeintragen},
  PCM.Modul.C_ZE.Booking.Fehltage in 'Modules\PCM.Modul.C_ZE.Booking.Fehltage.pas' {frm_Fehltage},
  PCM.Modul.C_ZE.Booking.Feiertage in 'Modules\PCM.Modul.C_ZE.Booking.Feiertage.pas' {frm_Feiertage},
  PCM.Modul.C_ZE.Booking.Monatswerte in 'Modules\PCM.Modul.C_ZE.Booking.Monatswerte.pas' {frm_monatswerte},
  PCM.Modul.C_ZE in 'Modules\PCM.Modul.C_ZE.pas' {frm_ZE},
  PCM.Modul.C_ZE.Booking.Filter.Date in 'Modules\PCM.Modul.C_ZE.Booking.Filter.Date.pas' {frm_PCManagerChooseDate},
  PCMTime.Calculate in 'Helper\PCMTime.Calculate.pas',
  PCM.Modul.C_ZE.Contacts.Neu in 'Modules\PCM.Modul.C_ZE.Contacts.Neu.pas' {frm_PCManagerNewContact},
  PCM.Modul.C_ZE.Contacts in 'Modules\PCM.Modul.C_ZE.Contacts.pas' {frm_Userze},
  PCM.Modul.C_ZE.Contacts.Konfession in 'Modules\PCM.Modul.C_ZE.Contacts.Konfession.pas' {frm_PCM_Konfession},
  PCM.Modul.C_ZE.Contacts.Staatsangehoerigkeit in 'Modules\PCM.Modul.C_ZE.Contacts.Staatsangehoerigkeit.pas' {frm_PCM_Staatsangehoerigkeit},
  PCMTime.dxSettings in 'PCMTime.dxSettings.pas';

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
  Application.CreateForm(Tdm_PCM,dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main,frm_PCM_Main);
  Application.Run;
end.
