echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v Win32\Release\PCMTime.exe "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v Win32\Release\PCMTime.DE "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v Win32\Release\PCMTime.EN "e:\Inno\Setupfiles\Programme\PCMTime"
echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v Win64\Release\PCMTime.exe "e:\Inno\Setupfiles\Programme\PCMTime_x64"
copy /y /v Win64\Release\PCMTime.DE "e:\Inno\Setupfiles\Programme\PCMTime_x64"
copy /y /v Win64\Release\PCMTime.EN "e:\Inno\Setupfiles\Programme\PCMTime_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v PCMTime.docx "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v PCMTime.pdf "e:\Inno\Setupfiles\Programme\PCMTime"
copy /y /v PCMTime.htm "e:\Inno\Setupfiles\Programme\PCMTime"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Time /1.0 /E:\Inno\Setupfiles\Programme\PCMTime
