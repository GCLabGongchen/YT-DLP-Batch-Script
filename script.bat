@echo off
title Youtube Video Download Script By GCLab
:start
echo 0:Exit ; 1:Video Download ; 2:Audio ONLY
set /p Select=INPUT:
set /p input=VIDEO URL : 
if "%Select%"=="0" (
  goto end
) else if "%Select%"=="1" (
  echo Downloading URL: %input% In Video Mode
  yt-dlp -f bestvideo+best+bestaudio --no-video-multistreams %Input%
  echo Download completed
) else if "%Select%"=="2" (
  echo Downloading URL: %input% In Audio ONLY Mode
  yt-dlp -f bestaudio+best --no-audio-multistreams -x --audio-format opus %Input%
  echo Download completed
)
goto start
:end
