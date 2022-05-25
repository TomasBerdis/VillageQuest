// Damage the player
if(instance_exists(other) && state != scr_enemy_stall_state)
{
    sprite_index = spr_skeleton_attack;
    var damage          = instance_create(other.x,other.y,obj_hitbox);
    damage.creator      = obj_enemy0;
    damage.knockback    = 3;
    state               = scr_enemy_stall_state;
    alarm[1]            = room_speed;
    //image_speed         = 0;
    //image_index         = 0;
    with(other)
    {
        //image_alpha     = .5;
        image_blend     = c_red/2;                                  // zmeni farbu hraca na cervenu (alarm pre stamina recharge to vrati naspat)
    }
    
}

