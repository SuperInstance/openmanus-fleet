#!/bin/bash
# OpenManus launcher for Oracle1 fleet
# Points at z.ai GLM-5-Turbo with Playwright for browser automation

source /tmp/openmanus-env/bin/activate
cd /tmp/OpenManus

export SANDBOX_RUNTIME="docker"
export DISPLAY=:99

# Start Xvfb for headless browser
Xvfb :99 -screen 0 1280x720x24 &
XVFB_PID=$!
sleep 1

# Run OpenManus with the given task
python3 main.py "$@"

# Cleanup
kill $XVFB_PID 2>/dev/null
