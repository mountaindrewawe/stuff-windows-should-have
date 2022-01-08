# Title: Run sfc /scannow on schedule minimized
# Author: Mountain
# Date 1/7/22

# Instructions:
# Make a new basic task in task scheduler with the following settings
# General > Run with highest privledges
# Triggers > New > Settings = Weekly, Start: = Sunday @ 3:00am, Enabled (Set desired frequency)
# Actions > New > Action: > Start a program, Program/script = *this file*, Add arguments (optional) = "/background"
# Done!

@echo off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnnx0"
goto :EOF
:minimized
sfc /scannow
timeout /t 1200 /nobreak
exit