/*
	File: fn_adacLights.sqf
	Author: Kevin
*/
Private ["_vehicle","_lightYellow","_lightYellow","_lightleft","_lightright","_leftYellow"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightYellow = [0.1, 0.1, 20];
_lightYellow = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
uiSleep 0.2;
_lightleft setLightColor _lightYellow; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
	case "B_Truck_01_transport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1.2, 4.85, -0.45]];
	};
	
	case "C_Offroad_01_repair_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
uiSleep 0.2;
_lightright setLightColor _lightYellow; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 

switch (typeOf _vehicle) do
{
	case "B_Truck_01_transport_F":
	{
		_lightright lightAttachObject [_vehicle, [1.25, 4.85, -0.45]];
	};
	
	case "C_Offroad_01_repair_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftYellow = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftYellow) then  
	{  
		_leftYellow = false;  
		_lightright setLightBrightness 0.0;  
		uiSleep 0.05;
		_lightleft setLightBrightness 6;  
	}  
		else  
	{  
		_leftYellow = true;  
		_lightleft setLightBrightness 0.0;  
		uiSleep 0.05;
		_lightright setLightBrightness 6;  
	};  
	uiSleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;