#!/bin/bash
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad you are grounded for a week!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'

cat /etc/hosts | grep github || osascript -e 'tell application "Terminal" to do script "sudo -i" in selected tab of the front window' \
          -e 'delay 1' \
          -e 'tell application "Terminal" to do script "s9039684" in selected tab of the front window' \
          -e 'tell application "Terminal" to do script "sed -i.bak \"s/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com netflix.com snapchat.com/\" /etc/hosts\n"  in selected tab of the front window' \
          -e 'tell application "Terminal" to do script "exit" in selected tab of the front window' \
          -e 'tell application "Terminal" to do script "exit" in selected tab of the front window' \
          -e 'delay 10' \
          -e 'quit app "Terminal"'

#
# echo test
#
