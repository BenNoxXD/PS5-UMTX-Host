#!/bin/bash

sleep 6s &
lxterminal -e ./fakedns.sh &
lxterminal -e ./host.sh