#SingleInstance Force
#InstallKeybdHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileGetTime, ModTime, %A_ScriptFullPath%, M
SetTimer, CheckTime, 1000
Return

CheckTime:
   FileGetTime, ModTime2, %A_ScriptFullPath%, M
   If (ModTime2 != ModTime)
      Reload
Return

:C:HELP.::
(
COVERAGE. = Coverage Assignment Chart for shift turnovers
COCVPN. = CoC extraterritorial ticket template
COCS1. = CoC SentinelOne ticket template

TKT. = Generic ticket template

EMAIL. = Generic email notification
APSTO. = APS turnover template

COCPRIV. = CoC user added to an admin group email template

SFOTKT. = SFO Ticket standardized format
COCTKT. = COC Email template

For more options, please email your ideas/suggestions to Tom Arnold and Dan Whitworth.
)
Return

:C:COCTKT.::
(
Hello Charlotte (Network-Security-Windows Systems-Unix Systems) Team, 

As of <provide pattern/recurring/current time in ET>, <device: as3k01_catsxxx_ids_xxxx> is currently showing <flapping/DOWN/unreachable>. We are unable to SSH or PING from the jumpbox. 
l
There is power in the area but no known/scheduled maintenance. Other devices of same category are reachable. Last known maintenance was a few <days/weeks> ago and the parent <device/uplink> has been up for <15+> days. 

Calling CATS technology at 704-xxx-xxxx, they're unaware of any power or scheduled maintenance/issues at that <address>. A heavy storm is moving through which may be a contributing factor. 

Please let us know if this is a known issue and how we may assist further. 

Thank you, 

Kevin Tam

NOSC Engineer

)
Return


:C:APSTO.::
(
Date: Month XX, 2018
Shift:
Analyst(s):
Incidents:
OTNA:
Firewall Blocks:

<TRAC XXXXXX - Brief description of ticket>

)
Return

:C:SFOTKT.::
(
Subject: SFO-RT# <RTIR_TICKET> - <RTIR_SUBJECT>

SFO,

On <DATETIME(Arizona Time)>, M451 received an alert for <ALARM_SOURCE> on host <HOSTNAME>. [ADDITIONAL_TEXT]

RECOMMENDATION(S):
[RECOMMENDATION_TEXT]

DETAILS FOLLOW:
Caller: soc@mosaic451.com
SFOCat: <SFO_CATEGORY>
Event Time: <EVENTTIME>
Source IP: <IP>
Source Host: <HOSTNAME>
User: <USERNAME>
File: <FILENAME(S)>
File Path: <FILEPATHNAME>
Hash: <MD5_or_SHA1_HASH>

REFERENCES/RESOURCES:
<REFERENCE/RESOURCE_TEXT>


RAW LOGS:
<RAW_LOG_DATA>
)

:C:COVERAGE.::
(
------------Coverage Assignments------------
LogRhythm ----------------- <Analyst Name>
APS McAfee ESM ------------ <Analyst Name> 
CSMC Splunk --------------- <Analyst Name>
MemCare QRadar ------------ <Analyst Name>
HFI Splunk ---------------- <Analyst Name>
Dole FortiSIEM ------------ <Analyst Name>
--------------------------------------------
)
Return

:C:COCVPN.::
(
Subject: COC RTIR #00000 - <Low/Med/High>

City of Charlotte,

The Mosaic451 SOC observed a VPN session established from outside the US. The VPN session was started by user '<USERNAME>' from a <LOCATION> IP at <TIME>. 

If the observation of this VPN session is suspicious for any reason please reach out to us. If this person is a remote contractor working outside this country, please also let us know and we can whitelist them.

<Details>
Date: 
Username: 
Origin IP: 
Origin country: 
Classification: 
Common Event: 
Session ID: 
Log source: 

REFERENCES/RESOURCES:
<Reference links>

RAW LOG(S): 
<RAW LOGS>
)
Return

:C:COCS1.::
(
Subject: <FYI> COC RTIR #00000 - <Low/Med/High>

City of Charlotte,

On <Date Time> Arizona Time SentinelOne identified <filename> on <host> as a potential threat. <Brief Analysis of file>.

RECOMMENDATION(S)/ACTION TAKEN:
<Whitelisted/Blacklisted the hash in SentinelOne.>
<Remove the file from the host.>
<Other Recomendation.>

Details follow: 
Event Time: 
Source IP: 
Host: 
UserID: 
UserName: 
Department/Position: 
Destination IP: 
File: 
Path: 
Hash: 

ADDITIONAL ANALYSIS:
<Additional Analysis here if necessary>

REFERENCES/RESOURCES:


RAW LOG(S):
)
Return

:C:TKT.::
(
Subject: <Customer Code> RTIR #00000 <Alert Name> <threat>

Customer name,

Summary of Events (Arizona Time)

RECOMMENDATION(S):


Details follow:
Event Time: 
Source IP: 
Source Host: 
User: 
Destination IP: 
Destination Port: 
URL: 
File: 
Hash: 

ADDITIONAL ANALYSIS:
<Additional Analysis here if necessary>

REFERENCES/RESOURCES:


RAW LOG(S):
)
Return

:C:EMAIL.::
(
<Customer>,

A new RTIR ticket, SOCRTIR#<Number> as a Category <#>, has been opened for <Customer>.


<Action Requested>

)
Return

:C:COCPRIV.::
(
Subject: COC RTIR #00000 User Added to a Priveleged Group

City of Charlotte,

See the below Microsoft Security Event log indicating <user> was added to <privileged group>.

<Paste Raw Log Here>
)
Return