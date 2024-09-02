@echo off
color a
echo If you have any problems with this script, please contact Kingsidorak on Twitter or
echo His contact information can be found on Gumroad.com/kingsidorak
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
:::
:::
:::
:::			   _     _                     _      _                      _
:::			  | | __(_) _ __    __ _  ___ (_)  __| |  ___   _ __   __ _ | | __
:::			  | |/ /| || '_ \  / _` |/ __|| | / _` | / _ \ | '__| / _` || |/ /
:::			  |   < | || | | || (_| |\__ \| || (_| || (_) || |   | (_| ||   <
:::			  |_|\_\|_||_| |_| \__, ||___/|_| \__,_| \___/ |_|    \__,_||_|\_\
:::			                   |___/
:::			  For Free and Paid Bionicle content, Visit Linktr.ee/Kingsidorak
:::
:::


:: ip = Installed Parts
set ip=%localappdata%\Stud.io\CustomParts


if exist "parts" (echo\
) else (color c
echo\
echo\
echo Error! The Parts folder was not found. Please place this .bat file into a Custom Parts Pack folder WITH the folder named Parts, in order to uninstall that parts pack.
pause >nul
exit
)

if "%cd%" equ "%ip%" (goto clearcustomparts) else (goto prep)
:clearcustomparts
color c
set /p areyousure= Would you like to uninstall all custom models? (Y/[N])
if /i "%areyousure%" NEQ "Y" echo\
echo\
echo This script will now remove all installed models. You have 15 seconds to cancle by closing this script.
timeout 15

::DEL CODE HERE::
rmdir /Q /S "%cd%\collider\"
rmdir /Q /S "%cd%\connectivity\"
rmdir /Q /S "%cd%\parts\s\"
rmdir /Q /S "%cd%\parts\"
rmdir /Q /S "%cd%\p"
echo\
echo\
echo All parts from this pack have been uninstalled.
echo Non-standard files may be left behind
pause >nul
exit


:prep
if exist %ip% (color a
echo Preparing to uninstall...
goto uninstallfrompack
) else ( color c
echo Stud.io Custom Parts folder not found, no custom parts to uninstall!.....
pause
)
::UNINSTALL CODE HERE::
:uninstallfrompack
for %%Q in ("%cd%\collider\*.col") do (del "%ip%\collider\%%~nxQ")
for %%Q in ("%cd%\connectivity\*.conn") do (del "%ip%\connectivity\%%~nxQ")
for %%Q in ("%cd%\parts\*.dat") do (del "%ip%\parts\%%~nxQ")
for %%Q in ("%cd%\parts\s\*.dat") do (del "%ip%\parts\s\%%~nxQ" )
for %%Q in ("%cd%\p\*.dat") do (del "%ip%\p\%%~nxQ")
echo All parts from this pack have been uninstalled.
pause
exit