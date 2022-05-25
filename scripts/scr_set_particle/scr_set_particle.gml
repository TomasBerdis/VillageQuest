/// @description scr_set_particle()
function scr_set_particle(argument0) {
	var v = argument0;
	if(instance_exists(obj_projectile.particle))
	{
	    with(obj_projectile.particle)
	    {
	        part_system_automatic_update(ps,v);
	        part_system_automatic_draw(ps,v);
	    }
	} 



}
