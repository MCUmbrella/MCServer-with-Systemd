# Description:
  - This repo contains systemd script and shell script for Minecraft servers.
  - :point_up_2: with some easy to follow procedures to install and use
# Installing:
- CAUTION:
  - The paths, parameters (e.g. -Xmx, -Xms) and server .jar file name in the script are all examples. Please change them according to the actual situation.
  - The following operations require root permission.
  - Please make sure that GNU Screen is installed on your system, otherwise the service will not work.
- Steps:
  - Adjust the content of scripts according to your needs. For example: the file name of the systemd service script, Java command arguments, Screen session name and so on
  - Add the systemd script to /lib/systemd/system/
  - Add the bash script to the right folder.
  - Type `systemctl daemon-reload` in the Linux terminal to reload the list of services
  - Type `systemctl status mc` to see the service is loaded/started or not.
# Useful tips:
  - Start/stop the MC server service: `systemctl start/stop mc`
  - View MC server console: `screen -x mc`
  - Exit MC server console: First press 'Ctrl+A' then press 'D'
  - Enter /stop in the MC server console can also let the server stop normally but it will automatically restart after 15 seconds beacuse of the service.
  - Server stop caused by fatal error(in a short word: crash) will also be restarted automatically.
  - Restart interval can be set in the systemd script.
  - Type `systemctl stop mc` after /stop can cancel the automatic restart.
  - Set/cancel MC server autorun at boot: `systemctl enable/disable mc`

Original page: https://www.relatev.com/forum.php?mod=viewthread&tid=2637 <br>
Translated with www.DeepL.com/Translator (free version) - some small corrections by myself