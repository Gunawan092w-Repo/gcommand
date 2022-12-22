@echo off
title %cd%\GCommand_V1.1.exe
:startup
cd C:\
color 07
echo Gunawan092w GCommand [Version 1.1] 2022.12.22
echo See LICENSE https://github.com/gunawan092w_repo/gcommand/LICENSE
:start
echo.
set /p startgcommand="%username%@%COMPUTERNAME%:%cd%$ "
if "%startgcommand%"=="test" echo this is a test command && goto start
if "%startgcommand%"=="exit" exit
if "%startgcommand%"=="help" goto gcommand-help
if "%startgcommand%"=="" goto :start
if "%startgcommand%"=="cd" goto gcommand-cd
if "%startgcommand%"=="dir" dir && goto start
if "%startgcommand%"=="clear" cls && goto start
if "%startgcommand%"=="restart" cls && goto startup
if "%startgcommand%"=="color" goto gcommand-color
if "%startgcommand%"=="change-drive" goto gcommand-change-drive
:: if "%startgcommand%"=="
echo Command or file '%startgcommand%' not found. Type 'help' to display help page
goto start

:gcommand-help
echo Help Command - Page 1/1
echo cd		Displays Current or Changes of the Directory
echo change-drive	Changes Drive Location
echo clear		Clears of the GCommand screen.
echo color  		Sets console's background and text color
echo dir		Display lists of files and subdirectories in current directory
echo exit		Quits GCommand
echo restart 	Restarts GCommand.
echo test		A test command to test functionality
goto start

:gcommand-cd
echo Your Location is %cd%.
echo type 'back' to go back. 'back-root' to go back to Root Drive
echo 'winroot' to go to the windows drive
echo.
set /p gcommand-cd="Where is your destination? >"
if "%gcommand-cd%"=="back" cd.. && goto start
if "%gcommand-cd%"=="winroot" C: && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && goto start
if "%gcommand-cd%"=="back-root" cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && cd.. && goto start
cd %gcommand-cd% && goto start
goto start

:gcommand-color
echo Sets console's Background and text color
echo.
echo Values:
echo 0 = Black       8 = Gray
echo 1 = Blue        9 = Light Blue
echo 2 = Green       A = Light Green
echo 3 = Aqua        B = Light Aqua
echo 4 = Red         C = Light Red
echo 5 = Purple      D = Light Purple
echo 6 = Yellow      E = Light Yellow
echo 7 = White       F = Bright White
echo EXAMPLE: "color=19" produces light blue on bright blue.
echo To restore the default color, do "color=07"
echo.
set /p gcommand-color="color="
if "%gcommand-color%"=="" color 07 && goto start
color %gcommand-color% && goto start
goto start

:gcommand-change-drive
echo Changes Drive Location Letter
echo "Usage: change-drive> {drive.letter}"
echo "Example: change-drive> A:"
set /p gcommand-change-drive="change-drive> "
%gcommand-change-drive% || find "The system cannot find the drive specified." && echo Invalid Drive Letter. Make sure that the drive you inputed is connected to your computer. && goto start