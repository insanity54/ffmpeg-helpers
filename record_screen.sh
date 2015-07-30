#!/bin/bash

source ./global.conf
timestamp=$(date +%Y%m%d%H%M%S)


#"${ffmpeg}" -video_size 1366x768 -framerate 25 -f x11grab -i :0.0 - ./out/screen_recording_"${timestamp}".mp4

"${ffmpeg}" \
    -f x11grab \
    -r 25 \
    -s 1366x768 \
    -i :0.0 \
    -vcodec libx264 \
    -pre lossless_ultrafast \
    -threads 0 \
    ./out/screen_recording_"${timestamp}".mkv