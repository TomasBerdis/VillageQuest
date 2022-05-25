creator = noone;                    // tvorca
knockback = 15;                     // sila impulzu
phy_bullet = true;                  // prevent clipping
projectile_face = obj_player.face;  // nastavi sa smer pri vytvarani projectile
offset = 15;
switch(projectile_face)
{
    case RIGHT:
    particle = instance_create(x+offset,y,obj_particles);
    break;
    
    case RIGHT_UP:
    particle = instance_create(x+offset,y-offset,obj_particles);
    break;
    
    case UP:
    particle = instance_create(x,y-offset,obj_particles);
    break;
    
    case LEFT_UP:
    particle = instance_create(x-offset,y-offset,obj_particles);
    break;
    
    case LEFT:
    particle = instance_create(x-offset,y,obj_particles);
    break;
    
    case LEFT_DOWN:
    particle = instance_create(x-offset,y+offset,obj_particles);
    break;
    
    case DOWN:
    particle = instance_create(x,y+offset,obj_particles);
    break;
    
    case RIGHT_DOWN:
    particle = instance_create(x+offset,y+offset,obj_particles);
    break;
}

