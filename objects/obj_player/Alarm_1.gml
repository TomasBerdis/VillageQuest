// Alarm for stamina recharge

if(obj_player1_stats.stamina < obj_player1_stats.maxstamina)
{
    obj_player1_stats.stamina++;
}

// Alarm for mana recharge

if(obj_player1_stats.mana < obj_player1_stats.maxmana)
{
    obj_player1_stats.mana++;
}

// Obnovenie farby po zasiahnuti
image_blend = c_white;

