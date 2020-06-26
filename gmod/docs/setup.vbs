'Extract
Set objShell = WScript.CreateObject ("WScript.Shell")
objShell.Run """C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\bin\gmad.exe"" extract -file ""C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\addons\custom_roles_for_ttt_1215502383.gma"""

WScript.Sleep 5000

'Download replacement init.lua'
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "https://hwkerr.github.io/info/gmod/docs/init.lua", False
xHttp.Send

with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "c:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\addons\custom_roles_for_ttt_1215502383\gamemodes\terrortown\gamemode\init.lua", 2 '//overwrite
end with

'Download replacement config.cfg'
Set xHttp = createobject("Microsoft.XMLHTTP")
Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "https://hwkerr.github.io/info/gmod/docs/config.cfg", False
xHttp.Send

with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "c:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\config.cfg", 2 '//overwrite
end with
