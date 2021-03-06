# CERT

Links related to CERT and incident response.

## Databases

* [NSRL](http://www.nsrl.nist.gov/Downloads.htm) - Know good files. Check with [hfind(1)](https://www.sleuthkit.org/sleuthkit/man/hfind.html)

## Distributions

* [REMnux](https://remnux.org)
* [SIFT](https://digital-forensics.sans.org/community/downloads/)
* [Security Onion](https://securityonion.net)
* [DBAN](http://dban.org/) - when you need to wipe data.

## Exploits and techniques 

* [Ten Process Injection Techniques: A Technical Survey of Common and Trending Process Injection Techniques](https://www.endgame.com/blog/technical-blog/ten-process-injection-techniques-technical-survey-common-and-trending-process)

## Hunting

* [The ThreatHunting Project](https://github.com/ThreatHuntingProject/ThreatHunting) - TODO
* [Get-InjectedThread.ps1](https://gist.github.com/jaredcatkinson/23905d34537ce4b5b1818c3e6405c1d2) - Looks for threads that were created as a result of code injection.
* [ACLight](https://github.com/CyberArkLabs/ACLight) - A script for advanced discovery of Privileged Accounts - includes Shadow Admins

## Intel and maps

* [Criticalstack](https://intel.criticalstack.com/) - Threat intelligence for the [Bro](https://www.bro.org/) plattform
* [Digital Attack Map](http://www.digitalattackmap.com/)
* [Emerging Threats Signatures](http://doc.emergingthreats.net/bin/view/Main/AllRulesets)
* [IBM X-Force Exchange](https://exchange.xforce.ibmcloud.com/)
* [Open threat exchange](https://otx.alienvault.com/) - by Alienvault
* [Norse](http://map.norsecorp.com/) - because: lasers :)
* [Deutsche Telekom](http://www.sicherheitstacho.eu/)
* [The World's Worst Botnet ASNs](https://www.spamhaus.org/statistics/botnet-asn/) by Spamhaus.
* [DomainBigData](http://domainbigdata.com/)

## Logs

New section to start to add items that should be logged and monitored.

* [Detecting Kerberoasting Activity](https://adsecurity.org/?p=3458) - by [adsecurity.org](https://adsecurity.org)
* [Detecting Offensive PowerShell Attack Tools](https://adsecurity.org/?p=2604) - by [adsecurity.org](https://adsecurity.org)
* [Basics of Tracking WMI Activity](https://www.darkoperator.com/blog/2017/10/14/basics-of-tracking-wmi-activity)

## Malware analysis

* [Good introduction to pdf files](https://www.youtube.com/watch?v=ns5rJAPOaso) - Malicious Documents: The Matryoshka Edition by Didier Stevens
* [Malware analysis output sanitization](https://isc.sans.edu/forums/diary/Malware+analysis+output+sanitization/22804/)
    ```bash
    oledump.py -s 8 -v 0075733924IEMJ.doc.vir.zip | translate.py "Sani2(byte)"
    ```

## Network

* [Wireshark](https://www.wireshark.org/)
* [NetworkMiner and CapLoader](https://www.netresec.com/)

TODO:

* [A tcpdump Tutorial and Primer with Examples](https://danielmiessler.com/study/tcpdump/)

## Online tools

Remember to always consider if you are allowed too upload a file or pcap. You should probably only upload .pcap files and not .pcapng since they might contain more meta data.

* [malwr](https://malwr.com/)
* [networktotal.com](https://www.networktotal.com/)
* [packettotal.com](https://www.packettotal.com/)
* [virustotal.com](https://www.virustotal.com/)
* [Hybrid Analysis](https://www.hybrid-analysis.com/) - This webpage is a free malware analysis service powered by Payload Security that detects and analyzes unknown threats using a unique Hybrid Analysis technology.

## OS tools

### Linux

* [Lynis](https://cisofy.com/documentation/lynis/) - auditing tool for Linux

### Windows

* [Sysmon](https://technet.microsoft.com/en-us/sysinternals/sysmon )
* [Explaining and adapting Tay’s Sysmon configuration](https://medium.com/@lennartkoopmann/explaining-and-adapting-tays-sysmon-configuration-27d9719a89a8#.xv8jf8tjr)
* [Bloodhound](https://github.com/BloodHoundAD/BloodHound) - BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment.
* [Revoke-Obfuscation](https://github.com/danielbohannon/Revoke-Obfuscation) - PowerShell Obfuscation Detection Framework

## OSINT Resource lists

* [osintframework](http://osintframework.com/) - Good collection with nice GUI for presentation
* [IntelTechniques.com](https://inteltechniques.com/intel/menu.html) - Lots of links to many resources
* [Onstrat.com](http://www.onstrat.com/osint/) - Links for OSINT
* [Creepy](http://www.geocreepy.com/) - A Geolocation OSINT Tool. Offers geolocation information gathering through social networking platforms.

## Planing and prevention

The Australian Signals Directorate has a good collection of recommendations.

* [Strategies to mitigate cyber security incidents - A new cyber security baseline](https://www.asd.gov.au/infosec/mitigationstrategies.htm)
* [Essential eight explained](http://www.asd.gov.au/publications/protect/essential-eight-explained.htm)
* [Scanning for Active Directory Privileges & Privileged Accounts](https://adsecurity.org/?p=3658)

## Platforms and tools

* [Bro](https://bro.org/) - Bro IDS
* [Cuckoo Sandbox](https://www.cuckoosandbox.org/)
* [Yara](https://virustotal.github.io/yara/) - and use it with clamscan to search in zip/tar/gz/bz and more.
* [libyal](https://github.com/libyal/libyal/wiki/Overview) - Yet another library library (and tools)

## Ransomware

* [Ransomware Tracker](https://ransomwaretracker.abuse.ch/)

## Reversing

* [Radare2](https://github.com/radare/radare2)
    - https://www.youtube.com/watch?v=afPZG6XC-KU - Radare (Radare2) demystified (by the creator)
    - https://www.insinuator.net/2016/08/reverse-engineering-with-radare2-intro/
    - https://www.insinuator.net/2016/08/reverse-engineering-with-radare2-part-1/
    - https://www.insinuator.net/2016/08/reverse-engineering-with-radare2-part-2/
* [Bokken](http://bokken.re/) - Bokken. Open source reverse code engineering.
* [pyrebox](https://github.com/Cisco-Talos/pyrebox) - Python scriptable Reverse Engineering Sandbox, a Virtual Machine instrumentation and inspection framework based on QEMU. [https://talosintelligence.com/pyrebox](https://talosintelligence.com/pyrebox) - TODO

## RFCs

* [RFC 3227 - Guidelines for Evidence Collection and Archiving (BCP: 55)](https://www.rfc-editor.org/info/rfc3227)
* [RFC 4949 - Internet Security Glossary, Version 2 (FYI: 36)](https://www.rfc-editor.org/info/rfc4949)

## Tips for security presentations

Some useful commands and demos for presentations.

* [How was your stay at the Hotel La Playa?](https://isc.sans.edu/forums/diary/How+was+your+stay+at+the+Hotel+La+Playa/22069/)
    ```bash
    iwconfig $interface mode monitor
    ifconfig $interface up
    tshark -i $interface -n -l subtype probereq | tee -a /tmp/ssids.tmp     # get questins for SSID's
    ```

## Virus and malware samples

* [support.clean-mx.de/clean-mx/viruses.php](http://support.clean-mx.de/clean-mx/viruses.php)
* [threatglass.com/](http://threatglass.com/) - Threatglass by Barracuda (NYSE: CUDA) is an online tool for sharing, browsing and analyzing web-based malware.
* [virusshare.com/](https://virusshare.com/)
* [kernelmode.info)](http://kernelmode.info)
* [vxvault.net/ViriList.php](http://vxvault.net/ViriList.php)
* [www.tekdefense.com/downloads/malware-samples/](http://www.tekdefense.com/downloads/malware-samples/)
* [zeltser.com/malware-sample-sources/](https://zeltser.com/malware-sample-sources/)
* [malwaria.cf](http://108.59.83.152/)
* [Mac Malware](https://objective-see.com/malware.html) from Objective See
