// other znamena iny objekt
if((other.id != creator) && (other.type != creator.type) && (other.invincible = false))
{
    if(other.type == "enemy" || other.type == "animal")
    {
        other.image_blend = c_red;
        other.alarm[2] = room_speed/2;
    }
    other.hp -= damage;
    if(instance_exists(creator))
    {
        var dir = point_direction(creator.x,creator.y,other.x,other.y);
    } else 
    {
        var dir = point_direction(x,y,other.x,other.y);
        
    }
    
    if(dir<90 || dir >270){other.hitside = 0}else other.hitside = 1;
    var xforce = lengthdir_x(knockback,dir);        // vypocita xforce
    var yforce = lengthdir_y(knockback,dir);        // vypocita yforce
    with (other)    // vykona kod v other objekte
    {
        physics_apply_impulse(x,y,xforce,yforce);
    }
    
}


