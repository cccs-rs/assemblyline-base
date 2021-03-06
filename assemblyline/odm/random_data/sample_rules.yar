rule BlackShades {
    meta:
        rule_group = "implant"
        implant = "BlackShades"
        
        description = "BlackShades implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900000"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.BlackShades.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = "Brian Wallace (@botnet_hunter)"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.704041Z"
        date = "2014/04"
        family = "blackshades"
        last_saved_by = "malware_dev"
        ref = "http://blog.cylance.com/a-study-in-bots-blackshades-net"
    
    strings:
        $string1 = "bal_server"
        $string2 = "txtChat"
        $string3 = "UDPFlood"
    
    condition:
        all of them
    
}


rule Punisher {
    meta:
        rule_group = "implant"
        implant = "Punisher"
        
        description = "Punisher implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900002"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.Punisher.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.761838Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/Punisher"
    
    strings:
        $a = "abccba"
        $b = {5C 00 68 00 66 00 68 00 2E 00 76 00 62 00 73}
        $c = {5C 00 73 00 63 00 2E 00 76 00 62 00 73}
        $d = "SpyTheSpy" wide ascii
        $e = "wireshark" wide
        $f = "apateDNS" wide
        $g = "abccbaDanabccb"
    
    condition:
        all of them
    
}


rule gh0st {
    meta:
        rule_group = "implant"
        implant = "gh0st"
        
        description = "gh0st implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900003"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.Gh0st.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.790329Z"
        last_saved_by = "malware_dev"
    
    strings:
        // File 11401249a0e499a3cd2dc147d9600ff8.exe @ 0x00460E80 (2015-11-18)
        $Match_00460e80 = { 8b 44 24 04 56 8b 70 1c 8b 48 10 8b 56 14 3b d1 76 02 8b d1 85 d2 74 58 8b 76 10 8b ca 53 8b d9 57 8b 78 0c c1 e9 02 f3 a5 8b cb 83 e1 03 f3 a4 8b 78 0c 8b 48 1c 03 fa 89 78 0c 8b 71 10 03 f2 89 71 10 8b 58 14 8b 78 10 8b 48 1c 03 da 2b fa 89 58 14 89 78 10 8b 71 14 5f 2b f2 5b 89 71 14 8b 40 1c 8b 48 14 85 c9 75 06 8b 48 08 89 48 10 5e c3 }
    
    condition:
        all of them
    
}


rule Xtreme {
    meta:
        rule_group = "implant"
        implant = "Xtreme"
        
        description = "Xtreme implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900004"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.Xtreme.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.971287Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/Xtreme"
        ver = "2.9, 3.1, 3.2, 3.5"
    
    strings:
        $a = "XTREME" wide
        $b = "ServerStarted" wide
        $c = "XtremeKeylogger" wide
        $d = "x.html" wide
        $e = "Xtreme RAT" wide
    
    condition:
        all of them
    
}


rule Bozok {
    meta:
        rule_group = "implant"
        implant = "Bozok"
        
        description = "Bozok implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900005"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.Bozok.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.809294Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/Bozok"
    
    strings:
        $a = "getVer" nocase
        $b = "StartVNC" nocase
        $c = "SendCamList" nocase
        $d = "untPlugin" nocase
        $e = "gethostbyname" nocase
    
    condition:
        all of them
    
}


rule CyberGate {
    meta:
        rule_group = "implant"
        implant = "CyberGate"
        
        description = "CyberGate implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900006"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.CyberGate.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.826927Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/CyberGate"
    
    strings:
        $string1 = {23 23 23 23 40 23 23 23 23 E8 EE E9 F9 23 23 23 23 40 23 23 23 23}
        $string2 = {23 23 23 23 40 23 23 23 23 FA FD F0 EF F9 23 23 23 23 40 23 23 23 23}
        $string3 = "EditSvr"
        $string4 = "TLoader"
        $string5 = "Stroks"
        $string6 = "####@####"
        $res1 = "XX-XX-XX-XX"
        $res2 = "CG-CG-CG-CG"
    
    condition:
        all of ($string*) and any of ($res*)
    
}


