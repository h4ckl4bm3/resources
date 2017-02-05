# Forensics

[SANS](https://www.sans.edu) has many good [cheat sheets](https://digital-forensics.sans.org/community/cheat-sheets) and [forensic whitepapers](https://digital-forensics.sans.org/community/whitepapers).

A good document to start to read is [IR A-Z](https://drive.google.com/file/d/0B0CinYp-Pe4-cHNlU1J4TXVUeUU/view) and the site [DFIR – The definitive compendium project](https://aboutdfir.com/). 

* [dfir.training](https://dfir.training/)

## Disk

* [TestDisk](http://www.cgsecurity.org/wiki/TestDisk) by CGSecurity
* [The Sleuth Kit (TSK)](http://www.sleuthkit.org/sleuthkit/)
* [log2timeline](https://github.com/log2timeline/plaso/wiki/Using-log2timeline)
* [Timesketch](https://github.com/google/timesketch) - look at timeline of events

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

## Platforms and tools

* [Autopsy](http://www.sleuthkit.org/autopsy/)


## macOS

### macOS tools
* [osxcollector](https://github.com/Yelp/osxcollector)
* [osxcollector output filters](https://github.com/Yelp/osxcollector)

## Windows

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
