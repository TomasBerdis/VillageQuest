/// @description scr_interact_state()
function scr_interact_state() {

	var xx = 0;                                             // suradnica x
	var yy = 0;                                             // suradnica y
	switch(sprite_index)                                    // pre kazdy smer nastavi suradnice objektu 
	{
	    case spr_player1_down:                              // dole
	    xx = x-4;
	    yy = y+5;
	    break;
	    case spr_player1_right:                             // doprava
	    xx = x+8;
	    yy = y-10;
	    break;
	    case spr_player1_left:                              // dolava
	    xx = x-15;
	    yy = y-10;
	    break;
	    case spr_player1_up:                                // hore
	    xx = x-3;
	    yy = y-15;
	    break;
	}
	var interact = instance_create(xx,yy,obj_interact);     // vytvori objekt pre interakciu v danych suradniciach
	interact.creator = obj_player;
	state = scr_move_state;                                 // spat na move_state



}
