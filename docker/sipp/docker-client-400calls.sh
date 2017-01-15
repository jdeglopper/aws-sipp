#!/bin/bash

docker run --net host deglopper/sipp -sf /sipp/uac_audio.xml -l 400 -r 400 -m 600 $1
