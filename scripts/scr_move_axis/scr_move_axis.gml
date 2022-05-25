/// @description scr_move_axis()
function scr_move_axis() {
	var dir         = point_direction(0, 0, xaxis, yaxis);      // vypocita smer k cielovemu x a y
	var hspd        = lengthdir_x(spd, dir);                    // x vektora pre horizontal speed
	var vspd        = lengthdir_y(spd, dir);                    // y vektora pre vertical speed
	phy_position_x += hspd;                                     // pohyb po osi x
	phy_position_y += vspd;                                     // pohyb po osi y



}
