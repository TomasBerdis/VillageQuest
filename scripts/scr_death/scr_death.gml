function scr_death(argument0) {
	//scr_death()
	var object          = argument0;
	var inst            = instance_create(object.x,object.y,obj_death);
	inst.sprite_index   = object.sprite_index;



}
