
if(alarm[0] <= 0)
{
   if(obj_input.keyboard_right)
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
   
   if(obj_input.keyboard_left)
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
//////////////////////////////////////////////////////////////////////////
   if(obj_input.accept_key)
   {
        switch(menu_index)
        {
            case 0:
                room_goto(rm_start_woods);
                break;
            
            case 1:
                room_goto(rm_ARENA);
                break;
        }
   }
}

