#!/bin/bash
# OpenManus Fleet Wrapper
# Usage: ./openmanus_fleet.sh "your task here"
#
# Oracle1 controls OpenManus as another agent in the fleet.
# Powered by DeepInfra Seed-2.0-mini + Playwright browser automation.

source /tmp/openmanus-env/bin/activate
cd /tmp/OpenManus

# Ensure Xvfb is running for headless Chromium
if ! pgrep -x Xvfb > /dev/null; then
    Xvfb :99 -screen 0 1280x720x24 > /dev/null 2>&1 &
    sleep 1
fi
export DISPLAY=:99

# Run the task
echo "$1" | python3 main.py
