NoIP-bash-Sync
==============

<h3>NoIP Synchronizer bash script for OS X</h3>

<h4>Update your external IP for the service <a href="https://www.noip.com">No-IP</h4>

Information from <a href="http://www.noip.com/integrate/request">NO-IP support</a> to create the script.

To scheldule the script to run when the computer boot and after each 5 minutes in OS X Maverick you need to use <a href="https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html">Launchd</a>.

You will find in the branch the file <b>com.noip.update.ip.plist</b> which is configured to run each 5 minutes from the computer boot.<br>
Just put this file in your user library folder <b>/Users/%USERNAME%/Library/LaunchAgents<br>
Do not forget to edit it before to change the path of the script according with your location.