rule NanoCore {
    meta:
        rule_group = "implant"
        implant = "NanoCore"
        
        description = "NanoCore implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900007"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.NanoCore.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.842859Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/NanoCore"
    
    strings:
        $a = "NanoCore"
        $b = "ClientPlugin"
        $c = "ProjectData"
        $d = "DESCrypto"
        $e = "KeepAlive"
        $f = "IPNETROW"
        $g = "LogClientMessage"
        $h = "|ClientHost"
        $i = "get_Connected"
        $j = "#=q"
        $key = {43 6f 24 cb 95 30 38 39}
    
    condition:
        6 of them
    
}


rule xRAT {
    meta:
        rule_group = "implant"
        implant = "xRAT"
        
        description = "xRAT implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900008"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.xRat.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.983669Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/xRat"
    
    strings:
        $v1a = "DecodeProductKey"
        $v1b = "StartHTTPFlood"
        $v1c = "CodeKey"
        $v1d = "MESSAGEBOX"
        $v1e = "GetFilezillaPasswords"
        $v1f = "DataIn"
        $v1g = "UDPzSockets"
        $v1h = {52 00 54 00 5F 00 52 00 43 00 44 00 41 00 54 00 41}
        $v2a = "<URL>k__BackingField"
        $v2b = "<RunHidden>k__BackingField"
        $v2c = "DownloadAndExecute"
        $v2d = "-CHECK & PING -n 2 127.0.0.1 & EXIT" wide
        $v2e = "england.png" wide
        $v2f = "Showed Messagebox" wide
    
    condition:
        all of ($v1*) or all of ($v2*)
    
}


rule VirusRat {
    meta:
        rule_group = "implant"
        implant = "VirusRat"
        
        description = "VirusRat implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900009"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.VirusRat.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.871143Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/VirusRat"
    
    strings:
        $string0 = "virustotal"
        $string1 = "virusscan"
        $string2 = "abccba"
        $string3 = "pronoip"
        $string4 = "streamWebcam"
        $string5 = "DOMAIN_PASSWORD"
        $string6 = "Stub.Form1.resources"
        $string7 = "ftp://{0}@{1}" wide
        $string8 = "SELECT * FROM moz_logins" wide
        $string9 = "SELECT * FROM moz_disabledHosts" wide
        $string10 = "DynDNS\\Updater\\config.dyndns" wide
        $string11 = "|BawaneH|" wide
    
    condition:
        all of them
    
}


rule LuxNet {
    meta:
        rule_group = "implant"
        implant = "LuxNet"
        
        description = "LuxNet implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900010"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.LuxNet.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.887006Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/LuxNet"
    
    strings:
        $a = "GetHashCode"
        $b = "Activator"
        $c = "WebClient"
        $d = "op_Equality"
        $e = "dickcursor.cur" wide
        $f = "{0}|{1}|{2}" wide
    
    condition:
        all of them
    
}


rule njRat {
    meta:
        rule_group = "implant"
        implant = "njRat"
        
        description = "njRat implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900011"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.njRat.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.905472Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/njRat"
    
    strings:
        $s1 = {7C 00 27 00 7C 00 27 00 7C} // |'|'|
        $s2 = "netsh firewall add allowedprogram" wide
        $s3 = "Software\\Microsoft\\Windows\\CurrentVersion\\Run" wide
        $s4 = "yyyy-MM-dd" wide
        $v1 = "cmd.exe /k ping 0 & del" wide
        $v2 = "cmd.exe /c ping 127.0.0.1 & del" wide
        $v3 = "cmd.exe /c ping 0 -n 2 & del" wide
    
    condition:
        all of ($s*) and any of ($v*)
    
}


rule Pandora {
    meta:
        rule_group = "implant"
        implant = "Pandora"
        
        description = "Pandora implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900012"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.Pandora.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.941490Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/Pandora"
    
    strings:
        $a = "Can't get the Windows version"
        $b = "=M=Q=U=Y=]=a=e=i=m=q=u=y=}="
        $c = "JPEG error #%d" wide
        $d = "Cannot assign a %s to a %s" wide
        $g = "%s, ProgID:"
        $h = "clave"
        $i = "Shell_TrayWnd"
        $j = "melt.bat"
        $k = "\\StubPath"
        $l = "\\logs.dat"
        $m = "1027|Operation has been canceled!"
        $n = "466|You need to plug-in! Double click to install... |"
        $0 = "33|[Keylogger Not Activated!]"
    
    condition:
        all of them
    
}


