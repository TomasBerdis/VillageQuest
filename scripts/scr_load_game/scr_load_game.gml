/// @description scr_load_game()
function scr_load_game() {
	var file        = file_text_open_read(working_directory + "save.txt");     // nacita subor z %appdata% (Local) pre citanie
	var save_string = file_text_read_string(file);                      // cely String sa ulozi d premennej save_string
	file_text_close(file);                                              // zavrie subor
	save_string     = base64_decode(save_string);                       // String sa v premennej dekoduje podla base64
	var save_data   = json_decode(save_string);                         // save_data sa dekoduje do ds mapy

	var save_room   = save_data[? "room"];                              // nacita room zo Stringu
	if(room != save_room)                                               // ak je room ina ako zo Stringu          
	room_goto(save_room);                                               // prepne room  
    
	with(obj_player1_stats)                                              // v objekte player_stats sa vykona:
	{
	    player_xstart = save_data[? "x"];                               // do player_xstart sa nacita x zo Stringu
	    player_ystart = save_data[? "y"];                               // do player_ystart sa nacita y zo Stringu
	    if(instance_exists(obj_player))                                 // ak existuje instancia hraca:   
	    {
	        obj_player.x = player_xstart;                               // jeho x pozicia sa nastavi na player_xstart
	        obj_player.y = player_ystart;                               // jeho y pozicia sa nastavi na player_ystart
	        obj_player.phy_position_x = player_xstart;                  // jeho x pozicia vo fyzikalnom svete(roomke) sa nastavi na player_xstart    
	        obj_player.phy_position_y = player_ystart;                  // jeho y pozicia vo fyzikalnom svete(roomke) sa nastavi na player_ystart 
	    } else                                                          // inak:
	    {
	        instance_create(player_xstart, player_ystart, obj_player);  // vytvor instanciu hraca s danymi suradnicami
	    }
    
	    hp          = save_data[? "hp"];                                         // inicializuje udaje v player_stats
	    maxhp       = save_data[? "maxhp"];
	    stamina     = save_data[? "stamina"];
	    maxstamina  = save_data[? "maxstamina"];
	    expr        = save_data[? "expr"];
	    level       = save_data[? "level"];
	    damage      = save_data[? "damage"];
	}

	if(instance_exists(obj_quest_HardTimes))
	{
	    with(obj_quest_HardTimes)
	    {
	        started     = save_data[? "HTStarted"];
	        completed   = save_data[? "HTCompleted"];
	        progression = save_data[? "HTProgress"];
	    }
	}

	if(instance_exists(obj_quest_BossFight))
	{
	    with(obj_quest_BossFight)
	    {
	        started     = save_data[? "BFStarted"];
	        completed   = save_data[? "BFCompleted"];
	        progression = save_data[? "BFProgress"];
	    }
	}

	ds_map_destroy(save_data);                                          // znici ds mapu



}
