/*
	File: fn_getCheckDate.sqf
	Author: Thelia

	Description:
	Shows the player if the vehicle is checked or not
*/
private["_vehCheckDate"];
params [
	[ "_vehicle", ObjNull, [ObjNull] ]
];
if( isNull _vehicle ) exitWith {};

_vehCheckDate = _vehicle getVariable["checkdate", "00.00.0000"];

if( _vehCheckDate isEqualTo "00.00.0000" ) then {
	hint "Das Fahrzeug hat keinen gültigen TÜV";
} else {
	if( _vehicle getVariable["rentalVehicle", false] ) then {
		hint "Es handelt sich um einen Mietwagen, diese verfügen immer über gültigen TÜV";
	} else {
		hint format["Das Fahrzeug verfügt über gültigen TÜV \nAusgestellt am: %1", _vehCheckDate];
	};
};