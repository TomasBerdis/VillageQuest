// MOVE CAMERA 10% TO PLAYER
if(instance_exists(obj_player))
{
    x += (obj_player.x - x) * 0.15;
    y += (obj_player.y - y) * 0.15;
}
/*if(instance_exists(obj_player) && obj_input.input = "gamepad")
{
    x += (obj_player.x - x) * 0.05;
    y += (obj_player.y - y) * 0.05;
}
/*if(instance_exists(obj_player)&& instance_exists(obj_player2) && obj_input.input = "keyboard_gamepad")
{
    var xx = obj_player2.x - obj_player.x;
    x += (xx - x) * 0.05;
    y += (obj_player.y - y) * 0.05;
}
if(instance_exists(obj_player) && obj_input.input = "keyboard_keyboard")
{
    var xx = obj_player2.x - obj_player.x;
    x += (xx - x) * 0.05;
    y += (obj_player.y - y) * 0.05;
}*/
scr_get_input();
if(rstick_up >0)
{
    y -= 20;
}
if(rstick_down >0)
{
    y += 20;
}
if(rstick_left >0)
{
    x -= 20;
}
if(rstick_right >0)
{
    x += 20;
}


/* */
/*  */
