event_inherited();

rng = random_range(0,5);
switch(state)
{
    case "idle":
    sprite_index    = spr_chicken_move_down;
    image_speed     = 0;
    image_index     = 0;
    break;
    
    case "move_left":
    dir = LEFT;
    sprite_index    = spr_chicken_move_left;
    image_speed     = .2;
    phy_position_x -=.5;
    break;
    
    case "move_right":
    dir             = RIGHT;
    sprite_index    = spr_chicken_move_right;
    image_speed     = .2;
    phy_position_x +=.5;
    break;
    
    case "move_up":
    dir             = UP;
    sprite_index    = spr_chicken_move_up;
    image_speed     = .2;
    phy_position_y +=.5;
    break;
    
    case "move_down":
    dir             = DOWN;
    sprite_index    = spr_chicken_move_down;
    image_speed     = .2;
    phy_position_y -=.5;
    break;
    
    case "eat":
    if(dir = LEFT) sprite_index = spr_chicken_eat_left;
    if(dir = RIGHT) sprite_index = spr_chicken_eat_right;
    image_speed = .25;
    break;
}

