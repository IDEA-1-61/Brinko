:: Written by Kingsidorak
set CP="%localappdata%\Stud.io\CustomParts"
cd /d "c:\program files\7-zip"
for /d %%x in (*) do "c:\program files\7-zip\7z.exe" a "%CP%\customparts_%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.zip" "%CP%\*"
rmdir /Q /S "source"


exit