/// @description scr_get_face(dir)
/// @param dir
function scr_get_face(argument0) {
	var dir  = argument0;
	face     = dir/45;                  // dir je od 0 do 360, takze to prevedieme na 0,1,2,3
	if(face == 8) 
	face     = RIGHT;      // ak bude 8 tak sa nastavi 0 (RIGHT)



}
