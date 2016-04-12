#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		switch(true) do
		{
			default
			{
				["Bau Menü",
					[
						["hgun_Pistol_Signal_F", ["life_inv_ironr",10,"life_inv_copperr",10,"life_inv_kunstoff",2]],
						["hgun_P07_F", ["life_inv_ironr",5,"life_inv_copperr",4,"life_inv_kunstoff",2]],
						["hgun_ACPC2_F", ["life_inv_ironr",7,"life_inv_copperr",5,"life_inv_kunstoff",2]],
						["hgun_PDW2000_F", ["life_inv_ironr",2,"life_inv_copperr",3,"life_inv_kunstoff",2]],
						["arifle_Katiba_F", ["life_inv_copperr",2,"life_inv_ironr",3,"life_inv_kunstoff",3]],
						["arifle_SDAR_F", ["life_inv_copperr",4,"life_inv_ironr",3,"life_inv_kunstoff",3]],
						["arifle_TRG21_F", ["life_inv_copperr",5,"life_inv_ironr",3,"life_inv_kunstoff",3]],
						["SMG_01_F", ["life_inv_copperr",7,"life_inv_ironr",6,"life_inv_kunstoff",3]],
						["SMG_02_F", ["life_inv_copperr",7,"life_inv_ironr",5,"life_inv_kunstoff",3]],
						["arifle_MXM_F", ["life_inv_copperr",12,"life_inv_ironr",12,"life_inv_kunstoff",8]],
						["arifle_Mk20_F", ["life_inv_copperr",10,"life_inv_ironr",8,"life_inv_kunstoff",5]],
						["100Rnd_65x39_caseless_mag", ["life_inv_copperr",9,"life_inv_ironr",7,"life_inv_kunstoff",3]],
						["30Rnd_556x45_Stanag", ["life_inv_copperr",6,"life_inv_ironr",4,"life_inv_kunstoff",2]],
						["30Rnd_65x39_caseless_mag", ["life_inv_copperr",6,"life_inv_ironr",5,"life_inv_kunstoff",2]],
						["30Rnd_65x39_caseless_green", ["life_inv_copperr",6,"life_inv_ironr",5,"life_inv_kunstoff",2]],
						["16Rnd_9x21_Mag", ["life_inv_copperr",4,"life_inv_ironr",4,"life_inv_kunstoff",2]],
						["6Rnd_GreenSignal_F", ["life_inv_copperr",10,"life_inv_ironr",10,"life_inv_kunstoff",2]],
						["6Rnd_RedSignal_F", ["life_inv_copperr",10,"life_inv_ironr",10,"life_inv_kunstoff",2]],
						["U_O_FullGhillie_sard", ["life_inv_seide",18,"life_inv_baumwollep",15]],
						["U_I_FullGhillie_ard", ["life_inv_seide",18,"life_inv_baumwollep",15]],
						["U_I_FullGhillie_lsh", ["life_inv_seide",18,"life_inv_baumwollep",15]],
						["U_B_FullGhillie_sard", ["life_inv_seide",18,"life_inv_baumwollep",15]],
						["U_NikosAgedBody", ["life_inv_seide",5,"life_inv_baumwollep",6]],
						["U_I_G_Story_Protagonist_F", ["life_inv_seide",5,"life_inv_baumwollep",15]],
						["U_B_PilotCoveralls", ["life_inv_seide",5,"life_inv_baumwollep",8]],
						["H_Bandanna_khk_hs", ["life_inv_seide",3,"life_inv_baumwollep",5]],
						["H_PilotHelmetHeli_B", ["life_inv_seide",1,"life_inv_baumwollep",2,"life_inv_kunstoff",1]]
						
					]
				];
			};
		};
	};
};
