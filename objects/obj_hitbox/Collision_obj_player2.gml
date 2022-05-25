if(other.id != creator && obj_player2.invincible == false)
{
    obj_player2_stats.hp -= damage;                  // odrata hp
    
    if(instance_exists(creator))
    {
        var dir = point_direction(creator.x,creator.y,obj_player2.x,obj_player2.y);
    } else 
    {
        var dir = point_direction(x,y,obj_player2.x,obj_player2.y);
    }
    var xforce = lengthdir_x(knockback,dir);        // vypocita xforce
    var yforce = lengthdir_y(knockback,dir);        // vypocita yforce
    with (other)    // vykona kod v other objekte
    {
        physics_apply_impulse(x,y,xforce,yforce);   // aplikuje impulz
    }
    
} else
instance_destroy();     // zmaze instanciu

