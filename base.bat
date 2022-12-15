@echo off
title %cd%\gcommand.exe
echo Gunawan092w GCommand [Version 1.0.0]
echo See LICENSE https://github.com/gunawan092w_repo/LICENSE
:start
echo.
set /p startgcommand="%username%@%COMPUTERNAME%:%cd%$ "
if "%startgcommand%"=="test" echo this is a test command && goto start
if "%startgcommand%"=="exit" exit
if "%startgcommand%"=="help" goto gcommandhelp
if "%startgcommand%"=="" goto :start
if "%startgcommand%"=="cd" cd && goto start
if "%startgcommand%"=="dir" dir && goto start
if "%startgcommand%"=="clear" cls && goto start
echo '%startgcommand%' command or file not found.
goto start

:gcommandhelp
echo Help Command - Page 1/1
echo test	A test command to test functionality
echo exit	Quits GCommand
echo help	Lists Help page
echo cd	Displays Current or Changes of the Directory - currently possible displaying current directory. sorry
echo dir	Display lists of files and subdirectories in current directory
echo clear	Clears of the GCommand screen.
goto start