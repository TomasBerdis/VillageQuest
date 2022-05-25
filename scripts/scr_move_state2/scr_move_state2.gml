/// @description scr_move_state2
function scr_move_state2() {
	invincible  = false;                                             // nie nesmrtelni
	movement    = MOVE;                                              // premennu pre 2D pole sprite[] nastavim na MOVE, aby som mal move animacie

	// GET DIRECTION
	dir = point_direction(0,0,obj_input.xaxis2,obj_input.yaxis2);    // ziska smer z rozdielu osi x a y


	// DASH STATE
	if(obj_input.dash_key2 && obj_player2_stats.stamina >= 5)         // ak stlacim "dash_key" a stamina je >= 5
	{
	    obj_player2_stats.stamina   -= 5;                             // znizim staminu
	    invincible                  = true;                          // nastavim nesmrtelnost
	    state                       = scr_dash_state2;               // nastavim state na dash_state
	    alarm[0]                    = room_speed/8;                  // nastavim alarm[0] pre prepnutie naspat do move_state
	}

	// ATTACK STATE
	if(obj_input.attack_key2)                                        // ak stlacim "attack_key"
	{
	    state = scr_attack_state2;                                   // nastavi sa attack_state, ktory konci po skonceni animacie
	}

	// SPELL CAST
	if(obj_input.spell_key2 && obj_player2_stats.mana >= 10)          // ak stlacim "spell_key" a mana je >= 10
	{
	    obj_player2_stats.mana  -= 10;                                // znizim manu
	    state                   = scr_cast_state2;
	}

	// INTERACT STATE
	if(obj_input.interact_key2)                                      // ak stlacim "interact_key"
	{
	    state = scr_interact_state2;                                 // nastavim state na interact_state
	}

	// GET LENGTH
	if(obj_input.xaxis2 == 0 && obj_input.yaxis2 == 0)                // ak stojim:
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
