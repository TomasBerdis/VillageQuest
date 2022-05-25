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
                room_goto(rm_pause_menu);
                break;
        }
   }
}

