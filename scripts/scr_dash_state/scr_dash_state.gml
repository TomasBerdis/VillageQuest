/// @description scr_dash_state
function scr_dash_state() {
	scr_get_input();                                    // ziskaj vstupy

	dir = face*45;                                      // nastav direction na hodnotu v stupnoch
	len = spd*4;                                        // vzdialenost je 4x vacsia ako spd


	// SET SPEED
	hspd = lengthdir_x(len, dir);                       // nastavi horizontal speed na x-ovu hodnotu vektora
	vspd = lengthdir_y(len, dir);                       // nastavi vertical speed na y-ovu hodnotu vektora

	// MOVE
	phy_position_x += hspd;                             // pohyb po ose x
	phy_position_y += vspd;                             // pohyb po ose y

	// CREATE DASH EFFECT INSTANCE
	var dash            = instance_create(x,y,obj_dash_effect); // to je vlastne konstruktor
	dash.sprite_index   = sprite_index;                         // nastavi sprite pre instanciu dash rovnaky ako ma hrac
	dash.image_index    = image_index;                          // nastavi frame animacie pre instanciu dash rovnaky ako ma hrac



}
