# Commands

General command line tips:

* [Awesome Command Line Apps](https://github.com/herrbischoff/awesome-command-line-apps)

## Bash

* Show times in current bash history.
    ```bash
    export HISTTIMEFORMAT='%F %T '
    ```

## Git


* [Working with submodules](https://github.com/blog/2104-working-with-submodules)

## Linux

* [Move a running process to a new screen shell](http://monkeypatch.me/blog/move-a-running-process-to-a-new-screen-shell.html)
 
## macOS

Other resources:

* [Awesome OS X Command Line](https://github.com/herrbischoff/awesome-osx-command-line)

### Brew

To fix many problems with brew first run:

    ```bash
    brew doctor
    ```

If that doesn't tell you anyting useful try:

    ```bash
    cd $(brew --repo); git fetch; git reset --hard origin/master
    ```

For privacy reasons remember to:

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

## Wireshark

* From [Internet Storm Center](https://isc.sans.edu/diary/21135) - Get NTP time from pcap files.
    ```bash
    tshark -r snort.log.1465396419 -n -Y "ntp.flags.mode==4" -T fields -e ntp.xmt -e frame.time
    ```
