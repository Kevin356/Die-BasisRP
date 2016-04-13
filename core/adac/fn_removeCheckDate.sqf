/*
	File: fn_removeCheckDate.sqf
	Author: Thelia
	
	Description:
	Calls script server sided if vehicle is not rented
*/
params [
	[ "_vehicle", ObjNull, [ObjNull] ]
];

if( !(playerSide in [west,independent]) ) exitWith {};

if( !(_vehicle getVariable["rentalVehicle", false]) ) then {
	[[1, _vehicle], "TON_fnc_handleCheckDate", false, false] spawn life_fnc_MP;
	_vehicle setVariable["checkdate", "00.00.0000", true];
	hint "Du hast den TÜV entzogen";
};