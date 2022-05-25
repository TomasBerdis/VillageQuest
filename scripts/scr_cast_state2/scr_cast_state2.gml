/// @description scr_cast_state2()
function scr_cast_state2() {
	movement    = CAST;                                  // premennu pre 2D pole sprite[] nastavim na ATTACK, aby som mal cast animacie
	image_speed = 0.5;                                 // nastavi rychlost animacie
	if(scr_animation_hit_frame(4))
	{
	    var projectile      = instance_create(x, y-10, obj_projectile);     // vytvori instanciu "projectile"
	    var xforce          = lengthdir_x(20, face*45);                     // vypocita xforce na zaklade dlzky a smeru
	    var yforce          = lengthdir_y(20, face*45);                     // vypocita yforce na zaklade dlzky a smeru
	    projectile.creator  = id;                                           // zapise sa tvorca
	    projectile.damage   = obj_player2_stats.spell_damage;                // inicializuje sa damage
	    with(projectile)                                                    // vykonaj v instancii
	    {
	        physics_apply_impulse(x, y, xforce, yforce);                    // aplikuj impulz
	    }
	}



}
