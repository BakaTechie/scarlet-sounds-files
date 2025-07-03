ffmpeg -i input.webm -c:v libx264 -preset slow -crf 24 -c:a aac -b:a 96k -movflags +faststart output.mp4
pause