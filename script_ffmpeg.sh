#!/bin/bash
path_ffmpeg = "/opt/qligent/vision/CurrentRelease/ffmpeg"
while read LINE; do
uri = $(echo $line | cut -f 3 -d"|")
name = $(echo $line | cut -f 2 -d"|")
$path_ffmpeg -i $uri -bsf:a aac_adtstoasc -t 10 -c copy $name
done < list_monitoring_object