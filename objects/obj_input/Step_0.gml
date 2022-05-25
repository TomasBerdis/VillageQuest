scr_get_input();                                        // ziskaj vstup
if(input = "gamepad" && !gamepad_is_connected(0)) input = "keyboard";

if(pause_key)                                           // ak stlacim "pause_key"
{
    if(room = rm_credits)
    {
        room = rm_pause_menu;
    }
    else if(room = rm_change_player && instance_exists(obj_player1_stats))
    {
        room = obj_player1_stats.previous_room;
        obj_player1_stats.visible        = true;
    }
    else if(room != rm_pause_menu)                           // ak niesom v pause_menu
    {
        obj_player1_stats.visible        = false;        // skryjem stats
        with(obj_particles)                             // vypnem ciastocky
        {
            part_system_automatic_update(ps,false);
            part_system_automatic_draw(ps,false);
        }    
    
        if(instance_exists(obj_player))
        {
            obj_player.persistent       = false;        // hrac neostane v roomke
        }
        obj_player1_stats.previous_room  = room;         // nastavi sa roomka na previous_room aby som sa vedel vratit
        room_persistent                 = true;                         // roomka je persistent
        room_goto(rm_pause_menu);                       // presuniem sa do pause_menu
    }
    else                                                // ak som v pause_menu
    {   
        obj_player1_stats.visible = true;                // zobrazim stats
        with(obj_particles)                             // zapnem ciastocky
        {
            part_system_automatic_update(ps,true);
            part_system_automatic_draw(ps,true);
        } 
        
        room_goto(obj_player1_stats.previous_room);      // vratim sa do predchadzajucej room
    }
}
if(change_player_key)                                      
{
    if(room != rm_pause_menu && room != rm_change_player && room != rm_credits && room != rm_end_menu)                           // ak niesom v ...
    {
        obj_player1_stats.visible        = false;        // skryjem stats
        with(obj_particles)                             // vypnem ciastocky
        {
            part_system_automatic_update(ps,false);
            part_system_automatic_draw(ps,false);
        }    
    
        if(instance_exists(obj_player))
        {
            obj_player.persistent       = false;        // hrac neostane v roomke
        }
        obj_player1_stats.previous_room  = room;         // nastavi sa roomka na previous_room aby som sa vedel vratit
        room_persistent                 = true;         // roomka je persistent
        room_goto(rm_change_player);
    }
}

