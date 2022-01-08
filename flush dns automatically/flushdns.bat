# Title: Run ipconfig /flushdns on a schedule minimized
# Author: Mountain
# Date 1/7/22

# Instructions:
# Make a new basic task in task scheduler with the following settings
# Triggers > New > Settings = Daily, Start: = 12:00pm , Enabled (Set desired frequency)
# Actions > New > Action: > Start a program, Program/script = *this file*, Add arguments (optional) = "/background"
# Done!

@echo off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnnx0"
goto :EOF
:minimized
ipconfig /flushdns
timeout /t 5 /nobreak
exit