#!/bin/bash

docker run --net host deglopper/sipp:1.0 -sf /sipp/uac_audio.xml -l 10 -r 1 -m 1 $1
