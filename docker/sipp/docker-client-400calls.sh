#!/bin/bash

docker run --net host deglopper/sipp:1.0 -sf /sipp/uac_audio.xml -l 400 -r 400 -m 600 $1
