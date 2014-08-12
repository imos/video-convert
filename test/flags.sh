#!/bin/bash

COMMAND="$(dirname "${BASH_SOURCE}")/../video-convert"

run() {
  local name="${1}"; shift
  echo "=== ${name} ==="
  "${COMMAND}" "$@" --ffmpeg=echo input.mp4
  echo
}

run 'Output' --output=output.mp4
run 'Copy video stream' \
    --output=output.mp4 --video_codec=copy
run 'Copy audio stream' \
    --output=output.mp4 --audio_codec=copy
run 'Threads' --output=output.mp4 --threads=4
run 'Deinterlace' --output=output.mp4 --deinterlace
run 'Subtitle' --output=output.mp4 --subtitle=4
run 'Second audio' --output=output.mp4 --audio=3
