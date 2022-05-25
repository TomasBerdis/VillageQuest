// DRAW THE MENU
draw_set_font(ft_nadpis0);
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_halign(fa_center);
draw_text(xx, yy-254, string_hash_to_newline(title));

for(var i = 0; i <= array_length_1d(option)-1; i++)
{
    draw_set_colour(c_gray);
    if(i == menu_index)
    {
        draw_set_colour(c_white);
    }
    draw_text(xx-128+(i*300), yy+128, string_hash_to_newline(option[i]));
}
draw_set_colour(c_white);
draw_set_halign(fa_left);

