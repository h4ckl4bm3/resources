# Forensics

[SANS](https://www.sans.edu) has many good [cheat sheets](https://digital-forensics.sans.org/community/cheat-sheets) and [forensic whitepapers](https://digital-forensics.sans.org/community/whitepapers).

A good document to start to read is [IR A-Z](https://drive.google.com/file/d/0B0CinYp-Pe4-cHNlU1J4TXVUeUU/view) and the site [DFIR – The definitive compendium project](https://aboutdfir.com/). 

* [dfir.training](https://dfir.training/)

## Disk

### Low level tools
* [TestDisk](http://www.cgsecurity.org/wiki/TestDisk) by CGSecurity

### Time line and tools
* [The Sleuth Kit (TSK)](http://www.sleuthkit.org/sleuthkit/)
* [Autopsy](http://www.sleuthkit.org/autopsy/)
* [log2timeline](https://github.com/log2timeline/plaso/wiki/Using-log2timeline)
* [Timesketch](https://github.com/google/timesketch) - look at timeline of events

### Analyze files on disk

* [AnalyzePESig (Windows)](https://blog.didierstevens.com/programs/authenticode-tools/) - by Didier Stevens. AnalyzePESig is a tool to check signatures in PE files, just like Sysinternals’ sigcheck.

## Linux

### Linux artifacts

* Information about _.bash_history_
    - [You Don’t Know Jack About .bash_history - SANS DFIR Summit 2016](https://www.youtube.com/watch?v=wv1xqOV2RyE) [pdf](http://www.deer-run.com/~hal/DontKnowJack-bash_history.pdf)

## Memory

* [Volatility](https://github.com/volatilityfoundation/volatility)
* [Rekall](https://github.com/google/rekall)
* [DAMM](https://github.com/504ensicsLabs/DAMM) - An open source memory analysis tool built on top of Volatility.
* [VolUtilty](https://github.com/kevthehermit/VolUtility/)
* [LiME](https://github.com/504ensicsLabs/LiME) - Linux Memory Extractor

### Command line examples

* Generate timeline from memory dump
    ```bash
    vol.py -f dump.mem --profile=Win7SP1x86 timeliner --output=body --output-file=timeliner.txt
    mactime-sleuthkit -b timeliner.txt -z CET > sorted-timeliner.txt
    ```

## macOS

### macOS tools
* [osxcollector](https://github.com/Yelp/osxcollector)
* [osxcollector output filters](https://github.com/Yelp/osxcollector)

## Windows

### Windows artifacts

* Registry hives:
    - System-wide registry hive files are located in %windir%\system32\config
        - SAM - locations of interest:
            - SAM\Domains\Account\Users\Names (only during disk forensics or if you have system privileges. 
        - SECURITY
        - SYSTEM
        - SOFTWARE
            HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList - Map SID numbers to domain user names.
    - Main user registry hive are located in %USERPROFILE% in the file **NTUSER.DAT**.
    - Secondary file is located in %localappdata%\Microsoft\Windows folder in the file **USRCLASS.DAT**.
* UserAssist in NTUSER.dat, see [Dit it execute?](https://medium.com/@aubsec/did-it-execute-19c99c45e973).
* From forensicwiki.org:
    - [Prefetch](http://www.forensicswiki.org/wiki/Prefetch)
    - [OpenSaveMRU](http://www.forensicswiki.org/wiki/OpenSaveMRU)
    - [LastVisitedMRU/LastVisitedPidlMRU](http://www.forensicswiki.org/wiki/LastVisitedMRU)
    - [List of Windows MRU Locations](http://www.forensicswiki.org/wiki/List_of_Windows_MRU_Locations)
* Windows 7
    - [Analyzing USB entries in Windows 7](https://www.blackbagtech.com/blog/2017/02/14/analyzing-usb-entries-in-windows-7/)
* Windows 10
    - [Windows 10 artifacts](http://cyberforensicator.com/2017/02/07/windows-10-forensics/

### Windows guides and tips
* [Know your Windows Processes or Die Trying](http://www.sysforensics.org/2014/01/know-your-windows-processes/) - by Patrick Olsen
* [Digital forensics – dll search order](https://countuponsecurity.com/2016/05/24/digital-forensics-dll-search-order/)
* [Unofficial Guide to Mimikatz & Command Reference](https://adsecurity.org/?page_id=1821) - includes topics like on how to detect Mimikatz and Invoke-Mimikatz.
* [Event logs](http://windowsir.blogspot.se/2016/03/event-logs.html) - tools to read evt and evtx files.
* [Forensics Quickie: Accessing & Copying Volume Shadow Copy Contents From Live Remote Systems](http://www.4n6k.com/2017/02/forensics-quickie-accessing-copying.html)
* [Do you see what I CCM?](https://www.fireeye.com/blog/threat-research/2016/12/do_you_see_what_icc.html) - Get data from SCCM when it's available.

### Windows tools
* [LECmd](https://github.com/EricZimmerman/LECmd)
* [srum-dump](https://github.com/MarkBaggett/srum-dump) - A forensics tool to convert the data in the Windows srum (System Resource Usage Monitor) database to an xlsx spreadsheet.

## TODO

Tools to look at:

* [Disk Editor](http://www.disk-editor.org/)
* [List of tools in Cyborg](http://cyborg.ztrela.com/tools/)
* [PE_Carver](https://github.com/Rurik/PE_Carver) - carve valid PE files.
* [hindsight](https://github.com/obsidianforensics/hindsight) - Internet history forensics for Google Chrome/Chromium.
* [bios_memimage](https://github.com/dbrant/bios_memimage) - Test and dump memory
* [Squashfs As A Forensic Container](https://www.foo.be/2017/01/Squashfs_As_A_Forensic_Container) - Squashfs is append-only read-only file-system with compression.
