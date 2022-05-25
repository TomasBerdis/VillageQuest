scr_get_input();
with(obj_particles)
{
    part_system_automatic_update(ps,false);
    part_system_automatic_draw(ps,false);
}
if(alarm[0] <= 0)
{
   if(obj_input.keyboard_down)
   {
        if(menu_index < array_length_1d(option)-1)
        {
            menu_index++;
        }
        else
        {
            menu_index = 0;
        }   
        alarm[0] = room_speed/6;
   } 
   
   if(obj_input.keyboard_up)
   {
        if(menu_index > 0)
        {
            menu_index --;
        }
        else
        {
            menu_index = array_length_1d(option)-1;
        }
        alarm[0] = room_speed/6;
   }
   
   if(obj_input.accept_key)
   {
        switch(menu_index)
        {
            case 0:
                obj_player1_stats.visible            = true;                // zobrazim stats
                obj_player1_stats.room_start_action  = RETURN;
                room_goto(obj_player1_stats.previous_room);
                break;
            
            case 1:
                obj_GAME.player2 = false;
                obj_input.input                     = "keyboard";
                obj_player1_stats.visible            = true;                // zobrazim stats
                obj_player1_stats.room_start_action  = RETURN;
                room_goto(obj_player1_stats.previous_room);
                break;
            case 2:
                obj_GAME.player2 = false;
                obj_input.input                     = "gamepad";
                obj_player1_stats.visible            = true;                // zobrazim stats
                obj_player1_stats.room_start_action  = RETURN;
                room_goto(obj_player1_stats.previous_room);
                break;
            case 3:
                obj_input.input                     = "keyboard_gamepad";
                obj_player1_stats.visible            = true;                // zobrazim stats
                obj_player1_stats.room_start_action  = RETURN;
                room_goto(obj_player1_stats.previous_room);
                if(obj_GAME.player2 == false)
                {
                    instance_create(200,200,obj_player2); 
                    instance_create(200,200,obj_player2_stats); 
                    obj_GAME.player2 = true;
                }
                break;
            case 4:
                obj_input.input                     = "keyboard_keyboard";
                obj_player1_stats.visible            = true;                // zobrazim stats
                obj_player1_stats.room_start_action  = RETURN;
                room_goto(obj_player1_stats.previous_room);
                if(obj_GAME.player2 == false)
                {
                    instance_create(200,200,obj_player2); 
                    instance_create(200,200,obj_player2_stats); 
                    obj_GAME.player2 = true;
                }
                break;
        }
   }
}

