#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		if(license_cop_SEK && playerSide == west) then {
		_return = [
					["cop_spawn_1","Zentrale Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["cop_spawn_2","Dienststelle Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
					["cop_spawn_3","Dienststelle Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Alpha","Checkpoint Alpha","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Beta","Checkpoint Beta","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Highway","Autobahnpolizei","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_SEK","SEK","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
				];
		};
		
		if(!license_cop_SEK && playerSide == west) then {
		_return = [
					["cop_spawn_1","Zentrale Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["cop_spawn_2","Dienst.Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
					["cop_spawn_3","Dienst. Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Alpha","Check.Alpha","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Beta","Check.Beta","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["cop_spawn_Highway","Autobahnpolizei","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
				];
		};
	};
	
	case civilian:
	{
		if(license_civ_rebel && playerSide == civilian) then {
		_return = [
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_1","Rebellen HQ N","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_3","Rebellenbasis Süd","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_training","Schiessplatz","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		if(!license_civ_rebel && playerSide == civilian) then {
		_return = [
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		if(__GETC__(life_donator) == 3) then 
		{
			_return = _return + [
				["so_spawn_1","Söldner HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(__GETC__(life_donator) == 1) then
		{
			_return = _return + [
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(__GETC__(life_donator) == 2) then
		{
			_return = _return + [
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Arzt HQ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Arzt Luftrettung","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1_1","Lazarett Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1_1_1","Lazarett Sofia","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_1","ADAC West","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["adac_spawn_2","ADAC Ost","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
		];
	};
};

_return;