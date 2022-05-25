// Alarm for stamina recharge

if(obj_player2_stats.stamina < obj_player2_stats.maxstamina)
{
    obj_player2_stats.stamina++;
}

// Alarm for mana recharge

if(obj_player2_stats.mana < obj_player2_stats.maxmana)
{
    obj_player2_stats.mana++;
}

// Obnovenie farby po zasiahnuti
image_blend = c_white;

