@echo off
setlocal enabledelayedexpansion

echo ==============================
echo Gizmo AI
echo ==============================

set "audioUrls[0]=https://github.com/dgrtygry/Gizmo-AI/raw/main/1.mp3"
set "audioUrls[1]=https://github.com/dgrtygry/Gizmo-AI/raw/main/2.mp3"
set "audioUrls[2]=https://github.com/dgrtygry/Gizmo-AI/raw/main/3.mp3"
set "audioUrls[3]=https://github.com/dgrtygry/Gizmo-AI/raw/main/4.mp3"
set "audioUrls[4]=https://github.com/dgrtygry/Gizmo-AI/raw/main/5.mp3"

:playRandomAudio
set /A "randomIndex=!random! %% 5"
set "audioUrl=!audioUrls[%randomIndex%]!"

echo Playing audio: %audioUrl%
powershell -Command "(New-Object Media.SoundPlayer '%audioUrl%').PlaySync()"

:waitForEnter
set /p "userInput=Type something (Press Enter to hear Gizmo's response): "
if not defined userInput goto waitForEnter

goto playRandomAudio
