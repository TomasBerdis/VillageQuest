// Hracove statistiky
hp              = 15;
maxhp           = hp;
mana            = 10;
maxmana         = mana;
stamina         = 5;
maxstamina      = stamina;
level           = 3;
damage          = 1;
spell_damage    = 10;
expr            = 0;
maxexpr         = 5;
draw_set_colour(c_white);               // nastavi bielu farbu statov

// Statistiky zabiti
zombiesKilled   = 0;

if(instance_exists(obj_player))         // ak existuje instancia hraca:
{
    player_xstart = obj_player.x;       // nastavi player_xstart na sucasny x (pri vytvoreni)
    player_ystart = obj_player.y;       // nastavi player_ystart na sucasny y (pri vytvoreni)
}
else                                    // inak:
{
    player_xstart = 0;                  // nastavi player_xstart na 0
    player_ystart = 0;                  // nastavi player_ystart na 0
}

previous_room       = room;             // nastavi premennú previous_room na sucasnu room

room_start_action   = NEW_ROOM;         // nastavi akciu startu roomky na NEW_ROOM

