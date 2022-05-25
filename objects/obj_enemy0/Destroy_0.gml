obj_player1_stats.zombiesKilled ++;
if(instance_exists(obj_quest_HardTimes))
{
    if(obj_quest_HardTimes.completed == false) obj_quest_HardTimes.progression ++;
}
var p = irandom_range(3,8);
switch(p)
{
    case 3:
    instance_create(x,y,obj_expr);
    break;
    case 4:
    instance_create(x,y,obj_expr);
    break;
    case 5:
    instance_create(x,y,obj_expr);
    break;
    case 6:
    instance_create(x,y,obj_expr);
    break;
    case 7:
    instance_create(x,y,obj_heart);
    break;
    case 8:
    instance_create(x,y,obj_heart);
    break;
}

var v = instance_create(x,y,obj_enemy0_dead);
if(hitside = 0)
v.image_xscale = -1;

// FOR FUN
//instance_create(irandom_range(200,500),irandom_range(200,300),obj_enemy0);

