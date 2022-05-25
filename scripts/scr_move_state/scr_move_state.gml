/// @description scr_move_state
function scr_move_state() {
	invincible  = false;                                            // nie nesmrtelni
	movement    = MOVE;                                             // premennu pre 2D pole sprite[] nastavim na MOVE, aby som mal move animacie

	// GET DIRECTION
	dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);     // ziska smer z rozdielu osi x a y


	// DASH STATE
	if(obj_input.dash_key && obj_player1_stats.stamina >= 5)         // ak stlacim "dash_key" a stamina je >= 5
	{
	    obj_player1_stats.stamina   -= 5;                            // znizim staminu
	    invincible                  = true;                         // nastavim nesmrtelnost
	    state                       = scr_dash_state;               // nastavim state na dash_state
	    alarm[0]                    = room_speed/8;                 // nastavim alarm[0] pre prepnutie naspat do move_state
	}

	// ATTACK STATE
	if(obj_input.attack_key)                                        // ak stlacim "attack_key"
	{
	    state                       = scr_attack_state;             // nastavi sa attack_state, ktory konci po skonceni animacie
	}

	// SPELL CAST
	if(obj_input.spell_key && obj_player1_stats.mana >= 10)          // ak stlacim "spell_key" a mana je >= 10
	{
	    obj_player1_stats.mana      -= 10;                           // znizim manu
	    state                       = scr_cast_state;
	}

	// INTERACT STATE
	if(obj_input.interact_key)                                      // ak stlacim "interact_key"
	{
	    state                       = scr_interact_state;           // nastavim state na interact_state
	}

	// GET LENGTH
	if(obj_input.xaxis == 0 && obj_input.yaxis == 0)                // ak stojim:
	{
	    len = 0;                                                    // dlzka bude 0
	} else                                                          // inak:
	{
	    len = spd;                                                  // dlzka bude spd
	    scr_get_face(dir);                                          // a ziskam smer otocenia
	}


	// SET SPEED
	hspd = lengthdir_x(len, dir);                                   // nastavi horizontal speed na x-ovu hodnotu vektora
	vspd = lengthdir_y(len, dir);                                   // nastavi vertical speed na y-ovu hodnotu vektora

	// MOVE
	phy_position_x += hspd;                                         // pohyb po ose x
	phy_position_y += vspd;                                         // pohyb po ose y

	// CONTROL SPRITES
	image_speed = 0.26;                                             // nastavi rychlost animacie
	if(len == 0) image_index = 0;                                   // a ak stojim, tak sa animacia vypne



}
