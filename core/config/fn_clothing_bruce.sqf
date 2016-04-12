/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blau",250],
		["U_C_Poloshirt_burgundy","Poloshirt Dunkelrot",250],
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiß",250],
		["U_C_Poloshirt_salmon","Poloshirt Lachs",250],
		["U_C_Poloshirt_stripped","Poloshirt gestreift",250],
		["U_C_Poloshirt_tricolour","Poloshirt dreifarbig",250],
		["U_C_Poor_2","Secon-Hand Kleidung",100],
		["U_IG_Guerilla2_2","Grün gestreiftes Shirt mit Hose",500],
		["U_IG_Guerilla3_1","Braune Jacke mit Hose",500],
		["U_IG_Guerilla2_3","Hill-Billy",500],
		["U_C_HunterBody_grn","Jäger Kleidung",500],
		["U_C_WorkerCoveralls","Mechaniker Kleidung",500],
		["U_OrestesBody","Surfer Kleidung",500],
		["U_NikosAgedBody","Bürokaufmann",650],
		["U_NikosBody","Niko's Kleidung",500],
		["U_Marshal","Marshal Kleidung",500],
		["U_C_Journalist","Journalisten Kleidung",650],
		["U_C_Poor_2","Hello Kitty",500],
		["U_C_Driver_1","Rennanzug Grün",500],
		["U_C_Driver_1_blue","Rennanzug Blau",500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",120],
			["H_Bandanna_gry","Grauer Bandanna",120],
			["H_Bandanna_cbr",nil,120],
			["H_Bandanna_surfer",nil,120],
			["H_Bandanna_khk","Khaki Bandanna",120],
			["H_Bandanna_sgg","Sage Bandanna",120],
			["H_StrawHat","Straw Fedora",200],
			["H_BandMask_blk","Hut & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,200],
			["H_Hat_brown",nil,200],
			["H_Hat_checker",nil,200],
			["H_Hat_grey",nil,200],
			["H_Hat_tan",nil,200],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["H_RacingHelmet_1_green_F","Rennhelm Grün",200],
			["H_RacingHelmet_1_blue_F","Rennhelm Blau",200]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
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