rule njrat: rat {
    meta:
        rule_group = "implant"
        implant = "njrat"
        
        description = "tested against NjRat versions 0.3.6 - 0.7d"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900013"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.dumpers.njRat.getConfig"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_state_change_date = "2017-11-17"
        al_state_change_user = "stevegaron-cse"
        al_status = "DEPLOYED"
        author = "Daniel Plohmann <daniel.plohmann<at>fkie.fraunhofer.de>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.956448Z"
        date = "2015-11-18"
        last_saved_by = "malware_dev"
        sample = "unpacked: 2b96518a66d251fedb39264e668f588c (0.7d)"
        type = "info"
        updated = "2015-11-18"
        version = "1"
    
    strings:
        $cnc_traffic_0 = {7C 00 27 00 7C 00 27 00 7C} // looks like: |'|'|
        $rights_0 = "netsh firewall add allowedprogram \"" wide
        $rights_1 = "netsh firewall delete allowedprogram \"" wide
    
    condition:
        (all of ($cnc_traffic_*)) and (all of ($rights_*))
    
}


rule darkcomet51: rat {
    meta:
        rule_group = "implant"
        implant = "darkcomet51"
        
        description = "DarkComet RAT version 5.1"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900015"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configparser = "DarkComet51"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = "CCIRC"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.858753Z"
        date = "2015-11-16"
        last_saved_by = "malware_dev"
    
    strings:
        $config = "D57ABA5857F0AFF67584605E90BE4665C9814BEEC7E"
    
    condition:
        any of them
    
}


rule PoisonIvy {
    meta:
        rule_group = "implant"
        implant = "PoisonIvy"
        
        description = "PoisonIvy implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900016"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.PoisonIvy.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:29.000508Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/PoisonIvy"
    
    strings:
        $stub = {04 08 00 53 74 75 62 50 61 74 68 18 04}
        $string1 = "CONNECT %s:%i HTTP/1.0"
        $string2 = "ws2_32"
        $string3 = "cks=u"
        $string4 = "thj@h"
        $string5 = "advpack"
    
    condition:
        $stub at 0x1620 and all of ($string*) or (all of them)
    
}


rule mraptor_oletools {
    meta:
        rule_group = "technique"
        technique = "Macros suspicious properties"
        
        description = "Macros with AutoExec and (Write or Execute) properties"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_910000"
        rule_version = "1"
        yara_version = "3.6"
        
        al_imported_by = "ekkerri"
        al_score = "500"
        al_status = "DEPLOYED"
        classification = "U"
        creation_date = "2018-03-13T13:57:03.042304Z"
        last_saved_by = "ekkerri"
        source = "OLETools MacroRaptor (decalage.info)"
    
    strings:
        //Detects common VBA strings
        $cs1 = "CreateObject"  nocase
        $cs2 = "WScript"  nocase
        $cs3 = "End Sub" fullword  nocase
        $cs4 = /Sub Auto[_]?Open/  nocase
        $macros = "Attribute VB_"
        //Suspicious strings RE mraptor
        $auto = /\b(Auto(Exec|_?Open|_?Close|Exit|New)|Document(_?Open|_Close|_?BeforeClose|Change|_New)|NewDocument|Workbook(_Open|_Activate|_Close)|\w+_(Painted|Painting|GotFocus|LostFocus|MouseHover|Layout|Click|Change|Resize|BeforeNavigate2|BeforeScriptExecute|DocumentComplete|DownloadBegin|DownloadComplete|FileDownload|NavigateComplete2|NavigateError|ProgressChange|PropertyChange|SetSecureLockIcon|StatusTextChange|TitleChange|MouseMove|MouseEnter|MouseLeave))\b/ nocase
        $write1 = /\b(Kill|ADODB\.Stream|WriteText|SaveAs|SaveAsRTF|SaveSetting|SetAttr)\b/ nocase
        $write2 = /\bOpen\b[^\n]+\b(Write|Append|Binary|Output|Random)\b/
        $execute1 = /(\bDeclare\b[^\n]+\bLib\b)/
        $execute2 = /\b(CreateObject|GetObject|SendKeys|MacScript)\b/ nocase
        $execute3 = /\b(S[hel]{4}|h[Sel]{4}|e[Shl]{4}|l[She]{4})\b/ nocase
        //Separate strings that should always be flagged
        $sus_write = /\b(FileCopy|CopyFile|CreateTextFile|VirtualAlloc|RtlMoveMemory|URLDownloadToFileA?|AltStartupPath|SaveToFile|FileSaveAs|MkDir|RmDir)\b/ nocase
        $sus_execute = /\b(FollowHyperlink|CreateThread|ShellExecute)\b/
    
    condition:
        ((2 of ($cs*) or $macros or al_tag contains "vbs")) and (any of ($sus*) or ($auto and (any of ($write*) or any of ($execute*))))
    
}


