// Draw GUI
draw_set_colour(c_white);
draw_set_font(ft_text0);

draw_set_halign(false);                                                             // vypne horizontal align
draw_set_valign(false);                                                             // vypne vertical align
draw_set_font(ft_info);                                                        // nastavi font
draw_text(display_get_gui_width()-200,3,string_hash_to_newline("Game is in development"));              // vykresli text
draw_text(display_get_gui_width()-230,display_get_gui_height()-30, string_hash_to_newline(room_get_name(room)));

