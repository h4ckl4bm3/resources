# Commands

General command line tips:

* [Awesome Command Line Apps](https://github.com/herrbischoff/awesome-command-line-apps)

## Bash and general unix

* [F’Awk Yeah! Advanced sed and awk Usage](https://posts.specterops.io/fawk-yeah-advanced-sed-and-awk-usage-parsing-for-pentesters-3-e5727e11a8ad)
* Recursive DNS search with dig
    ```bash
    dig +recurse +trace kernel.org
    ```

* Show times in current bash history.
    ```bash
    export HISTTIMEFORMAT='%F %T '
    ```
* Generate password (from https://lwn.net/Articles/713806/)
    ```bash
    entropy=32
    head -c $entropy /dev/random | base64 | tr -d '\n='
    # or direct
    head -c 32 /dev/random | base64 | tr -d '\n='
    ```
* Compare output from two commands:
    ```bash
    diff <(xxd shattered-1.pdf) <(xxd shattered-2.pdf) | less
    ```
* [Effictive grep for NSRL](http://markjx.blogspot.se/2017/07/using-nsrl-on-modern-machine.html)

## Docker images

* Use splash to archive web pages
    ```bash
    docker run -p 5023:5023 -p 8050:8050 -p 8051:8051 scrapinghub/splash
    # To get the full page in a png change the script:
    #     png = splash:png{render_all=1},
    ```

## Git


* [Working with submodules](https://github.com/blog/2104-working-with-submodules)
* [tig](https://jonas.github.io/tig/) - Tig is an ncurses-based text-mode interface for git.

## Linux

* [Move a running process to a new screen shell](http://monkeypatch.me/blog/move-a-running-process-to-a-new-screen-shell.html)
* [tmux](https://tmux.github.io/) ([tmux on Github](https://github.com/tmux/tmux))
    - [A tmux Primer](https://danielmiessler.com/study/tmux/) - trying to switch over to tmux.
    - [tmux on archlinux.org](https://wiki.archlinux.org/index.php/Tmux)
* [man pages online (Debian)](https://manpages.debian.org/)

## macOS

Other resources:

* [Awesome OS X Command Line](https://github.com/herrbischoff/awesome-osx-command-line)

### Brew

* To fix many problems with brew first run:
    ```bash
    brew doctor
    ```
* If that doesn't tell you anyting useful try:
    ```bash
    cd $(brew --repo); git fetch; git reset --hard origin/master
    ```
* For privacy reasons remember to:
    ```bash
    brew analytics off
    ```

### Some commands I like to remember

* Status of disk encryption
    ```bash
    diskutil cs list
    ```
* Cleanup space used by Docker on macOS. First stop Docker and know that your containers will be removed.
    ```bash
    rm /Users/<username>/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/Docker.qcow2
    ```
* Don't write .DS_Store to network disks.
    ```bash
    defaults write com.apple.desktopservices DSDontWriteNetworkStores true
    ```
* Disable (and enable) Airdrop
    ```bash
    defaults write com.apple.NetworkBrowser DisableAirDrop -boolean YES
    # Turn on again
    defaults write com.apple.NetworkBrowser DisableAirDrop -boolean NO
    ```
* Clear url download list
    ```bash
    37 20 * * * sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
    ```
* Some commands that can be usefule to know when you're new to macOS.
    ```bash
    /usr/bin/top -ocpu -R -F -s 2 -n30          # make top use less resources
    softwareupdate --list                       # Check for updates
    Apple key ⌘ + Shift + 3                     # print screen
    Apple key ⌘ + Shift + 4                     # select part of screen
    srm                                         # secure rm
    ```

### macOS tools

* [filewatcher](https://github.com/m3liot/filewatcher) - A simple auditing utility for macOS

## Network

* From [Internet Storm Center](https://isc.sans.edu/diary/21135) - Get NTP time from pcap files.
    ```bash
    tshark -r snort.log.1465396419 -n -Y "ntp.flags.mode==4" -T fields -e ntp.xmt -e frame.time
    ```
* Run Snort on a pcap file:
    ```bash
    snort -r snort.log.1425565276 -c /etc/nsm/templates/snort/snort.conf --daq pcap --daq-mode read-file -l ./log/     # -A console to log to stdout
    ```

## SSH

* Port forwarding
    ```bash
    ssh -L 5900:127.0.0.1:5900 server.domain.tld -l username
    ```
* Remote diff
    ```bash
    function remdiff(){
        remote=${3:-$2}
        ssh $1 "cat $2" | diff - $remote
	}

	# example using
	# remdiff server.domain.tld .bashrc
	# if you wish to diff a file with a different name on the server use
	# remdiff server.domain.tld .bashrc .bash_profile
    ```

## Vim

* [vimdoc](http://vimdoc.sourceforge.net/htmldoc/help.html) - and for [spell](http://vimdoc.sourceforge.net/htmldoc/spell.html)

## Windows

* NTFS mark a file as comming from the internet:
    ```bash
    notepad install.exe:Zone.Identifier

    Text:
    [ZoneTransfer]
    ZoneId=3
    ```

### PowerShell

* Interactive grep with [PowerShell](https://github.com/powershell/powershell).
    ```bash
    Get-Process | Out-GridView -PassThru | Export-Csv -Path .\ProcessLog.csv
    ```
* Make tab completion usable:
    ```bash
    Set-PSReadlineKeyHandler -Key Tab -Function Complete
    ```

Some PowerShell resources:

* [Pinvoke](http://pinvoke.net/)
## Yara and Clamav

* Scan files and files that are packed or compressed with tar/gz/bz/zip etc:
    ```bash
    clamscan -z -r -a --infected --archive-verbose --max-filesize=200000000000000 --max-scansize=200000000000000 -d rules.yar filename
    ```
* Scan password protected files. Read [Quickpost: ClamAV and ZIP File Decryption](https://blog.didierstevens.com/2017/02/15/quickpost-clamav-and-zip-file-decryption/) by Didier Stevens. The rule looks like:
    ```bash
    ZipPasswordInfected;Engine:81-255;0;infected
    # Use with
    clamscan.exe -d is_pe_file.yara -d passwords.pwdb notepad.exe.zip
    ```
