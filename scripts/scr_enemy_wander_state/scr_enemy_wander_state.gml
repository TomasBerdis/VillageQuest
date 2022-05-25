/// @description scr_enemy_wander_state()
function scr_enemy_wander_state() {
	scr_check_player();                                     // zisti ci hrac nieje v dosahu
	image_speed = .25;                                      // nastavi rychlost animacie

	scr_move_axis();



}
