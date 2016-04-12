#include <macro.h>
/*
	File: fn_clothing_söldner.sqf
	Author: TheTotenkopf
	
	Description:
	Master config file for Söldner clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Söldner Kleider Laden"];

_ret = [];
switch (_filter) do
{
	//Uniforms
    case 0:
    {
        if(__GETC__(life_donator) == 3) then
        {
			_ret set[count _ret,["U_I_CombatUniform_tshirt",nil,3500]];
			_ret set[count _ret,["U_I_pilotCoveralls",nil,3500]];
			_ret set[count _ret,["U_I_OfficerUniform",nil,3500]];
			_ret set[count _ret,["U_I_GhillieSuit",nil,15000]];
			_ret set[count _ret,["U_I_Wetsuit",nil,200]];
        };
    };
	
	//Hats
	case 1:
	{
		if(__GETC__(life_donator) == 3) then
		{
			_ret set[count _ret,["H_Booniehat_indp",nil,1000]];
			_ret set[count _ret,["H_CrewHelmetHeli_I",nil,15000]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,100],
			["G_Balaclava_oli",nil,100],
			["G_Shades_Blue",nil,100],
			["G_Sport_Blackred",nil,100],
			["G_Sport_Checkered",nil,100],
			["G_Sport_Blackyellow",nil,100],
			["G_Sport_BlackWhite",nil,100],
			["G_I_Diving",nil,100],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,100],
			["G_Combat",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_donator) == 3) then
		{
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,22500]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,22500]];
			_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,22500]];
			_ret set[count _ret,["V_BandollierB_rgr",nil,22500]];
			_ret set[count _ret,["V_RebreatherIA",nil,22500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_dgtl",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_AssaultPack_dgtl",nil,500],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};

_ret;