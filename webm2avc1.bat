@echo off
setlocal enabledelayedexpansion

for %%F in (*.webm) do (
    echo Processing file: %%F

    set "outfile=%%~nF.mp4"

    ffmpeg -i "%%F" -c:v libx264 -crf 23 -preset slow -c:a aac -b:a 96k -map_metadata -1 -movflags +faststart+use_metadata_tags -y "!outfile!"

    echo Finished: !outfile!
    echo.
)

echo All done.
pause
