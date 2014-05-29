NoIP-bash-Sync
==============

<h2>NoIP Synchronizer bash script for OS X</h2>

<b>Update your external IP for the service <a href="https://www.noip.com">No-IP</a>

The initial script was not by me but by another person and unfortunately I do not remember and find where I got it. So please if you know the initial author or if you are this person contact me.

To scheldule the script to run when the computer boot and after each 5 minutes in OS X Maverick you need to use <a href="https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html">Launchd</a>.

You will find in the branch the file <b>com.noip.update.ip.plist</b> which is configured to run each 5 minutes from the computer boot.
Just put this file in your user library folder <b>/Users/%USERNAME%/Library/LaunchAgents 