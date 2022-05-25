with (obj_player)
{
    if(other.new_room != noone)
    {
        room_goto(other.new_room);
        x = other.new_x;
        y = other.new_y;
    }
}

