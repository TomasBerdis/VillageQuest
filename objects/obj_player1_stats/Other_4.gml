if(room = rm_pause_menu)                    // ak sa nachadzame v pause menu
    exit;                                   // vyjdi von                

switch(room_start_action)                   // moznosti pre room_start_action
{
    case RETURN:                            // ak sa vratim do miestnosti
    break;
    
    case NEW_ROOM:                          // ak vojdem do novej miestnosti
    default:
        if(instance_exists(obj_player))     // ak existuje instancia hraca
        {
            player_xstart = obj_player.x;   // nastavim pociatocne x na sucasne x v roomke
            player_ystart = obj_player.y;   // nastavim pociatocne y na sucasne y v roomke
        }
        break;
        
    case LOAD:                              // ak vojdem do miestnosti nacitanim hry
        scr_load_game();                    // sputi script load_game()
        break;
}

//room_persistent = false;                    // roomka sa neprenesie do dalsej
room_start_action = -1;                     // akcia roomky sa nastavi na nepopisanu hodnotu

