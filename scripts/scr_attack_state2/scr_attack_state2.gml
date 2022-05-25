/// @description scr_attack_state2
function scr_attack_state2() {
	movement = ATTACK;                                  // premennu pre 2D pole sprite[] nastavim na ATTACK, aby som mal attack animacie
	image_speed = 0.5;                                 // nastavi rychlost animacie

	if(scr_animation_hit_frame(4))                      // ak je frame animacie >= 4
	{
	    var xx = x;                                     // suradnica xx
	    var yy = y;                                     // suradnica yy
	    switch(face)                                    // pre kazdy smer nastavi suradnice hitboxu
	    {
	        case DOWN:               // smer dole
	        yy = y+range;
	        break;
        
	        case RIGHT:              // smer doprava
	        xx = x+range;
	        break;
        
	        case LEFT:               // smer dolava
	        xx = x-range;
	        break;
        
	        case UP:                 // smer hore
	        yy = y-range;
	        break;
	    }
	    var hitbox      = instance_create(xx,yy,obj_hitbox);    // vytvorim hitbox so suradnicami xx a yy
	    hitbox.creator  = id;                                   // zapise sa tvorca hitboxu, aby ho nemohol zranit 
	    hitbox.damage   = obj_player1_stats.damage;              // hitbox ziska damage na zaklade damagu hraca
	}



}
