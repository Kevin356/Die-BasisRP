/*
	File: welcome.sqf
	Author: TheTotenkopf | Edit Kevin
	Date: 07.03.2016
*/

//Start erst nach Spawn
waitUntil{ !isNull(findDisplay 38500)};
waitUntil{ isNull(findDisplay 38500)};

//Sound
playSound "welcome";

_onScreenTime = 2;

_role1 = "Wilkommen bei";
_role1names = ["Die-BasisRP"];
_role2 = "Head Admins";
_role2names = ["Bumsi, Beni, Kevin"];
_role3 = "Admins";
_role3names = ["Handy, Müller, Baker, Joe"];
_role4 = "Map editiert von ";
_role4names = ["Die Bastler"];
_role8 = "TeamSpeak";
_role8names = ["5.9.115.237:40005"];
_role9 = "Forum";
_role9names = ["Die-BasisRp.de"];
_role10 = "Server Restartzeiten";
_role10names = ["00:00, 04:00, 08:00, 12:00, 16:00, 20:00 Uhr"];

{
uiSleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#1866c7' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
uiSleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names]
];