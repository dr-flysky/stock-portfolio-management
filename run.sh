#!/bin/bash
cd /home/dr/Documents/github/stock-portfolio-management
source /home/dr/Documents/virtual_envs/wormhole/bin/activate
python3 main.py &
ps -ef | grep -i "main.py"
pid=$(ps -ef | grep -i "main.py" | awk 'FNR == 1 {print $3}')
echo "Update script running in the background with PID = $pid"
tail -f logs/app.log
