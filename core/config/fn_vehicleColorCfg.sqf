/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path","_path2"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "C_SUV_01_F":																	//SUV
		{
			_ret =
			[
				["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],				//Dunkelrot
				["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],			//Schwarz
				["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],			//Silber
				["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],			//Orange-Schwarz
				["skins\car\civ_suv_bifi.paa","civ"],									//Bifi
				["skins\car\civ_suv_camo.paa","civ"],									//Camo
				["skins\car\civ_suv_pokemon.paa","civ"],								//Pokemon
				["skins\car\civ_suv_kitty.paa","civ"],									//Hello Kitty
				["skins\car\civ_suv_monster.paa","civ"],								//Monster Energy
				["skins\car\civ_suv_starwars.paa","civ"],								//Star Wars
				["skins\car\civ_suv_esports.paa","civ"],								//e-Sports
				["skins\car\medic_suv.paa","med"],										//Medic
				["skins\car\polizei_suv.paa","cop"],									//Polizei
				["skins\car\sek_suv.paa","cop"]											//SEK
			];
		};
		
	case "C_Offroad_01_F":																//Offroad
		{
			_ret =
			[
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_co.paa","civ"],				//Rot
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_base01_co.paa","civ"],		//Beige
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_base02_co.paa","civ"],		//Weiss
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_base03_co.paa","civ"],		//Blau
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_base04_co.paa","civ"],		//Dunkelrot
				["\a3\soft_f\offroad_01\Data\offroad_01_ext_base05_co.paa","civ"],		//Custom-Blau
				["skins\car\civ_offroad_dodge.paa","civ"],								//Dodge
				["skins\car\civ_offroad_rockstargelb.paa","civ"],						//Rockstar Gelb
				["skins\car\civ_offroad_rockstarlila.paa","civ"],						//Rockstar Lila
				["skins\car\civ_offroad_weed.paa","civ"],								//Weedfarmer
				["skins\car\civ_offroder_monsterenergy.paa","civ"],						//Monster Energy
				["skins\car\medic_offroad.paa","med"],									//Medic
				["skins\car\polizei_offroad.paa","cop"],								//Polizei
				["skins\car\civ_offroad_schwarz.paa","civ"]								//Schwarz
			];
		};
	
	case "C_Offroad_01_repair_F":														//Offroad Repair
		{
			_ret =
			[
				["skins\car\adac_offroad.paa","med"]									//ADAC
			];
		};
	
	case "C_Hatchback_01_F":																		//Hatchback
		{
			_ret =
			[
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_co.paa","civ"],				//Weiss
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base01_co.paa","civ"],		//Beige
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base02_co.paa","civ"],		//Grün
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base03_co.paa","civ"],		//Blau
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base04_co.paa","civ"],		//Custom-Blau
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base05_co.paa","civ"],		//Custom-Beige
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base06_co.paa","civ"],		//Gelb
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base07_co.paa","civ"],		//Silber
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base08_co.paa","civ"],		//Dunkelgrau
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base09_co.paa","civ"],		//Schwarz
				["skins\car\civ_hatchback_sport_ken_block.paa","civ"],								//Ken Block	
				["skins\car\polizei_hatchback.paa","cop"]											//Polizei
			];
		};
	
	case "C_Hatchback_01_sport_F":																	//Hatchback Sport
		{
			_ret =
			[
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport01_co.paa","civ"],		//Custom-Rot
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport02_co.paa","civ"],		//Custom-Blau
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport03_co.paa","civ"],		//Custom-Orange
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport04_co.paa","civ"],		//Custom-Weiss
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport05_co.paa","civ"],		//Custom-Beige
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_sport06_co.paa","civ"],		//Custom-Grün
				["skins\car\civ_hatchback_sport_ken_block.paa","civ"],								//Ken Block	
				["skins\car\polizei_hatchback.paa","cop"],											//Polizei
				["skins\car\sek_hatchback.paa","cop"],												//SEK
				["\a3\soft_f_gamma\hatchback_01\Data\Hatchback_01_ext_base09_co.paa","civ"]			//Schwarz
			];
		};
	
	case "C_Van_01_box_F":																			//Van Box
		{
			_ret =
			[
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_co.paa","civ"],							//Weiss
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_black_co.paa","civ"],						//Schwarz
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_red_co.paa","civ"],						//Rot
				["skins\car\medic_van_01_ext1.paa","med","skins\car\medic_van_01_ext2.paa"]			//Medic
			];
		};

	case "C_Van_01_transport_F":																	//Van Transport
		{
			_ret =
			[
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_co.paa","civ"],							//Weiss
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_black_co.paa","civ"],						//Schwarz
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_red_co.paa","civ"]						//Rot
			];
		};

	case "C_Van_01_fuel_F":																			//Van Treibstoff
		{
			_ret =
			[
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_co.paa","civ"],							//Weiss
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_black_co.paa","civ"],						//Schwarz
				["\a3\soft_f_gamma\van_01\Data\van_01_ext_red_co.paa","civ"]						//Rot
			];
		};
		
	case "B_Quadbike_01_F":																			//Quadbike
		{
			_ret =
			[
				["\a3\soft_f_beta\quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],			//Schwarz
				["\a3\soft_f_beta\quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],				//Blau
				["\a3\soft_f_beta\quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],				//Rot
				["\a3\soft_f_beta\quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],			//Weiss
				["skins\car\polizei_quadbike.paa","cop"]											//Polizei
			];
		};

	case "B_MRAP_01_F":																					//Hunter
		{
			_ret =
			[
				["skins\car\civ_hunter_camo_base.paa","civ","skins\car\civ_hunter_camo_adds.paa"],		//Camo
				["skins\car\polizei_hunter_base.paa","cop","skins\car\polizei_hunter_adds.paa"],		//Polizei
				["skins\car\sek_hunter_base.paa","cop","skins\car\sek_hunter_adds.paa"]					//SEK
			];
		};

	case "O_MRAP_02_F":																					//Ifrit
		{
			_ret =
			[
				["skins\car\civ_ifrit_ext1_rot.paa","civ","skins\car\civ_ifrit_ext2_rot.paa"]			//Camo
			];
		};

	case "I_MRAP_03_F":																					//Strider
		{
			_ret =
			[
				["skins\car\civ_strider_camo.paa","civ"],												//Camo
				["skins\car\polizei_strider.paa","cop"],												//Polizei
				["skins\car\sek_strider.paa","cop"]														//SEK
			];
		};

	case "I_Truck_02_covered_F":																										//Zamak Abgedeckt
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_02\Data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\truck_02\Data\truck_02_kuz_co.paa"],		//Orange
				["skins\car\civ_zamak_redbull_ext1.paa","civ","skins\car\civ_zamak_redbull_ext2.paa"]									//Red Bull
			];
		};
	
	case "I_Truck_02_transport_F":																										//Zamak Transport
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_02\Data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\truck_02\Data\truck_02_kuz_co.paa"],		//Orange
				["skins\car\civ_zamak_redbull_ext1.paa","civ","skins\car\civ_zamak_redbull_ext2.paa"]									//Red Bull
			];
		};

	case "B_Truck_01_box_F":																											//Hemmt Box
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_01\Data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\Data\truck_01_ext_02_co.paa"],	//Grün
				["skins\car\civ_hemtt_devil_ext1.paa","civ","skins\car\civ_hemtt_devil_ext2.paa"],										//Devil
				["skins\car\civ_hemtt_kitty_ext1.paa","civ","skins\car\civ_hemtt_kitty_ext2.paa"]										//Hello Kitty
			];
		};

	case "B_Truck_01_transport_F":																										//Hemmt Transport
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_01\Data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\Data\truck_01_ext_02_co.paa"],	//Grün
				["skins\car\civ_hemtt_devil_ext1.paa","civ","skins\car\civ_hemtt_devil_ext2.paa"],										//Devil
				["skins\car\civ_hemtt_kitty_ext1.paa","civ","skins\car\civ_hemtt_kitty_ext2.paa"],										//Hello Kitty
				["skins\car\adac_hemtt.paa","med"]																						//ADAC
			];
		};

	case "B_Truck_01_covered_F":																										//Hemmt Abgedeckt
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_01\Data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\Data\truck_01_ext_02_co.paa"],	//Grün
				["skins\car\civ_hemtt_devil_ext1.paa","civ","skins\car\civ_hemtt_devil_ext2.paa"],										//Devil
				["skins\car\civ_hemtt_kitty_ext1.paa","civ","skins\car\civ_hemtt_kitty_ext2.paa"]										//Hello Kitty
			];
		};

	case "B_Truck_01_ammo_F":																											//Hemmt Munition
		{
			_ret =
			[
				["\a3\soft_f_beta\truck_01\Data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\Data\truck_01_ext_02_co.paa"],	//Grün
				["skins\car\civ_hemtt_devil_ext1.paa","civ","skins\car\civ_hemtt_devil_ext2.paa"],										//Devil
				["skins\car\civ_hemtt_kitty_ext1.paa","civ","skins\car\civ_hemtt_kitty_ext2.paa"]										//Hello Kitty
			];
		};

	case "O_Truck_03_transport_F":																																							//Tempest Transoprt
		{
			_ret =
			[
				["\a3\soft_f_epc\truck_03\Data\truck_03_ext01_co.paa","civ","\a3\soft_f_epc\truck_03\Data\truck_03_ext02_co.paa","\a3\soft_f_epc\truck_03\Data\truck_03_cargo_co.paa"]	//Camo
			];
		};

	case "O_Truck_03_covered_F":																																																				//Tempest Transoprt
		{
			_ret =
			[
				["\a3\soft_f_epc\truck_03\Data\truck_03_ext01_co.paa","civ","\a3\soft_f_epc\truck_03\Data\truck_03_ext02_co.paa","\a3\soft_f_epc\truck_03\Data\truck_03_cargo_co.paa","\a3\soft_f_epc\truck_03\Data\truck_03_cover_co.paa"]	//Camo
			];
		};

	case "O_Truck_03_device_F":																											//Tempest Transoprt
		{
			_ret =
			[
				["\a3\soft_f_epc\truck_03\Data\truck_03_ext01_co.paa","civ","\a3\soft_f_epc\truck_03\Data\truck_03_ext02_co.paa"]		//Camo
			];
		};

	case "I_Heli_Transport_02_F":																										//Mohawk
		{
			_ret =
			[
				["\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_1_ion_co.paa","civ","\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_2_ion_co.paa","\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_3_ion_co.paa"],				//Ion
				["\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_1_dahoman_co.paa","civ","\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_2_dahoman_co.paa","\a3\air_f_beta\heli_transport_02\Data\skins\heli_transport_02_3_dahoman_co.paa"]	//Dahoman
			];
		};

	case "B_Heli_Light_01_F":																											//Hummingbird
		{
			_ret =
			[
				["\a3\air_f\heli_light_01\Data\heli_light_01_ext_ion_co.paa","civ"],													//Ion
				["\a3\air_f\heli_light_01\Data\heli_light_01_ext_blue_co.paa","civ"],													//Blau
				["\a3\air_f\heli_light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],										//Elliptical
				["\a3\air_f\heli_light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],											//Furious
				["\a3\air_f\heli_light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],											//Speedy
				["\a3\air_f\heli_light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],											//Vrana
				["\a3\air_f\heli_light_01\Data\Skins\heli_light_01_ext_digital_co.paa","civ"],											//Digital
				["skins\air\civ_hummingbird_redbull.paa","civ"],																		//Red Bull
				["skins\air\civ_hummingbird_kitty.paa","civ"],																			//Hello Kitty
				["skins\air\medic_littlebird.paa","med"],																				//Medic
				["skins\air\polizei_hummingbird.paa","cop"],																			//Polizei
				["skins\air\civ_hummingbird_asimov.paa","civ"],																			//Asimov
				["skins\air\civ_hummingbird_hyperbeast.paa","civ"]																		//Hyper Beast
			];
		};

	case "O_Heli_Light_02_unarmed_F":																									//Orca
		{
			_ret =
			[
				["\a3\air_f\heli_light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],												//Blau-Weiss
				["\a3\air_f\heli_light_02\Data\heli_light_02_ext_co.paa","civ"],														//Schwarz
				["skins\air\medic_orca.paa","med"],																						//Medic
				["skins\air\adac_orca.paa","med"],																						//ADAC
				["skins\air\polizei_orca.paa","cop"]																					//Polizei
			];
		};

	case "I_Heli_Light_03_unarmed_F":																									//Hellcat
		{
			_ret =
			[
				["skins\air\polizei_hellcat.paa","cop"],																				//Polizei
				["skins\air\sek_hellcat.paa","cop"]																						//SEK
			];
		};

	case "B_Heli_Transport_01_F":																										//Ghosthawk
		{
			_ret =
			[
				["skins\air\polizei_ghosthawk_ext1.paa","cop","skins\air\polizei_ghosthawk_ext2.paa"],									//Polizei
				["skins\air\sek_ghosthawk_ext1.paa","cop","skins\air\sek_ghosthawk_ext2.paa"]											//SEK
			];
		};

	case "B_Heli_Transport_03_unarmed_F":																								//Huron
		{
			_ret =
			[
				["skins\air\polizei_huron_ext1.paa","cop","skins\air\polizei_huron_ext2.paa"],											//Polizei
				["skins\air\civ_huron_camo_ext1.paa","civ","skins\air\civ_huron_camo_ext2.paa"]											//Camo
			];
		};

	case "O_Heli_Transport_04_box_black_F":																											//Taru Box
		{
			_ret =
			[
				["skins\air\civ_taru_air_force_ext1.paa","civ","skins\air\civ_taru_air_force_ext2.paa","skins\air\civ_taru_air_force_box.paa"]		//Air Force
			];
		};
	};

_ret;