rule VBA_external_connections {
    meta:
        rule_group = "technique"
        technique = "External connections via VB script"
        
        description = "Strings in VB script that suggest external connections"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_910002"
        rule_version = "1"
        yara_version = "3.6"
        
        al_imported_by = "ekkerri"
        al_score = "500"
        al_status = "DEPLOYED"
        classification = "U"
        creation_date = "2018-03-13T13:57:03.060238Z"
        last_saved_by = "ekkerri"
    
    strings:
        //Detect common VBA strings
        $cs1 = "CreateObject" nocase
        $cs2 = "WScript" nocase
        $cs3 = "End Sub" fullword nocase
        $cs4 = /Sub Auto[_]?(Open|Close)/ nocase
        $macros = "Attribute VB_"
        //External connections
        $ex1 = "ConnectServer" nocase
        $ex2 = "InternetCloseHandle" nocase
        $ex3 = "InternetExplorerApplication" nocase
        $ex4 = "InternetOpenUrl" nocase
        $ex5 = "InternetReadFile" nocase
        $ex6 = "SetRequestHeader" nocase
        $ex7 = "User-Agent" nocase
        $ex8 = "wininet.dll" nocase
        $ex9reg = /http[s]?:\/\//
    
    condition:
        ((2 of ($cs*) or $macros) or al_tag contains "vbs") and any of ($ex*)
    
}


rule DarkComet {
    meta:
        rule_group = "implant"
        implant = "DarkComet"
        
        description = "DarkComet implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900001"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.DarkComet.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        author = " Kevin Breen <kevin@techanarchy.net>"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.735819Z"
        date = "2014/04"
        filetype = "exe"
        last_saved_by = "malware_dev"
        maltype = "Remote Access Trojan"
        ref = "http://malwareconfig.com/stats/DarkComet"
    
    strings:
        // Versions 2x
        $a1 = "#BOT#URLUpdate"
        $a2 = "Command successfully executed!"
        $a3 = "MUTEXNAME" wide
        $a4 = "NETDATA" wide
        // Versions 3x & 4x & 5x
        $b1 = "FastMM Borland Edition"
        $b2 = "%s, ClassID: %s"
        $b3 = "I wasn't able to open the hosts file"
        $b4 = "#BOT#VisitUrl"
        $b5 = "#KCMDDC"
    
    condition:
        (all of ($a*) or all of ($b*)) and not darkcomet51
    
}


