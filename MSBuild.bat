call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMTime/PCMTime.dproj /t:Clean;Build;Localize;CompressWin32 /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMTime/PCMTime.dproj /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v E:\Projekte\Windows\PCMTime\Win32\Release\PCMTime.exe "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v E:\Projekte\Windows\PCMTime\Win32\Release\PCMTime.DE "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v E:\Projekte\Windows\PCMTime\Win32\Release\PCMTime.EN "e:\Inno\Setupfiles\Programme\PCMTime"

echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v E:\Projekte\Windows\PCMTime\Win64\Release\PCMTime.exe "e:\Inno\Setupfiles\Programme\PCMTime_x64"
copy /y /v E:\Projekte\Windows\PCMTime\Win64\Release\PCMTime.DE "e:\Inno\Setupfiles\Programme\PCMTime_x64"
copy /y /v E:\Projekte\Windows\PCMTime\Win64\Release\PCMTime.EN "e:\Inno\Setupfiles\Programme\PCMTime_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMTime\PCMTime.docx "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v E:\Projekte\Windows\PCMTime\PCMTime.pdf "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v E:\Projekte\Windows\PCMTime\PCMTime.htm "e:\Inno\Setupfiles\Programme\PCMTime"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Time /1.0 /E:\Inno\Setupfiles\Programme\PCMTime_x64
