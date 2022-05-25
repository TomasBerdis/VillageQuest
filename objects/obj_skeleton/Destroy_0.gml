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

var v = instance_create(x,y,obj_skeleton_dead);
if(hitside = 0)
v.image_xscale = -1;

// FOR FUN
//instance_create(irandom_range(200,500),irandom_range(200,300),obj_enemy0);

