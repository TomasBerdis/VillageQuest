/// @description scr_get_input
function scr_get_input() {
	if(gamepad_is_connected(0) && obj_input.input == "keyboard") obj_input.input = "gamepad";

	// ziskame vstup z jednotlivych klaves
	stickValue          = 0.5;                                                          // hodnota pre citlivost packy
	pause_key           = keyboard_check_pressed(vk_escape);                            // tlacidlo pre pauzu
	accept_key          = keyboard_check_pressed(vk_enter);
	change_player_key   = keyboard_check_pressed(vk_f1);

	if(obj_input.input == "keyboard")
	{
	    keyboard_up     = keyboard_check(vk_up) || keyboard_check(ord("W"));            // tlacilo hore
	    keyboard_down   = keyboard_check(vk_down) || keyboard_check(ord("S"));          // tlacidlo dole
	    keyboard_left   = keyboard_check(vk_left) || keyboard_check(ord("A"));          // tlacidlo dolava
	    keyboard_right  = keyboard_check(vk_right) || keyboard_check(ord("D"));         // tlacidlo doprava
	    dash_key        = keyboard_check(vk_control);                                   // tlacidlo pre "dash"
	    attack_key      = keyboard_check(ord("X"));                                     // tlacidlo pre utok
	    spell_key       = keyboard_check(ord("C"));                                     // tlacidlo pre spell
	    interact_key    = keyboard_check(ord("E"));                                     // tlacidlo pre interakciu
	}
	if(obj_input.input == "gamepad")
	{
	    keyboard_up     = gamepad_axis_value(0,gp_axislv)<-stickValue;                  // lava packa hore
	    keyboard_down   = gamepad_axis_value(0,gp_axislv)>stickValue;                   // lava packa dole
	    keyboard_left   = gamepad_axis_value(0,gp_axislh)<-stickValue;                  // lava packa dolava
	    keyboard_right  = gamepad_axis_value(0,gp_axislh)>stickValue;                   // lava packa doprava
	    dash_key        = gamepad_button_check(0,gp_face1);                             // tlacidlo "A"
	    attack_key      = gamepad_button_check(0,gp_face3);                             // tlacidlo "X"
	    spell_key       = gamepad_button_check(0,gp_face2);                             // tlacidlo "B"
	    interact_key    = gamepad_button_check(0,gp_face4);                             // tlacidlo "Y"
	    pause_key       = gamepad_button_check_pressed(0,gp_start);                     // tlacidlo "START"
	    accept_key      = gamepad_button_check(0,gp_face1);                             // tlacidlo "A"
	    pad_up          = gamepad_button_check(0,gp_padu);                              // sipka hore
	    pad_down        = gamepad_button_check(0,gp_padd);                              // sipka dole
	    pad_left        = gamepad_button_check(0,gp_padl);                              // sipka dolava        
	    pad_right       = gamepad_button_check(0,gp_padr);                              // sipka doprava
	}
	if(obj_input.input == "keyboard_gamepad")
	{
	    // Player 1
	    keyboard_up     = keyboard_check(vk_up) || keyboard_check(ord("W"));            // tlacilo hore
	    keyboard_down   = keyboard_check(vk_down) || keyboard_check(ord("S"));          // tlacidlo dole
	    keyboard_left   = keyboard_check(vk_left) || keyboard_check(ord("A"));          // tlacidlo dolava
	    keyboard_right  = keyboard_check(vk_right) || keyboard_check(ord("D"));         // tlacidlo doprava
	    dash_key        = keyboard_check(vk_control);                                   // tlacidlo pre "dash"
	    attack_key      = keyboard_check(ord("X"));                                     // tlacidlo pre utok
	    spell_key       = keyboard_check(ord("C"));                                     // tlacidlo pre spell
	    interact_key    = keyboard_check(ord("E"));                                     // tlacidlo pre interakciu
    
	    // Player 2
	    keyboard_up2    = gamepad_axis_value(0,gp_axislv)<-stickValue;                  // lava packa hore
	    keyboard_down2  = gamepad_axis_value(0,gp_axislv)>stickValue;                   // lava packa dole
	    keyboard_left2  = gamepad_axis_value(0,gp_axislh)<-stickValue;                  // lava packa dolava
	    keyboard_right2 = gamepad_axis_value(0,gp_axislh)>stickValue;                   // lava packa doprava
	    dash_key2       = gamepad_button_check(0,gp_face1);                             // tlacidlo "A"
	    attack_key2     = gamepad_button_check(0,gp_face3);                             // tlacidlo "X"
	    spell_key2      = gamepad_button_check(0,gp_face2);                             // tlacidlo "B"
	    interact_key2   = gamepad_button_check(0,gp_face4);                             // tlacidlo "Y"
	    /*pad_up          = gamepad_button_check(0,gp_padu);                              // sipka hore
	    pad_down        = gamepad_button_check(0,gp_padd);                              // sipka dole
	    pad_left        = gamepad_button_check(0,gp_padl);                              // sipka dolava        
	    pad_right       = gamepad_button_check(0,gp_padr);                              // sipka doprava    */
	}
	if(obj_input.input == "keyboard_keyboard")
	{
	    // Player 1
	    keyboard_up     = keyboard_check(ord("W"));             // tlacilo hore
	    keyboard_down   = keyboard_check(ord("S"));             // tlacidlo dole
	    keyboard_left   = keyboard_check(ord("A"));             // tlacidlo dolava
	    keyboard_right  = keyboard_check(ord("D"));             // tlacidlo doprava
	    dash_key        = keyboard_check(vk_control);           // tlacidlo pre "dash"
	    attack_key      = keyboard_check(ord("G"));             // tlacidlo pre utok
	    spell_key       = keyboard_check(ord("Q"));             // tlacidlo pre spell
	    interact_key    = keyboard_check(ord("E"));             // tlacidlo pre interakciu
    
	    // Player 2
	    keyboard_up2    = keyboard_check(vk_up);            // tlacilo hore
	    keyboard_down2  = keyboard_check(vk_down);          // tlacidlo dole
	    keyboard_left2  = keyboard_check(vk_left);          // tlacidlo dolava
	    keyboard_right2 = keyboard_check(vk_right);         // tlacidlo doprava
	    dash_key2       = keyboard_check(vk_numpad3);       // tlacidlo pre "dash"
	    attack_key2     = keyboard_check(vk_numpad1);       // tlacidlo pre utok
	    spell_key2      = keyboard_check(vk_numpad2);       // tlacidlo pre spell
	    interact_key2   = keyboard_check(vk_add);           // tlacidlo pre interakciu
	}

	// ziska x-ovu a y-ovu os (-1, 0, 1)
	xaxis = (keyboard_right - keyboard_left);
	yaxis = (keyboard_down - keyboard_up);

	if(obj_input.input = "keyboard_gamepad" || obj_input.input = "keyboard_keyboard")
	{
	    xaxis2 = (keyboard_right2 - keyboard_left2);
	    yaxis2 = (keyboard_down2 - keyboard_up2);
	}


	rstick_up       = gamepad_axis_value(0,gp_axisrv)<-stickValue;              // prava packa hore
	rstick_down     = gamepad_axis_value(0,gp_axisrv)>stickValue;               // prava packa dole
	rstick_left     = gamepad_axis_value(0,gp_axisrh)<-stickValue;              // prava packa dolava
	rstick_right    = gamepad_axis_value(0,gp_axisrh)>stickValue;               // prava packa doprava
	/*
	keyboard_up = keyboard_check(vk_up) || keyboard_check(ord('W'));            // tlacilo hore
	keyboard_down = keyboard_check(vk_down) || keyboard_check(ord('S'));        // tlacidlo dole
	keyboard_left = keyboard_check(vk_left) || keyboard_check(ord('A'));        // tlacidlo dolava
	keyboard_right = keyboard_check(vk_right) || keyboard_check(ord('D'));      // tlacidlo doprava
	dash_key = keyboard_check(vk_control);                                      // tlacidlo pre "dash"
	attack_key = keyboard_check(ord('X'));                                      // tlacidlo pre utok
	spell_key = keyboard_check(ord('C'));                                       // tlacidlo pre spell
	interact_key = keyboard_check(ord('E'));                                    // tlacidlo pre interakciu
	pause_key = keyboard_check_pressed(vk_escape);                              // tlacidlo pre pauzu
	accept_key = keyboard_check_pressed(vk_enter);

	lstick_up = gamepad_axis_value(0,gp_axislv)<-stickValue;                    // lava packa hore
	lstick_down = gamepad_axis_value(0,gp_axislv)>stickValue;                   // lava packa dole
	lstick_left = gamepad_axis_value(0,gp_axislh)<-stickValue;                  // lava packa dolava
	lstick_right = gamepad_axis_value(0,gp_axislh)>stickValue;                  // lava packa doprava

	pad_up = gamepad_button_check(0,gp_padu);                                   // sipka hore
	pad_down = gamepad_button_check(0,gp_padd);                                 // sipka dole
	pad_left = gamepad_button_check(0,gp_padl);                                 // sipka dolava        
	pad_right = gamepad_button_check(0,gp_padr);                                // sipka doprava

	abutton = gamepad_button_check(0,gp_face1);                                 // tlacidlo "A"
	bbutton = gamepad_button_check(0,gp_face2);                                 // tlacidlo "B"
	xbutton = gamepad_button_check(0,gp_face3);                                 // tlacidlo "X"
	ybutton = gamepad_button_check(0,gp_face4);                                 // tlacidlo "Y"

	start_button = gamepad_button_check_pressed(0,gp_start);                    // tlacidlo "START"

	// nastavime na vstup ovladaca
	if(gamepad_is_connected(0))                                                 // ak je zapojeny ovladac 0
	{
	    keyboard_up = lstick_up || pad_up;
	    keyboard_down = lstick_down || pad_down;
	    keyboard_left = lstick_left || pad_left;
	    keyboard_right = lstick_right || pad_right;
	    dash_key = abutton;
	    attack_key = xbutton;
	    spell_key = bbutton;
	    interact_key = ybutton;
	    pause_key = start_button;
	    accept_key = abutton;
	}*/




}
