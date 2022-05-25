// kolizia so zivim objektom
if((other.id != creator) && (other.invincible = false))
{
    other.image_blend = c_red;
    other.alarm[2] = room_speed/2;
    
    other.hp -= damage;
    
    var dir = point_direction(0, 0, phy_speed_x, phy_speed_y);
    var xforce = lengthdir_x(knockback, dir);
    var yforce = lengthdir_y(knockback, dir);
    if(dir<90 || dir >270){other.hitside = 0}else other.hitside = 1;
    with(other)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }
    
    alarm[0] = room_speed*3;
}

