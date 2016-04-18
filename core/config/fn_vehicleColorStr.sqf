/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_SUV_01_F":																	//SUV
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Silber"};
			case 3: {_color = "Orange / Schwarz"};
			case 4: {_color = "Bifi"};
			case 5: {_color = "Camo"};
			case 6: {_color = "Pokemon"};
			case 7: {_color = "Hello Kitty"};
			case 8: {_color = "Monster Energy"};
			case 9: {_color = "Star Wars"};
			case 10: {_color = "e-Sports"};
			case 11: {_color = "Medic"};
			case 12: {_color = "Polizei"};
			case 13: {_color = "SEK"};
		};
	};
	
	case "C_Offroad_01_F":																//Offroad
	{
		switch (_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Beige"};
			case 2: {_color = "Weiss"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Dunkelrot"};
			case 5: {_color = "Custom-Blau"};
			case 6: {_color = "Dodge"};
			case 7: {_color = "Rockstar Gelb"};
			case 8: {_color = "Rockstar Lila"};
			case 9: {_color = "Weedfarmer"};
			case 10: {_color = "Monster Energy"};
			case 11: {_color = "Medic"};
			case 12: {_color = "Polizei"};
			case 13: {_color = "Schwarz"};
		};
	};
	
	case "C_Offroad_01_repair_F":														//Offroad Repair
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	case "C_Hatchback_01_F":															//Hatchback
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Beige"};
			case 2: {_color = "Grün"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Custom-Blau"};
			case 5: {_color = "Custom-Beige"};
			case 6: {_color = "Gelb"};
			case 7: {_color = "Silber"};
			case 8: {_color = "Dunkelgrau"};
			case 9: {_color = "Schwarz"};
			case 10: {_color = "Ken Block"};
			case 11: {_color = "Polizei"};
		};
	};
	
	case "C_Hatchback_01_sport_F":														//Hatchback Sport
	{
		switch (_index) do
		{
			case 0: {_color = "Custom-Rot"};
			case 1: {_color = "Custom-Blau"};
			case 2: {_color = "Custom-Orange"};
			case 3: {_color = "Custom-Weiss"};
			case 4: {_color = "Custom-Beige"};
			case 5: {_color = "Custom-Grün"};
			case 6: {_color = "Ken Block"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "SEK"};
			case 9: {_color = "Schwarz"};
		};
	};
	
		case "C_Van_01_box_F":															//Van Box
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Medic"};
		};
	};
	
		case "C_Van_01_transport_F":													//Van Transport
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Rot"};
		};
	};

		case "C_Van_01_fuel_F":															//Van Treibstoff
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Rot"};
		};
	};

		case "B_Quadbike_01_F":															//Quadbike
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Blau"};
			case 2: {_color = "Rot"};
			case 3: {_color = "White"};
			case 4: {_color = "Polizei"};
		};
	};

		case "B_MRAP_01_F":																//Hunter
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "SEK"};
		};
	};
	
		case "O_MRAP_02_F":																//Ifrit
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};

		case "I_MRAP_03_F":																//Strider
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "SEK"};
		};
	};

		case "I_Truck_02_covered_F":													//Zamak Abgedeckt
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Red Bull"};
		};
	};

		case "I_Truck_02_transport_F":													//Zamak Transport
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Red Bull"};
		};
	};

		case "B_Truck_01_box_F":														//Hemmt Box
	{
		switch (_index) do
		{
			case 0: {_color = "Grün"};
			case 1: {_color = "Devil"};
			case 2: {_color = "Hello Kitty"};
		};
	};

		case "B_Truck_01_transport_F":													//Hemmt Transport
	{
		switch (_index) do
		{
			case 0: {_color = "Grün"};
			case 1: {_color = "Devil"};
			case 2: {_color = "Hello Kitty"};
			case 3: {_color = "ADAC"};
		};
	};

		case "B_Truck_01_covered_F":													//Hemmt Abgedeckt
	{
		switch (_index) do
		{
			case 0: {_color = "Grün"};
			case 1: {_color = "Devil"};
			case 2: {_color = "Hello Kitty"};
		};
	};

		case "B_Truck_01_ammo_F":														//Hemmt Munition
	{
		switch (_index) do
		{
			case 0: {_color = "Grün"};
			case 1: {_color = "Devil"};
			case 2: {_color = "Hello Kitty"};
		};
	};
	
		case "O_Truck_03_transport_F":													//Tempest Transport
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};

		case "O_Truck_03_covered_F":													//Tempest Abgedeckt
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};

		case "O_Truck_03_device_F":														//Tempest Gerät
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};

		case "I_Heli_Transport_02_F":													//Mohawk
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "B_Heli_Light_01_F":															//Hummingbird
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Blau"};
			case 2: {_color = "Elliptical"};
			case 3: {_color = "Furious"};
			case 4: {_color = "Speedy"};
			case 5: {_color = "Vrana"};
			case 6: {_color = "Digital"};
			case 7: {_color = "Red Bull"};
			case 8: {_color = "Hello Kitty"};
			case 9: {_color = "Medic"};
			case 10: {_color = "Polizei"};
		};
	};

	case "O_Heli_Light_02_unarmed_F":													//Orca
	{
		switch (_index) do
		{
			case 0: {_color = "Blau-Weiss"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Medic"};
			case 3: {_color = "ADAC"};
			case 4: {_color = "Polizei"};
		};
	};

		case "I_Heli_Light_03_unarmed_F":												//Hellcat
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "SEK"};
		};
	};

		case "B_Heli_Transport_01_F":													//Ghosthawk
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "SEK"};
		};
	};

		case "B_Heli_Transport_03_unarmed_F":											//Huron
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Camo"};
		};
	};

		case "O_Heli_Transport_04_box_black_F":											//Taru Box
	{
		switch (_index) do
		{
			case 0: {_color = "Air Force"};
		};
	};
};


_color;