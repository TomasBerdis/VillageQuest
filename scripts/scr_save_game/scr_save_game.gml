/// @description scr_save_game()
function scr_save_game() {
	if(!instance_exists(obj_player1_stats))                              // ak neexistuje instancia hracovych statov
	    exit;                                                           // vyjdi von     

	var save_data = ds_map_create();                                    // do premennej save_data vytvori ds mapu

	with(obj_player1_stats)                                              // v objekte player_stats:
	{
	    save_data[? "room"]         = previous_room;                            // ulozi vsetky potrebne premenne do ds mapy v save_data            
	    save_data[? "x"]            = player_xstart;
	    save_data[? "y"]            = player_ystart;
	    save_data[? "hp"]           = hp;
	    save_data[? "maxhp"]        = maxhp;
	    save_data[? "stamina"]      = stamina;
	    save_data[? "maxstamina"]   = maxstamina;
	    save_data[? "expr"]         = expr;
	    save_data[? "maxexpr"]      = maxexpr;
	    save_data[? "level"]        = level;
	    save_data[? "damage"]       = damage;
	}

	if(instance_exists(obj_quest_HardTimes))
	{
	    with(obj_quest_HardTimes)
	    {
	        save_data[? "HTStarted"]    = started;
	        save_data[? "HTCompleted"]  = completed;
	        save_data[? "HTProgress"]   = progression;
	    }  
	}

	if(instance_exists(obj_quest_BossFight))
	{
	    with(obj_quest_BossFight)
	    {
	        save_data[? "BFStarted"]    = started;
	        save_data[? "BFCompleted"]  = completed;
	        save_data[? "BFProgress"]   = progression;  
	    }
	}

	var save_string = json_encode(save_data);                           // do premennej save_string sa zakoduje ds mapa
	ds_map_destroy(save_data);                                          // ds mapa sa znici
	save_string     = base64_encode(save_string);                           // udaje sa zakoduju podla base64

	var s = "save_game"+string(current_day)+"."+string(current_month)   // premenna pre nazov suboru
	+"."+string(current_year)+"_"+string(current_time)+".txt";          

	var file = file_text_open_write(working_directory + "save.txt");    // vytvori subor v %appdata% (Local) pre zapisovanie
	file_text_write_string(file, save_string);                          // zapise String do suboru
	file_text_close(file);                                              // zavrie subor

	show_message("Game saved");                                         // zobrazi okno
	window_set_fullscreen(true);



}
