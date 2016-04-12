waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Farmrouten"];
player createDiarySubject ["serverrules","Server Regeln"];
player createDiarySubject ["policerules","Polizei Gesetze"];
player createDiarySubject ["safezones","SafeZones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Legale Farmrouten",
				"
					Kupfer Mine->Kupfer Verarbeitung->Kupfer Händler<br/>
					Eisen Mine->Eisen Verarbeitung->Eisen Händler<br/>
					Öl Feld->Öl Verarbeitung->Benzin Verarbeitung<br/>
					Sand Mine->Sand Reinigung->Glas Händler<br/>
					Salz Mine->Salz Reinigung->Salz Händler<br/>
					Steinbruch->Stein Verarbeitung->Zement Händler<br/>
					Uranium Mine->Uranium I,II,III,IV->Uranium Verkäufer<br/>
					Wald->(Stöcke->Mülldeponie)oder->Schreiner->Exporthafen<br/>
					Diamant->Diamant Verarbeitung->Exporthafen<br/>
					Baumwoll Feld->Baumwollen Verarbeiter->Exporthafen<br/>
					Baummwollstücke+Baumwolle->Seiden Herstellung<br/>
					Silber Mine->(Mülldeponie)oder->Silberverarbeiter->Exporthafen<br/>
					Gold Mine->(Mülldeponie)oder->Gold Verarbeiter->Exporthafen<br/>
					Gold+Silber->Schmuck Herstellung->Exporthafen<br/>
					Schrottplatz->(Komplettreifen->Mülldeponie)oder->Reifenverarbeiter->Exporthafen<br/>
					Gummi+Euro-Diesel->Kunstoff Herstellung->Exporthafen<br/>
					Jagdgebiet->Metzger->Großhändler<br/>
					
					
					
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Illegale Farmrouten",
				"
					Marihuana Feld->Marihuana Küche->Drogen Dealer<br/>
					Kokain Feld->Kokain Verarbeitung->Drogen Dealer<br/>
					Meth Feld->Meth Küche->Drogen Dealer<br/>
					Heroin Feld->Heroin Küche->Drogen Dealer<br/>
					Schildkröten Im Meer Fangen->Schildkröten Händler<br/>
					Uranium Mine->Uranium I,II,III->Uranium Verkäufer<br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeit", 
				"
				In Hauptstädten: 50<br/>
				Hauptstraßen: 120Km/h<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zuordnung", 
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gefägnis und Tickets",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Legale Waffen", 
				"
				Legalle Civ Waffen (Mit Waffenschein):<br/>
				1. P07<br/>
				3. ACP-C2<br/>
				5. PDW2000<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Einsatz von Waffen",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzien",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Rangkette",
				"
				Rangkette:<br/>
				In Bearbeitung
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Sonstiges",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regeln",
				"
				1. Alle Polizisten müssen sich auf dem TeamSpeak befinden wärend sie als Polizist eingeloggt sind.<br/>
				2. Alles weitere unter http://die-basisrp.de/ zu finden<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				Alle Regeln findest du in unserem Forum ! http://die-basisrp.de/<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad+<br/>
				5. Ifrit-HMG+<br/>
				6. Hunter-HMG+<br/>
				7. Strider<br/>
				8. Polizei Hunter+<br/>
				9. Polizei Limo+<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 EBR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced Rock40 (Tazer)<br/>
				9. Sprengstoff<br/>
				10. Zafir/Mk200<br/>
				11. M320 LRR<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Rohstoffe",
				"
				Die Folgenden Rohstoffe sind Illegal:<br/><br/>
				1. Schildkröten<br/>
				2. Kokain<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/>
				6. Meth<br/>
				7. Moonshine<br/>
				8. GoldBarren<br/>
				9. Uran III<br/>
				10. Nieren<br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Die-BasisRP Steuerung",
				"
				Z: Spieler Menü<br/>
                U: Fahrzeuge auf/zuschließen<br/>
                U: Häuser Öffnen/Schließen<br/>
                F: Cop/Medic Sirene<br/>
                T: Fahrzeug Inventar<br/>
                Shift + F: Polizei Warnung<br/>
                O: Cop/Medic Schranken öffnen<br/>
                Ü: Cops Nagelbänder legen<br/>
                Q: Spitzhacke<br/>
                Left Shift + 1: Telefon<br/>
                Left Shift + R: Festnehmen (Cop&Civ)<br/>
                Left Shift + G: Ergeben<br/>
                Left Shift + T: Knockout<br/>
                Left Shift + Space: Springen<br/>
                Left Shift + H: Waffe Holstern<br/>
                Left Windows: Housing option<br/>
                Left Windows: Farmen an Feldern<br/>
                Left Windows: Spieler Interaktionsmenü<br/>
                Tab: Hallo Animation<br/>
                Numpad 1: Liegestütze Animation<br/>
                Numpad 2: Kniebeugen Animation<br/>
				"
		]
	];