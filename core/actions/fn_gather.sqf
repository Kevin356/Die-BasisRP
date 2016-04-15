/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["arte_2","arte","apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","cocaine_2","weed_1","trauben","roggen","hefe","hopfen","meth_1","baumwolle_1","wood_1","reifen_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1 + (round random 3);};
	case (_zone in ["cocaine_1","cocaine_2"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1 + (round random 3);};
	case (_zone in ["meth_1"]): {_gather = "methu"; _val = 1 + (round random 3);};
	case (_zone in ["trauben"]): {_gather = "trauben"; _val = 3 + (round random 6);};
	case (_zone in ["reifen_1"]): {_gather = "reifenu"; _val = 1 + (round random 3);};
	case (_zone in ["roggen"]): {_gather = "roggen"; _val = 1 + (round random 4);};
	case (_zone in ["wood_1"]): {_gather = "holzu"; _val = 1 + (round random 4);};
	case (_zone in ["baumwolle_1"]): {_gather = "baumwolleu"; _val = 1 + (round random 4);};
	case (_zone in ["hefe"]): {_gather = "hefe"; _val = 1 + (round random 5);};
	case (_zone in ["hopfen"]): {_gather = "hopfen"; _val = 1 + (round random 6);};
	case (_zone in ["arte","arte_2"]): {_gather = "arteu"; _val = 1 + (round random 3);};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hintSilent "Inventar Voll"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	uiSleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %1 %2x erfarmt.",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
