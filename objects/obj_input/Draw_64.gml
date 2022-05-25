scr_get_input();

draw_set_colour(c_white);
draw_set_font(ft_text0);
if(obj_input.input = "gamepad")                                                                             // ak je pripojeny ovladac 0
{
    if(interact_key)                                                                                    
    draw_sprite(spr_xbox_Y_pressed, 0, display_get_gui_width()-128, display_get_gui_height()-128);
    else
    draw_sprite(spr_xbox_Y, 0, display_get_gui_width()-128, display_get_gui_height()-128);
    if(attack_key)
    draw_sprite(spr_xbox_X_pressed, 0, display_get_gui_width()-160, display_get_gui_height()-96);
    else
    draw_sprite(spr_xbox_X, 0, display_get_gui_width()-160, display_get_gui_height()-96);
    if(spell_key)
    draw_sprite(spr_xbox_B_pressed, 0, display_get_gui_width()-96, display_get_gui_height()-96);
    else
    draw_sprite(spr_xbox_B, 0, display_get_gui_width()-96, display_get_gui_height()-96);
    if(dash_key)
    draw_sprite(spr_xbox_A_pressed, 0, display_get_gui_width()-128, display_get_gui_height()-64);
    else
    draw_sprite(spr_xbox_A, 0, display_get_gui_width()-128, display_get_gui_height()-64);
} else                                                                                              // ak nieje pripojeny ovladac 0
{   
    if(interact_key)                                                                                // ak stlacim interact_key
    draw_sprite(spr_E_pressed, 0, display_get_gui_width()-128, display_get_gui_height()-128);       // vykresli sprite E_pressed
    else                                                                                            // ak nestlacim nic
    draw_sprite(spr_E, 0, display_get_gui_width()-128, display_get_gui_height()-128);               // vykresli sprite E
    if(attack_key)                                                                                  // ak stlacim attack_key
    draw_sprite(spr_X_pressed, 0, display_get_gui_width()-160, display_get_gui_height()-96);        // vykresli sprite X_pressed
    else                                                                                            // ak nestlacim nic
    draw_sprite(spr_X, 0, display_get_gui_width()-160, display_get_gui_height()-96);                // vykresli sprite X
    if(spell_key)                                                                                   // ak stlacim spell_key
    draw_sprite(spr_C_pressed, 0, display_get_gui_width()-96, display_get_gui_height()-96);         // vykresli sprite C_pressed
    else                                                                                            // ak nestlacim nic
    draw_sprite(spr_C, 0, display_get_gui_width()-96, display_get_gui_height()-96);                 // vykresli sprite C
    if(dash_key)                                                                                    // ak stlacim dash_key
    draw_sprite(spr_CTRL_pressed, 0, display_get_gui_width()-128, display_get_gui_height()-64);     // vykresli sprite CTRL_pressed
    else                                                                                            // ak nestlacim nic
    draw_sprite(spr_CTRL, 0, display_get_gui_width()-128, display_get_gui_height()-64);             // vykresli sprite CTRL
}

    draw_set_halign(fa_right);                                                          // horizontal align zprava
    draw_set_valign(fa_middle);                                                         // vertical align na stred
    draw_text(display_get_gui_width()-148,display_get_gui_height()-128,string_hash_to_newline("INTERACT"));     // vykresli text
    draw_text(display_get_gui_width()-180,display_get_gui_height()-96,string_hash_to_newline("ATTACK"));        // vykresli text
    draw_set_halign(fa_left);                                                           // horizontal align zlava
    draw_set_valign(fa_middle);                                                         // vertical align na stred
    draw_text(display_get_gui_width()-76,display_get_gui_height()-96,string_hash_to_newline("SPELL"));          // vykresli text
    draw_text(display_get_gui_width()-108,display_get_gui_height()-64,string_hash_to_newline("DASH"));          // vykresli text
    draw_set_halign(false);                                                             // vypne horizontal align
    draw_set_valign(false);                                                             // vypne vertical align


