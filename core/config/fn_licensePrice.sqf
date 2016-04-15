/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
    case "arte": {120000}; //Preis f�r Artefakt Lizenz
    case "schwarz": {10000}; //Preis f�r Schwarzbrenner Lizenz
	case "wodka": {10000}; //Preis Wodka Herstellungs Lizenz
	case "wein": {10000}; //Preis Wein Herstellungs Lizenz
    case "bier": {10000}; //Preis Bier Herstellungs Lizenz
    case "huhn": {10000}; //Preis f�r eure H�hnchenfleisch Lizenz
	case "hahn": {10000}; //Preis f�r eure H�hnchenfleisch Lizenz
	case "ziege": {10000}; //Preis f�r eure Ziegenfleisch Lizenz
	case "schaaf": {10000}; //Preis f�r eure Schaafsfleisch Lizenz
	case "hasen": {10000}; //Preis f�r eure Hasenfleisch Lizenz
    case "ring": {36000}; //Preis f�r eure Gold Ring Lizenz
    case "seide": {25000}; //Preis f�r eure Seidenverarbeiter Lizenz
    case "kunstoff": {41000}; //Preis f�r eure Kunstoff Lizenz
    case "reifen": {27000}; //Preis f�r eure Gummi Lizenz
    case "holz": {38000}; //Preis f�r eure Schreiner Lizenz
    case "baumwolle": {25000}; //Preis f�r eure Baumwolle Lizenz
    case "silber": {30000}; //Preis f�r eure Silber Lizenz
	case "gold": {45000}; //Preis f�r eure Gold Lizenz
	case "driver": {1000}; //Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "pilot": {50000}; //Pilot/air license cost
	case "gun": {20000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {37000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "sek": {35000}; //SEK License cost
	case "cg": {1000}; //Coast guard license cost
	case "heroin": {41000}; //Heroin processing license cost
	case "marijuana": {42000}; //Marijuana processing license cost
	case "medmarijuana": {10000}; //Medical Marijuana processing license cost
	case "gang": {500000}; //Gang license cost
	case "rebel": {1000000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {70000}; //Diamanten Lizenz
	case "salt": {31000}; //Salz Lizenz
	case "cocaine": {49000}; //Kokain Lizenz
	case "sand": {29000}; //Sand Lizenz
	case "iron": {45000}; //Eisen Lizenz
	case "copper": {25000}; //Kupfer Lizenz
	case "cement": {35000}; //Zement Lizenz
	case "grapes": {10000}; //Trauben Lizenz
	case "moonshine": {10000}; //Moonshine Lizenz
	case "meth": {75000}; //Meth Lizenz
	case "medic": {15000}; //Medic Ausbildung
	case "mair": {15000}; //Maische
	case "home": {500000}; //Home Lizenz
	case "adac": {15000}; //ADAC Lizenz
	case "stiller":{25000}; //Abf�ller
	case "liquor":{20000}; //Desti
	case "bottler":{20000}; //Abf�ller Lizenz
	case "mash":{20000}; //Maische Lizenz
	case "uranium": {71000}; //Uran Lizenz
};