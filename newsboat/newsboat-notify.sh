#!/bin/bash
export DISPLAY=:0.0
newsboat_path="/usr/bin/newsboat"

"$newsboat_path" -x reload
