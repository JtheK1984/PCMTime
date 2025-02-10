call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMBackup/PCMBackup.dproj /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMBackup/PCMBackup.dproj /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v E:\Projekte\Windows\PCMBackup\Win32\Release\PCMService\PCMBackup.exe "e:\Inno\Setupfiles\Programme\PCMBackup"

echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v E:\Projekte\Windows\PCMBackup\Win64\Release\PCMBackup.exe "e:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"
copy /y /v E:\Projekte\Windows\PCMBackup\Win64\Release\PCMBackup.DE "e:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"
copy /y /v E:\Projekte\Windows\PCMBackup\Win64\Release\PCMBackup.EN "e:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMBackup\PCMBackup.docx "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
copy /y /v E:\Projekte\Windows\PCMBackup\PCMBackup.pdf "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
copy /y /v E:\Projekte\Windows\PCMBackup\PCMBackup.htm "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
