/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,3500],
			["U_I_G_Story_Protagonist_F",nil,3500],
			["U_BG_Guerrilla_6_1",nil,3500],
			["U_O_CombatUniform_ocamo",nil,3500],
			["U_O_CombatUniform_oucamo",nil,3500],
			["U_I_G_resistanceLeader_F",nil,3500],
			["U_O_SpecopsUniform_ocamo",nil,3500],
			["U_O_PilotCoveralls",nil,3500],
			["U_IG_leader","Guerilla Leader",3500],
			["U_O_GhillieSuit",nil,15000],
			["U_B_GhillieSuit",nil,15000],
			["U_I_GhillieSuit",nil,15000],
			["U_B_CTRG_1",nil,3500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,1000],
			["H_Shemag_olive",nil,1000],
			["H_ShemagOpen_khk",nil,1000],
			["H_HelmetO_ocamo",nil,1000],
			["H_MilCap_oucamo",nil,1000],
			["H_Bandanna_camo",nil,1000],
			["H_Watchcap_blk",nil,1000],
			["H_HelmetB",nil,15000],
			["H_HelmetB_plain_mcamo",nil,15000],
			["H_HelmetIA",nil,15000],
			["H_CrewHelmetHeli_O",nil,25000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,100],
			["G_Shades_Blue",nil,100],
			["G_Sport_Blackred",nil,100],
			["G_Sport_Checkered",nil,100],
			["G_Sport_Blackyellow",nil,100],
			["G_Sport_BlackWhite",nil,100],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,100],
			["G_Combat",nil,100],
			["G_Bandanna_beast",nil,500],
			["G_Bandanna_oli",nil,500],
			["G_Bandanna_aviator",nil,500],
			["G_Balaclava_oli",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,17500],
			["V_BandollierB_cbr",nil,15000],
			["V_HarnessO_brn",nil,10000],
			["V_PlateCarrier_Kerry",nil,17500],
			["V_TacVest_brn",nil,20000],
			["V_Chestrig_khk",nil,22500],
			["V_PlateCarrierH_CTRG",nil,30000],
			["V_PlateCarrierIA2_dgtl",nil,45000],
			["V_PlateCarrierIAGL_oli",nil,60000],
			["V_PlateCarrierSpec_mtp",nil,80000],
			["V_PlateCarrierGL_mtp",nil,100000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};