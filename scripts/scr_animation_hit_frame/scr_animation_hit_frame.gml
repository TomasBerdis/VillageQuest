/// @description scr_animation_hit_frame(frame)
/// @param frame
function scr_animation_hit_frame(argument0) {
	var frame = argument0;
	return (image_index >= frame + 1 - image_speed) && (image_index < frame + 1);



}
