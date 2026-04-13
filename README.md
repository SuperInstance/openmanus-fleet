# OpenManus Fleet Agent

OpenManus running on Oracle Cloud as a fleet agent controlled by Oracle1.

## Setup
- **Model**: DeepInfra Seed-2.0-mini ($0.00003/1K tokens)
- **Browser**: Playwright + Chromium (headless via Xvfb)
- **Python**: 3.11 (required by browser-use)
- **Venv**: `/tmp/openmanus-env`
- **Code**: `/tmp/OpenManus`

## Usage
```bash
./openmanus_fleet.sh "Search the web for X and summarize"
```

## Capabilities
- Web browsing with Playwright
- Web search (Google, DuckDuckGo)
- Code execution (Python sandbox)
- File operations
- Multi-step task planning

## Fleet Integration
Oracle1 dispatches tasks to OpenManus via shell scripts.
Results are captured and pushed to vessel repos.

## Daytona Patches
Daytona sandbox support disabled (we use Docker instead).
Patched files: app/daytona/sandbox.py, app/daytona/tool_base.py, app/config.py
