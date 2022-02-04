#!/bin/bash

CURRENT_PATH=$(cd $(dirname $0);pwd)

echo "$CURRENT_PATH"
roslaunch scripts/sensor_vis.launch repository_path:=$CURRENT_PATH
