/// @description scr_enemy_choose_state()
function scr_enemy_choose_state() {
	if(alarm[0] <= 0)                                                   // ked skonci alarm[0]
	{
	    state       = choose(scr_enemy_wander_state,scr_enemy_idle_state);    // vyberie sa nahodny state
	    alarm[0]    = room_speed*irandom_range(2,5);                       // opat sa nastavi alram[0] s nahodnymi hodnotami
	    if(state   == scr_enemy_wander_state)
	    {
	        xaxis   = random_range(-1, 1);                                    // nahodna x-ova orientacia
	        yaxis   = random_range(-1, 1);                                    // nahodna y-ova orientacia
	    }
	}



}
