#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
																								//Cop Shops
	case "cop_pma":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) <1): {"Du bist kein Polizeimeisteranwaerter"};
			default
			{
				["Polizeimeisteranwärter",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["optic_ACO_smg",nil,250],					//ACO Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125]					//Sting Magazine
					]
				];
			};
		};
	};
	
	case "cop_pm":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 2): {"Du bist noch kein Polizeimeister!"};
			default
			{
				["Polizeimeister",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125]		//MXC Magazine
					]
				];
			};
		};
	};
	
	case "cop_pom":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 3): {"Du bist noch kein Polizeiobermeister!"};
			default
			{
				["Polizeiobermeister",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["SmokeShellYellow",nil,125]				//Smoke Gelb
					]
				];
			};
		};
	};
	
	case "cop_pk":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 4): {"Du bist noch kein Polizeikommissar!"};
			default
			{
				["Polizeikommissar",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_pok":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 5): {"Du bist noch kein Polizeioberkommissar!"};
			default
			{
				["Polizeioberkommissar",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_phk":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 6): {"Du bist noch kein Polizeihauptkommissar!"};
			default
			{
				["Polizeihauptkommissar",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_ephk":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 7): {"Du bist noch kein Erster Polizeihauptkommissar!"};
			default
			{
				["Erster Polizeihauptkommissar",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_SOS",nil,750],						//SOS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_pr":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 8): {"Du bist noch kein Polizeirat!"};
			default
			{
				["Polizeirat",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",Gummiegeschoss,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_por":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 9): {"Du bist noch kein Polizeioberrat!"};
			default
			{
				["Polizeioberrat",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["B_UavTerminal",nil,1000],					//Dronensteuerung
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",nil,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_pd":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 10): {"Du bist noch kein Polizeidirektor!"};
			default
			{
				["Polizeidirektor",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["B_UavTerminal",nil,1000],					//Dronensteuerung
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",nil,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_ltdpd":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 11): {"Du bist noch kein Leitender Polizeidirektor!"};
			default
			{
				["Leitender Polizeidirektor",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["B_UavTerminal",nil,1000],					//Dronensteuerung
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",nil,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_dbp":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 12): {"Du bist noch kein Direktor der Bundespolizei!"};
			default
			{
				["Direktor der Bundespolizei",
					[
						["ItemWatch",nil,100],						//Uhr
						["ItemCompass",nil,100],					//Kompass
						["ItemMap",nil,100],						//Map
						["Binocular",nil,150],						//Ferngläser
						["Rangefinder",nil,100],					//Entfernungsmesser
						["ItemGPS",nil,100],						//GPS
						["B_UavTerminal",nil,1000],					//Dronensteuerung
						["ToolKit",nil,250],						//Werkzeugkasten
						["Medikit",nil,1000],						//Erste Hilfe Kasten
						["NVGoggles_OPFOR",nil,2000],				//Nachtsichtgerät
						["hgun_Pistol_heavy_01_snds_F",nil,1000],	//Taser
						["SMG_02_ACO_F",nil,1000],					//Sting
						["arifle_SDAR_F",nil,2750],					//SDAR
						["arifle_MXC_Black_F",nil,2250],			//MXC
						["arifle_MX_Black_F",nil,2500],				//MX
						["arifle_MX_Black_F",nil,2750],				//MX Granatenwerfer
						["arifle_MXM_Black_F",nil,2750],			//MXM
						["arifle_MX_SW_Black_F",nil,3000],			//MX SW
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["srifle_DMR_02_F",nil,15000],				//MAR 10
						["launch_RPG32_F","Destroyer",5000],		//Granatenwerfer
						["optic_MRD",nil,500],						//MRD Visier
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["optic_LRPS",nil,750],						//LRPS Visier
						["acc_flashlight",nil,500],					//Taschenlampe
						["acc_pointer_IR",nil,500],					//Laserpointer
						["muzzle_snds_acp",nil,500],				//Schalldämpfer Taser
						["muzzle_snds_L",nil,125],					//Schalldämpfer Sting
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["muzzle_snds_338_black",nil,125],			//Schalldämpfer .338
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["11Rnd_45ACP_Mag",nil,125],				//Taser Magazine
						["30Rnd_9x21_Mag",nil,125],					//Sting Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,125],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["30Rnd_65x39_caseless_mag",nil,125],		//MXC Magazine
						["30Rnd_65x39_caseless_mag_Tracer",nil,125],//MXC Magazine Tracer
						["100Rnd_65x39_caseless_mag",nil,200],		//MX SW 100
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],//MX SW 100 Tracer
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["10Rnd_338_Mag",nil,250],					//MAR 10 Magazine
						["RPG32_F","Destroyermuni",5000],			//Granatenwerfer Munition
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000],	//Rauchgranaten
						["SmokeShellYellow",nil,125],				//Smoke Gelb
						["SmokeShellRed",nil,125],					//Smoke Rot
						["SmokeShellGreen",nil,125],				//Smoke Grün
						["3Rnd_SmokeRed_Grenade_shell",nil,125],	//Smoke-GL Rot
						["3Rnd_SmokeGreen_Grenade_shell",nil,125],	//Smoke-GL Grün
						["3Rnd_UGL_FlareWhite_F",nil,125]			//Smoke-GL Weiß
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (!license_cop_SEK): {"Du bist noch nicht im SEK!"};
			default
			{
				["SEK",
					[
						["B_UavTerminal",nil,1000],					//Dronensteuerung
						["Rangefinder",nil,100],					//Entfernungsmesser
						["srifle_EBR_F",nil,3000],					//MK18
						["srifle_DMR_03_F",nil,3000],				//MK 1
						["srifle_DMR_03_tan_F",nil,3000],			//MK 1 Tarnung
						["srifle_DMR_02_F",nil,15000],				//MAR 10
						["srifle_DMR_06_olive_F",nil,10000],		//MK14
						["LMG_Mk200_F",nil,5000],					//MK 200
						["arifle_SDAR_F",nil,2000],					//SDAR
						["optic_ACO_smg",nil,125],					//ACO Visier
						["optic_Holosight_smg",nil,500],			//Holosight Visier
						["optic_Arco",nil,500],						//ARCO Visier
						["optic_Hamr",nil,500],						//RCO Visier
						["optic_MRCO",nil,500],						//MRCO Visier
						["optic_DMS",nil,500],						//DMS Visier
						["optic_NVS",nil,750],						//NVS Visier
						["optic_AMS",nil,1000],						//AMS Visier
						["optic_AMS_snd",nil,1000],					//AMS Sand Visier
						["optic_KHS_blk",nil,750],					//Kahila Visier
						["optic_KHS_tan",nil,750],					//Kahila Tarnung Visier
						["optic_SOS",nil,750],						//SOS Visier
						["optic_LRPS",nil,750],						//LRPS Visier
						["muzzle_snds_H",nil,125],					//Schalldämpfer 6.5mm
						["muzzle_snds_B",nil,125],					//Schalldämpfer 7.62mm
						["muzzle_snds_338_black",nil,125],			//Schalldämpfer .338
						["bipod_01_F_blk",nil,2500],				//Zweibein
						["bipod_01_F_snd",nil,2500],				//Zweibein Sand
						["20Rnd_556x45_UW_mag",nil,125],			//SDAR Magazine
						["20Rnd_762x51_Mag",nil,250],				//MK18 Magazine
						["10Rnd_338_Mag",nil,250],					//MAR 10 Magazine
						["200Rnd_65x39_cased_Box",nil,250],			//MK200 Magazine
						["200Rnd_65x39_cased_Box_Tracer",nil,250],	//MK200 Magazine Tracer
						["HandGrenade_Stone","Flashbang",1700],		//Blendgranate
						["SmokeShellBlue","CE-Gas",2000],			//CE-Gas
						["SmokeShellOrange","Rauchgranaten",2000]	//Rauchgranaten
					]
				];
			};
		};
	};
	
																													// Sanitäter / ADAC
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein ADAC"};
			case (__GETC__(life_mediclevel) < 6): {"Du kannst erst als ADAC hier Zugreifen !"}; 
			default {
				["ADAC Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_yellow","Licht",10]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter"};
			case (__GETC__(life_mediclevel) < 1): {"Du kannst erst als Sanitäter hier Zugreifen !"}; 
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red","Licht",10]
					]
				];
			};
		};
	};
	
																													// Zivilisten
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist im Dienst!"};
			case (!license_civ_rebel): {"Du besitz keine Rebellen Lizenz!"};
			default
			{
				["Mohammed's Waffen Laden",
					[
						["Rangefinder",nil,5000],					//Entfernungsmesser
						["NVGoggles_INDEP",nil,2500],				//Nachtsichtgerät
						["arifle_Katiba_F",nil,200000],				//Katiba
						["SMG_01_F",nil,90000],						//Vermin
						["arifle_SDAR_F",nil,150000],				//SDAR
						["arifle_TRG20_F",nil,150000],				//TRG20
						["arifle_MXC_F",nil,250000],				//MXC
						["arifle_MX_F",nil,300000],					//MX
						["arifle_MXM_F",nil,450000],				//MXM
						["srifle_DMR_03_khaki_F",nil,450000],		//MK1 EMR
						//["srifle_DMR_03_tan_F",nil,450000],		//MK1 EMR
						["srifle_DMR_03_multicam_F",nil,450000],	//MK1 EMR
						["srifle_DMR_03_woodland_F",nil,450000],	//MK1 EMR
						["srifle_DMR_01_F",nil,450000],				//Rahim
						["srifle_DMR_06_camo_F",nil,450000],		//MK14
						["srifle_DMR_02_camo_F",nil,600000],		//MAR 10
						["optic_ACO_grn",nil,7500],					//ACO Visier
						["optic_Holosight_smg",nil,7500],			//Holosight Visier
						["optic_Arco",nil,25000],					//ARCO Visier
						["optic_Hamr",nil,25000],					//RCO Visier
						["optic_MRCO",nil,25000],					//MRCO Visier
						["optic_DMS",nil,120000],					//DMS Visier
						["optic_AMS",nil,120000],					//AMS Visier
						["optic_KHS_blk",nil,120000],				//Kahila Visier
						["optic_SOS",nil,160000],					//SOS Visier
						["optic_LRPS",nil,160000],					//LRPS Visier
						["optic_NVS",nil,200000],					//NVS Visier
						["30Rnd_65x39_caseless_green",nil,1000],	//Katiba Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],		//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,1500],			//SDAR Magazine
						["30Rnd_556x45_Stanag",nil,1750],			//TRG20 Magazine
						["30Rnd_65x39_caseless_mag",nil,1000],		//MX Magazine
						["20Rnd_762x51_Mag",nil,3000],				//MK Magazine
						["10Rnd_762x54_Mag",nil,3000],				//Rahim Magazine
						["10Rnd_338_Mag",nil,10000],				//MAR10 Magazine
						["acc_flashlight",nil,3000],				//Taschenlampe
						//["muzzle_snds_acp",nil,200000],			//Schalldämpfer 45 ACP
						//["muzzle_snds_L",nil,200000],				//Schalldämpfer 9mm
						//["muzzle_snds_M",nil,200000],				//Schalldämpfer 5.56mm
						//["muzzle_snds_H",nil,200000],				//Schalldämpfer 6.5mm
						//["muzzle_snds_B",nil,200000],				//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,100000],				//Nato Schwarz
						["bipod_01_F_snd",nil,100000]				//Nato Sand
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Pistol_heavy_02_F",nil,25000],		//Zubr .45
						["hgun_Rook40_F",nil,30000],				//Rook-40
						["hgun_ACPC2_F",nil,35000],					//ACP-C2 .45
						["hgun_PDW2000_F",nil,40000],				//PDW
						["SMG_01_F",nil,90000],						//Vermin
						["V_Rangemaster_belt",nil,5000],			//Waffengurt
						["V_Press_F",nil,20000],					//Presseweste
						["6Rnd_45ACP_Cylinder",nil,500],			//Zubr .45 Magazin
						["16Rnd_9x21_Mag",nil,750],					//Rook-40 Magazin
						["9Rnd_45ACP_Mag",nil,750],					//ACP-C2 .45 Magazin
						["11Rnd_45ACP_Mag",nil,750],                //ACP-C2 .45 Magazin
						["30Rnd_45ACP_Mag_SMG_01",nil,750],			//PDW++Sting Magazin
						["30Rnd_45ACP_Mag_SMG_01",nil,750],		//Vermin Magazine
						["optic_Aco",nil,2500],						//ACO Visier
						["optic_Holosight",nil,2500],				//Holosight Visier
						["optic_Yorris",nil,2500]					//Yorris Visier
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Rang 1",
					[
						["SMG_01_F",nil,63000],						//Vermin
						["arifle_Katiba_F",nil,140000],				//Katiba
						["arifle_SDAR_F",nil,105000],				//SDAR
						["arifle_TRG20_F",nil,105000],				//TRG20
						["arifle_MXC_F",nil,175000],				//MXC
						["arifle_MX_F",nil,210000],					//MX
						["arifle_MXM_F",nil,315000],				//MXM
						["srifle_DMR_03_khaki_F",nil,315000],		//MK1 EMR
						//["srifle_DMR_03_tan_F",nil,315000],		//MK1 EMR
						["srifle_DMR_03_multicam_F",nil,315000],	//MK1 EMR
						["srifle_DMR_03_woodland_F",nil,315000],	//MK1 EMR
						["srifle_DMR_01_F",nil,315000],				//Rahim
						["srifle_DMR_06_camo_F",nil,315000],		//MK14
						["srifle_DMR_02_F",nil,420000],				//MAR 10
						["optic_ACO_grn",nil,5000],					//ACO Visier
						["optic_Holosight_smg",nil,5000],			//Holosight Visier
						["optic_Arco",nil,17000],					//ARCO Visier
						["optic_Hamr",nil,17000],					//RCO Visier
						["optic_MRCO",nil,17000],					//MRCO Visier
						["optic_DMS",nil,85000],					//DMS Visier
						["optic_AMS",nil,85000],					//AMS Visier
						["optic_KHS_blk",nil,85000],				//Kahila Visier
						["optic_SOS",nil,110000],					//SOS Visier
						["optic_LRPS",nil,110000],					//LRPS Visier
						["optic_NVS",nil,140000],					//NVS Visier
						["30Rnd_65x39_caseless_green",nil,1000],	//Katiba Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,1500],			//SDAR Magazine
						["30Rnd_556x45_Stanag",nil,1750],			//TRG20 Magazine
						["30Rnd_65x39_caseless_mag",nil,1000],		//MX Magazine
						["20Rnd_762x51_Mag",nil,3000],				//MK Magazine
						["10Rnd_762x54_Mag",nil,3000],				//Rahim Magazine
						["10Rnd_338_Mag",nil,7000],					//MAR10 Magazine
						//["muzzle_snds_acp",nil,28000],			//Schalldämpfer 45 ACP
						//["muzzle_snds_L",nil,28000],				//Schalldämpfer 9mm
						//["muzzle_snds_M",nil,38500],				//Schalldämpfer 5.56mm
						//["muzzle_snds_H",nil,52500],				//Schalldämpfer 6.5mm
						//["muzzle_snds_B",nil,63000],				//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,70000],				//Nato Schwarz
						["bipod_01_F_snd",nil,70000]				//Nato Sand
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Rang 2",
					[
						["SMG_01_F",nil,63000],						//Vermin
						["arifle_Katiba_F",nil,140000],				//Katiba
						["arifle_SDAR_F",nil,105000],				//SDAR
						["arifle_TRG20_F",nil,105000],				//TRG20
						["arifle_MXC_F",nil,175000],				//MXC
						["arifle_MX_F",nil,210000],					//MX
						["arifle_MXM_F",nil,315000],				//MXM
						["srifle_DMR_03_khaki_F",nil,315000],		//MK1 EMR
						//["srifle_DMR_03_tan_F",nil,315000],		//MK1 EMR
						["srifle_DMR_03_multicam_F",nil,315000],	//MK1 EMR
						["srifle_DMR_03_woodland_F",nil,315000],	//MK1 EMR
						["srifle_DMR_01_F",nil,315000],				//Rahim
						["srifle_DMR_06_camo_F",nil,315000],		//MK14
						["srifle_DMR_02_F",nil,420000],				//MAR 10
						["optic_ACO_grn",nil,5000],					//ACO Visier
						["optic_Holosight_smg",nil,5000],			//Holosight Visier
						["optic_Arco",nil,17000],					//ARCO Visier
						["optic_Hamr",nil,17000],					//RCO Visier
						["optic_MRCO",nil,17000],					//MRCO Visier
						["optic_DMS",nil,85000],					//DMS Visier
						["optic_AMS",nil,85000],					//AMS Visier
						["optic_KHS_blk",nil,85000],				//Kahila Visier
						["optic_SOS",nil,110000],					//SOS Visier
						["optic_LRPS",nil,110000],					//LRPS Visier
						["optic_NVS",nil,140000],					//NVS Visier
						["30Rnd_65x39_caseless_green",nil,1000],	//Katiba Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,1500],			//SDAR Magazine
						["30Rnd_556x45_Stanag",nil,1750],			//TRG20 Magazine
						["30Rnd_65x39_caseless_mag",nil,1000],		//MX Magazine
						["20Rnd_762x51_Mag",nil,3000],				//MK Magazine
						["10Rnd_762x54_Mag",nil,3000],				//Rahim Magazine
						["10Rnd_338_Mag",nil,7000],					//MAR10 Magazine
						//["muzzle_snds_acp",nil,28000],			//Schalldämpfer 45 ACP
						//["muzzle_snds_L",nil,28000],				//Schalldämpfer 9mm
						//["muzzle_snds_M",nil,38500],				//Schalldämpfer 5.56mm
						//["muzzle_snds_H",nil,52500],				//Schalldämpfer 6.5mm
						//["muzzle_snds_B",nil,63000],				//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,70000],				//Nato Schwarz
						["bipod_01_F_snd",nil,70000]				//Nato Sand	
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Söldner Waffen Händler",
					[
						["SMG_01_F",nil,63000],						//Vermin
						["arifle_Katiba_F",nil,140000],				//Katiba
						["arifle_SDAR_F",nil,105000],				//SDAR
						["arifle_TRG20_F",nil,105000],				//TRG20
						["arifle_MXC_F",nil,175000],				//MXC
						["arifle_MX_F",nil,210000],					//MX
						["arifle_MXM_F",nil,315000],				//MXM
						["srifle_DMR_03_khaki_F",nil,315000],		//MK1 EMR
						//["srifle_DMR_03_tan_F",nil,315000],		//MK1 EMR
						["srifle_DMR_03_multicam_F",nil,315000],	//MK1 EMR
						["srifle_DMR_03_woodland_F",nil,315000],	//MK1 EMR
						["srifle_DMR_01_F",nil,315000],				//Rahim
						["srifle_DMR_06_camo_F",nil,315000],		//MK14
						["srifle_DMR_02_F",nil,420000],				//MAR 10
						["optic_ACO_grn",nil,5000],					//ACO Visier
						["optic_Holosight_smg",nil,5000],			//Holosight Visier
						["optic_Arco",nil,17000],					//ARCO Visier
						["optic_Hamr",nil,17000],					//RCO Visier
						["optic_MRCO",nil,17000],					//MRCO Visier
						["optic_DMS",nil,85000],					//DMS Visier
						["optic_AMS",nil,85000],					//AMS Visier
						["optic_KHS_blk",nil,85000],				//Kahila Visier
						["optic_SOS",nil,110000],					//SOS Visier
						["optic_LRPS",nil,110000],					//LRPS Visier
						["optic_NVS",nil,140000],					//NVS Visier
						["30Rnd_65x39_caseless_green",nil,1000],	//Katiba Magazine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],			//Vermin Magazine
						["20Rnd_556x45_UW_mag",nil,1500],			//SDAR Magazine
						["30Rnd_556x45_Stanag",nil,1750],			//TRG20 Magazine
						["30Rnd_65x39_caseless_mag",nil,1000],		//MX Magazine
						["20Rnd_762x51_Mag",nil,3000],				//MK Magazine
						["10Rnd_762x54_Mag",nil,3000],				//Rahim Magazine
						["10Rnd_338_Mag",nil,7000],					//MAR10 Magazine
						//["muzzle_snds_acp",nil,28000],			//Schalldämpfer 45 ACP
						//["muzzle_snds_L",nil,28000],				//Schalldämpfer 9mm
						//["muzzle_snds_M",nil,38500],				//Schalldämpfer 5.56mm
						//["muzzle_snds_H",nil,52500],				//Schalldämpfer 6.5mm
						//["muzzle_snds_B",nil,63000],				//Schalldämpfer 7.62mm
						["bipod_01_F_blk",nil,70000],				//Nato Schwarz
						["bipod_01_F_snd",nil,70000]				//Nato Sand
					]
				];
		    };
		};
	};
	
	case "genstore":
	{
		["Altis Elektro-Händler",
			[
				["Binocular",nil,150],						//Ferngläser
				["ItemGPS",nil,100],						//GPS
				["ToolKit",nil,250],						//Werkzeugkasten
				["FirstAidKit",nil,150],					//Erste Hilfe Kasten
				["NVGoggles",nil,2500],						//Nachtsichtgerät
				["ItemRadio","Telefon",700]					//Handy
			]
		];
	};
	
	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist"};
            case (!license_civ_uranium): {"Du benötigst eine Uran-Lizenz"};
            default
            {
                ["Uran Verkäufer",
                    [
                        ["ToolKit",nil,200],
                        ["FirstAidKit",nil,100],
                        ["U_I_HeliPilotCoveralls","Anti-Strahlungs Anzug",50000]
                    ]
                ];
            };
        };
    }; 
};