rule darkcomet_rc4 {
    meta:
        rule_group = "implant"
        implant = "darkcomet_rc4"
        
        description = "darkcomet_rc4 implant"
        organisation = "CSE"
        poc = "malware_dev@cse"
        rule_id = "CSE_900014"
        rule_version = "1"
        yara_version = "3.4"
        
        al_configdumper = "al_services.alsvc_configdecoder.ext.RATDecoders.DarkComet.run"
        al_configparser = "GenericParser"
        al_imported_by = "malware_dev"
        al_status = "DEPLOYED"
        classification = "U"
        creation_date = "2017-02-27T18:32:28.919806Z"
        last_saved_by = "malware_dev"
    
    strings:
        // File 175e27f2e47674e51cb20d9daa8a30c4 @ 0x468438 (2015-11-16)
        $darkcomet_rc4 = { 55 8B EC 81 C4 E0 FB FF FF 53 56 57 33 DB 89 9D E0 FB FF FF 89 5D F4 89 5D F0 89 4D EC 89 55 F8 89 45 FC 8B 45 FC E8 ?? ?? ?? ?? 8B 45 F8 E8 ?? ?? ?? ?? 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 8B 45 F8 85 C0 74 05 83 E8 04 8B 00 85 C0 0F 84 3E 02 00 00 8B 45 FC 85 C0 74 05 83 E8 04 8B 00 85 C0 0F 84 2A 02 00 00 8D 95 E0 FB FF FF 8B 45 FC E8 ?? ?? ?? ?? 8B 95 E0 FB FF FF 8D 45 FC E8 ?? ?? ?? ?? 8B 55 F8 8B C2 85 C0 74 05 83 E8 04 8B 00 3D 00 01 00 00 7E 34 68 00 01 00 00 8D 45 F4 B9 01 00 00 00 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 04 8D 45 F8 E8 ?? ?? ?? ?? 8B D0 8B 45 F4 B9 00 01 00 00 E8 ?? ?? ?? ?? EB 42 8B DA 85 DB 74 05 83 EB 04 8B 1B 53 8D 45 F4 B9 01 00 00 00 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 04 8B 5D F8 85 DB 74 05 83 EB 04 8B 1B 8D 45 F8 E8 ?? ?? ?? ?? 8B D0 8B 45 F4 8B CB E8 ?? ?? ?? ?? 33 F6 8D 85 E4 FB FF FF 89 30 46 83 C0 04 81 FE 00 01 00 00 75 F2 33 DB 33 F6 8D 8D E4 FB FF FF 8B 7D F8 85 FF 74 05 83 EF 04 8B 3F 8B C6 99 F7 FF 8B 45 F4 0F B6 04 10 03 19 03 C3 25 FF 00 00 80 79 07 48 0D 00 FF FF FF 40 8B D8 0F B6 01 88 45 EB 8B 84 9D E4 FB FF FF 89 01 0F B6 45 EB 89 84 9D E4 FB FF FF 46 83 C1 04 81 FE 00 01 00 00 75 AE 33 DB 33 FF 8B 75 FC 85 F6 74 05 83 EE 04 8B 36 56 8D 45 F0 B9 01 00 00 00 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 04 8B 75 FC 85 F6 74 05 83 EE 04 8B 36 8D 45 FC E8 ?? ?? ?? ?? 8B D0 8B 45 F0 8B CE E8 ?? ?? ?? ?? 8B 45 FC 85 C0 74 05 83 E8 04 8B 00 48 85 C0 0F 8C 82 00 00 00 40 89 45 E4 33 F6 43 81 E3 FF 00 00 80 79 08 4B 81 CB 00 FF FF FF 43 03 BC 9D E4 FB FF FF 81 E7 FF 00 00 80 79 08 4F 81 CF 00 FF FF FF 47 0F B6 84 9D E4 FB FF FF 88 45 EB 8B 84 BD E4 FB FF FF 89 84 9D E4 FB FF FF 0F B6 45 EB 89 84 BD E4 FB FF FF 8B 84 9D E4 FB FF FF 03 84 BD E4 FB FF FF 25 FF 00 00 80 79 07 48 0D 00 FF FF FF 40 0F B6 84 85 E4 FB FF FF 8B 55 F0 30 04 32 46 FF 4D E4 75 84 8B 45 FC 85 C0 74 05 83 E8 04 8B 00 8B 55 EC 92 E8 ?? ?? ?? ?? 8B 5D FC 85 DB 74 05 83 EB 04 8B 1B 8B 45 EC E8 ?? ?? ?? ?? 8B 55 F0 8B CB E8 ?? ?? ?? ?? 33 C0 5A 59 59 64 89 10 68 ?? ?? ?? ?? 8D 85 E0 FB FF FF E8 ?? ?? ?? ?? 8D 45 F0 8B 15 ?? ?? ?? ?? B9 02 00 00 00 E8 ?? ?? ?? ?? 8D 45 F8 BA 02 00 00 00 E8 ?? ?? ?? ?? C3 E9 ?? ?? ?? ?? EB CD 5F 5E 5B 8B E5 5D C3 }
    
    condition:
        $darkcomet_rc4 and not darkcomet51
    
}

