/// @description scr_check_player()
function scr_check_player() {
	if(instance_exists(obj_player))                                         // ak existuje instancia hraca:
	{
	    var dis = point_distance(x,y,obj_player.x,obj_player.y);            // vypocita vzdialenost k hracovi
	    if(dis < sight)                                                     // ak je vzdialenost mensia ako viditelnost:
	    {
	        var dir = point_direction(x, y, obj_player.x, obj_player.y);    // vypocita sa smer
	        xaxis = lengthdir_x(1, dir);                                    // x-ova os sa nastavi podla smeru
	        yaxis = lengthdir_y(1, dir);                                    // y-ova os sa nastavi podla smeru
	        state = scr_enemy_chase_state;                                  // state sa zmeni na "chase"
	    } else                                                              // inak:
	    {
	        scr_enemy_choose_state();                                       // vyber si iny state
	    }
	} else                                                                  // inak:
	{
	    scr_enemy_choose_state();                                           // vyber si iny state
	}



}
