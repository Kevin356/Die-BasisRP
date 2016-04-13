/*
Description : Taxi Script to Athira
Author : Mahony
*/
_price = 1000;
_taxigerufen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Ein Taxi wurde gerufen !</t>";
_taxiangekommen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Ihr Taxi sollte nun vorort sein (Sie müssen auch einsteigen) </t>";
if ((life_atmcash) < _price + 25000) exitWith {
hint "Du hast nicht genug geld !";
closeDialog 0;
};
if ((life_cash) == _price) exitWith {
hint "Wir nehmen nur Karte !";
closeDialog 0;
};
if (player distance (getMarkerPos "knast") <= 100) exitWith {
hint "Du bist im Gefängnis !";
closeDialog 0;
};
if (player distance (getMarkerPos "taxi") <= 25) exitWith {
hint "Du bist nicht nahe genug an einer Strasse !";
closeDialog 0;
};
if (player distance (getMarkerPos "civ_spawn_3") <= 1000) exitWith {
hint "Du bist schon in Athira !";
closeDialog 0;
};
if(player getVariable ["restrained",false]) exitWith {
hint "Du bist gefesselt!";
closeDialog 0;
};
closeDialog 0;
sleep 2;
hint parseText (_taxigerufen);
sleep 45;
_taxiA = "C_Hatchback_01_yellow_F" createVehicle position player;
_taxiA allowDamage false;
_taxiA setObjectTextureGlobal [0, "skins\car\taxi.paa"];
hint parseText (_taxiangekommen);
sleep 5;
waitUntil {vehicle player != player};
sleep 1;
player allowDamage false;
titleText ["Ihr seit auf dem Weg nach Athira !", "BLACK FADED", 20];
playSound "wiggle";
deleteVehicle _taxiA;
sleep 28;
titleText ["Ihr seit angekommen nun noch bezahlen und dann können sie gehen", "BLACK FADED", 1];
life_atmcash = life_atmcash - _price;
sleep 1;
player setPos (getMarkerPos "civ_spawn_3");
sleep 1;
player allowDamage true;