/*
	File: fn_setCheckDate.sqf
	Author: Thelia
	
	Description:
	Calls script server sided if vehicle is not rented
*/
params [
	[ "_vehicle", ObjNull, [ObjNull] ]
];

if( !(playerSide isEqualTo independent) ) exitWith {};

if( _vehicle getVariable["rentalVehicle",false] ) then {
	_vehicle setVariable["checkdate", "rentalVehicle", true];
} else {
	[[0, _vehicle], "TON_fnc_handleCheckDate", false, false] spawn life_fnc_MP;
	hint "Der TÜV wurde neu vergeben.";
};