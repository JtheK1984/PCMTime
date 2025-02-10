echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMBackup.exe "E:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
copy /y /v Win64\Release\PCMBackup.exe "E:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"

copy /y /v Win64\Release\PCMBackup.DE "e:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"
copy /y /v Win64\Release\PCMBackup.EN "e:\Inno\Setupfiles\Programme\PCMService_x64\PCMBackup"

copy /y /v "PCMBackup.docx" "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
copy /y /v "PCMBackup.pdf" "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
copy /y /v "PCMBackup.htm" "e:\Inno\Setupfiles\Programme\PCMService\PCMBackup"
