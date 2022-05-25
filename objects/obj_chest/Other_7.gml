image_speed = 0;        // vypne sa animacia
image_index = 5;        // zostane otvorena

var number  = random_range(3,12);
for(i = 0; i < number; i++)
instance_create(x,y+40,obj_expr);

