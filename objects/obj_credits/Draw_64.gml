// DRAW THE MENU
draw_set_font(ft_nadpis0);
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_halign(fa_center);
draw_text(xx, yy-64, string_hash_to_newline(title));
draw_set_font(ft_text0);
draw_text(xx,yy,string_hash_to_newline("Creator: Tomas Berdis IV.SA"));

draw_set_font(ft_nadpis0);
for(var i = 0; i <= array_length_1d(option)-1; i++)
{
    draw_set_colour(c_gray);
    if(i == menu_index)
    {
        draw_set_colour(c_white);
    }
    draw_text(xx, yy+128+(i*32), string_hash_to_newline(option[i]));
}
draw_set_colour(c_white);
draw_set_halign(fa_left);

