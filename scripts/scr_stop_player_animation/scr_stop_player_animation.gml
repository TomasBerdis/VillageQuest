/// @description scr_stop_player_animation
function scr_stop_player_animation() {

	var stickValue = 0.5;                                           // hodnota pre citlivost packy

	// STOP ANIMATION                                               // ak nieje stlacna ani jedna klavesa (packa) pre pohyb
	if(!keyboard_check(vk_right) and !keyboard_check(vk_left) 
	and !keyboard_check(vk_up) and !keyboard_check(vk_down)
	and !keyboard_check(ord("D")) and !keyboard_check(ord("A")) 
	and !keyboard_check(ord("W")) and !keyboard_check(ord("S"))
	and !(gamepad_axis_value(0,gp_axislv)>stickValue) 
	and !(gamepad_axis_value(0,gp_axislv)<-stickValue) 
	and !(gamepad_axis_value(0,gp_axislh)>stickValue) 
	and !(gamepad_axis_value(0,gp_axislh)<-stickValue))
	{
	    image_speed = 0;                                            // zastavi animaciu
	    image_index = 0;                                            // resetne animaciu na zaciatocny frame
	}



}
