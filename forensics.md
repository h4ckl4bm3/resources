# Forensics

[SANS](https://www.sans.edu) has many good [cheat sheets](https://digital-forensics.sans.org/community/cheat-sheets) and [forensic whitepapers](https://digital-forensics.sans.org/community/whitepapers).

A good document to start to read is [IR A-Z](https://drive.google.com/file/d/0B0CinYp-Pe4-cHNlU1J4TXVUeUU/view) and the site [DFIR – The definitive compendium project](https://aboutdfir.com/). 

* [dfir.training](https://dfir.training/)

## Disk

### Filesystems

#### ext4

* [Ext4 (and Ext2/Ext3) Wiki](https://ext4.wiki.kernel.org/index.php/Main_Page) at kernel.org
* [Ext4 Disk Layout](https://ext4.wiki.kernel.org/index.php/Ext4_Disk_Layout)

### Low level tools
* [TestDisk](http://www.cgsecurity.org/wiki/TestDisk) by CGSecurity

### Time line and tools
* [The Sleuth Kit (TSK)](http://www.sleuthkit.org/sleuthkit/)
* [Autopsy](http://www.sleuthkit.org/autopsy/) and plugins:
    - [https://github.com/markmckinnon/Autopsy-Plugins](https://github.com/markmckinnon/Autopsy-Plugins)
    - [Volatility Autopsy Plugin Module](https://github.com/markmckinnon/Autopsy-Plugins/tree/master/Volatility) and a [blog](https://medium.com/@markmckinnon_80619/volatility-autopsy-plugin-module-8beecea6396) post about it
* [log2timeline](https://github.com/log2timeline/plaso/wiki/Using-log2timeline)
* [Timesketch](https://github.com/google/timesketch) - look at timeline of events

### Analyze files on disk

* [AnalyzePESig (Windows)](https://blog.didierstevens.com/programs/authenticode-tools/) - by Didier Stevens. AnalyzePESig is a tool to check signatures in PE files, just like Sysinternals’ sigcheck.
* [File signatures table by Gary Kessler](http://www.garykessler.net/library/file_sigs.html)

### Images and other resources

* [Digital Corpora](http://digitalcorpora.org/)
* [Digital Forensics Tool Testing Images](http://dftt.sourceforge.net/)
* [EDRM Datasets](http://www.edrm.net/resources/data-sets/)
* [NIST - Hacking Case](http://www.cfreds.nist.gov/Hacking_Case.html)

## Linux

### Linux artifacts

* Information about _.bash_history_
    - [You Don’t Know Jack About .bash_history - SANS DFIR Summit 2016](https://www.youtube.com/watch?v=wv1xqOV2RyE) [pdf](http://www.deer-run.com/~hal/DontKnowJack-bash_history.pdf)
* [Intro to Linux forensics](https://countuponsecurity.com/2017/04/12/intro-to-linux-forensics/)    

## Memory

* [Volatility](https://github.com/volatilityfoundation/volatility)
    - [Recovering BitLocker Keys on Windows 8.1 and 10](https://tribalchicken.io/recovering-bitlocker-keys-on-windows-8-1-and-10/)
    - [Linux plugins](https://github.com/Dutchy-/volatility-plugins)
    - [volatility-bitlocker](https://github.com/tribalchicken/volatility-bitlocker)
    * [volatility-autoruns](https://github.com/tomchop/volatility-autoruns)
    * [volatility-plugins](https://github.com/superponible/volatility-plugins)
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

### macOS guides and tips

* [OSX (Mac) Memory Acquisition and Analysis Using OSXpmem and Volatility](http://ponderthebits.com/2017/02/osx-mac-memory-acquisition-and-analysis-using-osxpmem-and-volatility/)

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
* [RegistryChangesView](http://www.nirsoft.net/utils/registry_changes_view.html) intro [blog](http://blog.nirsoft.net/2017/07/14/new-tool-that-compares-snapshots-of-windows-registry/)
* UserAssist in NTUSER.dat, see [Dit it execute?](https://medium.com/@aubsec/did-it-execute-19c99c45e973).
* [Forensically interesting spots in the Windows 7, Vista and XP file system and registry](https://www.irongeek.com/i.php?page=security/windows-forensics-registry-and-file-system-spots)
* From forensicwiki.org:
    - [Prefetch](http://www.forensicswiki.org/wiki/Prefetch)
    - [OpenSaveMRU](http://www.forensicswiki.org/wiki/OpenSaveMRU)
    - [LastVisitedMRU/LastVisitedPidlMRU](http://www.forensicswiki.org/wiki/LastVisitedMRU)
    - [List of Windows MRU Locations](http://www.forensicswiki.org/wiki/List_of_Windows_MRU_Locations)
* Windows 7
    - [Analyzing USB entries in Windows 7](https://www.blackbagtech.com/blog/2017/02/14/analyzing-usb-entries-in-windows-7/)
* Windows 10
    - [Windows 10 artifacts](http://cyberforensicator.com/2017/02/07/windows-10-forensics/)
* [SCCM and CCM_RectentlyUsedApps](http://blog.4n6ir.com/2017/02/secret-archives-of-execution-evidence.html) and [CCM_RecentlyUsedApps Properties & Forensics](http://blog.4n6ir.com/2017/03/ccmrecentlyusedapps-properties-forensics.html)
* [AmCache](https://windowsir.blogspot.se/2017/03/incorporating-amcache-data-into.html)
* [Shim](https://www.fireeye.com/blog/threat-research/2017/05/fin7-shim-databases-persistence.html)

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
* [block-parser](https://github.com/matthewdunwoody/block-parser) - Parser for Windows PowerShell script block logs
