@echo off
color 02
echo If you have any problems with this installer, please contact Kingsidorak on Twitter or
echo his contact information can be found on Gumroad.com/kingsidorak
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
:::
:::			   _     _                     _      _                      _    
:::			  | | __(_) _ __    __ _  ___ (_)  __| |  ___   _ __   __ _ | | __
:::			  | |/ /| || '_ \  / _` |/ __|| | / _` | / _ \ | '__| / _` || |/ /
:::			  |   < | || | | || (_| |\__ \| || (_| || (_) || |   | (_| ||   < 
:::			  |_|\_\|_||_| |_| \__, ||___/|_| \__,_| \___/ |_|    \__,_||_|\_\
:::			                   |___/                                          
:::
:: These parts of the code detect whether specific folders exist in the custom pack, to make sure the installer is in the right folder.
:: If the installer is in the right folder, it will then check to see if the folder exist in the local\stud.io\customParts folder, and then copy all files to the right folder
:: Current folders supported are, Colldier, Connectivity, P, Parts, and S which is in the Parts folder.
if not exist "%localappdata%\Stud.io\CustomParts\" mkdir %localappdata%\Stud.io\CustomParts\"
::If the Parts folder is not detected, the installer will show an error and abort
if exist "parts" ( if not exist "%localappdata%\Stud.io\CustomParts\parts\" mkdir %localappdata%\Stud.io\CustomParts\parts\"
copy "parts" "%localappdata%\Stud.io\CustomParts\parts\" /y /v > nul
color 02
echo Progress [1/5]: The Parts files were copied... Please wait
) else ( color 04
echo Progress [1/5]: The Parts folder could not be found.
echo Please make sure you have the installer installed into a custom parts pack where the;
echo Collider, Connectivity, and Parts folders are and run the installer.
:: Choice added to allow people to attempt to copy collider and connectivity if Parts is not present
CHOICE /C YN /M "Would you like to attempt copying any other files? Y will attempt to copy files, N will exit"
IF errorlevel 2 (
    exit
) else IF errorlevel 1 (
 goto opt1
)

)
:opt1
if exist "collider" ( if not exist "%localappdata%\Stud.io\CustomParts\collider\" mkdir %localappdata%\Stud.io\CustomParts\collider\"
copy "collider" "%localappdata%\Stud.io\CustomParts\collider\" /y /v > nul
color 02
echo Progress [2/5]: The collider files were copied... Please wait
) else ( echo Progress [2/5]: WARNING! The collider folder could not be found. This may cause issues with the parts you're trying to install... Please wait
)
if exist "connectivity" ( if not exist "%localappdata%\Stud.io\CustomParts\connectivity\" mkdir %localappdata%\Stud.io\CustomParts\connectivity\"
copy "connectivity" "%localappdata%\Stud.io\CustomParts\connectivity\" /y /v > nul
color 02
echo Progress [3/5]: The connectivity files were copied... Please wait
) else ( echo Progress [3/5]: WARNING! The connectivity folder could not be found. This may cause issues with the parts you're trying to install... Please wait
)
if exist "p" ( if not exist "%localappdata%\Stud.io\CustomParts\p\" mkdir %localappdata%\Stud.io\CustomParts\p\"
copy "p" "%localappdata%\Stud.io\CustomParts\p\" /y /v > nul
color 02
echo Progress [4/5]: The p files were copied... Please wait
) else ( echo Progress [4/5]: ...
)
if exist "parts\s" ( if not exist "%localappdata%\Stud.io\CustomParts\parts\s\" mkdir %localappdata%\Stud.io\CustomParts\parts\s\"
copy "parts\s" "%localappdata%\Stud.io\CustomParts\parts\s\" /y /v > nul
color 02
echo Progress [5/5]: The parts\s files were copied.
) else ( echo Progress [4/5]: ...
)
:end
pause
exit