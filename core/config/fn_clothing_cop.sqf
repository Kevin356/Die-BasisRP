#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Polizei Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
    case 0:
    {
        _ret set[count _ret,["U_Rangemaster","Ordnungsamt Uniform",35]];
		if (__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret, ["U_B_CombatUniform_mcam_vest", "Standart Uniform", 500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Einsatz Uniform",500]];
			_ret set[count _ret,["U_B_Wetsuit","Taucher Anzug",500]];
		};
        if(__GETC__(life_coplevel) > 6) then
        {
			_ret set[count _ret,["U_B_GhillieSuit","Tarnkleidung",600]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK Uniform",600]];
        };
		if(license_cop_SEK) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK Uniform",600]];
		};
    };
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Cap_police",nil,100]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Cap_police",nil,100]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]]; 
			//_ret set[count _ret,["H_Beret_02",nil,100]];
			//_ret set[count _ret,["H_Watchcap_blk",nil,100]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_02",nil,100]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
			_ret set[count _ret,["H_CrewHelmetHeli_B","SEK Helm I",100]];
			_ret set[count _ret,["H_HelmetB_black","SEK Helm II",100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,100]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_HelmetIA",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,20]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_B_Diving",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Aviator",nil,75]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
			_ret set[count _ret,["G_Balaclava_blk",nil,500]];
		};
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,200]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_RebreatherB",nil,250]];
			_ret set[count _ret,["V_TacVest_blk_POLICE","Polizeiweste",250]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["V_TacVestIR_blk","Einsatzweste",300]];
		};
		if(__GETC__(life_coplevel) > 9) then
        {
			_ret set[count _ret,["V_PlateCarrier1_blk","SEK Weste",400]];
        };
		if(license_cop_SEK) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","SEK Weste",400]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_AssaultPack_cbr",nil,25]];
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["B_Kitbag_cbr",nil,50]];
			_ret set[count _ret,["B_FieldPack_cbr",nil,75]];
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,100]];
			_ret set[count _ret,["B_Bergen_sgg",nil,125]];
			_ret set[count _ret,["B_Carryall_cbr",nil,150]];
			_ret set[count _ret,["B_FieldPack_cbr_Ammo",nil,175]];
			_ret set[count _ret,["B_Carryall_mcamo",nil,200]];
			_ret set[count _ret,["B_Carryall_oucamo",nil,225]];
			_ret set[count _ret,["B_Bergen_blk",nil,250]];
		};
	};
};

_ret;