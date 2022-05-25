// Draw GUI
scr_get_input();                                                                // zisti vstupy


if(hp <=0)                                                                              // ked zomrie hrac
{
    draw_set_font(ft_nadpis0);                                                          // nastavi sa font
    draw_set_halign(fa_center);                                                         // horizontal align na center
    draw_text_outline(display_get_gui_width()/2,display_get_gui_height()/2,"YOU HAVE DIED",1,c_red,1);    // vykresli text
}

draw_set_halign(false);                                                             // vypne horizontal align
draw_set_valign(false);                                                             // vypne vertical align
draw_set_font(ft_text0);                                                        // nastavi font

if(hp != maxhp)             draw_text_outline(632, 32, "Health: "     + string(hp)      + "/" + string(maxhp), 1, c_dkgray, 5); 
else                        draw_text_outline(632, 32, "Health: "     + string(hp)      + "/" + string(maxhp), 1, c_red, 5); 
if(stamina != maxstamina)   draw_text_outline(632, 48, "Stamina: "    + string(stamina) + "/" + string(maxstamina), 1, c_dkgray, 5);
else                        draw_text_outline(632, 48, "Stamina: "    + string(stamina) + "/" + string(maxstamina), 1, c_blue, 5);
if(mana != maxmana)         draw_text_outline(632, 64, "Mana: "       + string(mana)    + "/" + string(maxmana), 1, c_dkgray, 5);  
else                        draw_text_outline(632, 64, "Mana: "       + string(mana)    + "/" + string(maxmana), 1, c_navy, 5);        
if(expr != maxexpr)         draw_text_outline(632, 80, "Experience: " + string(expr)    + "/" + string(maxexpr), 1, c_dkgray, 5);
else                        draw_text_outline(632, 80, "Experience: " + string(expr)    + "/" + string(maxexpr), 1, c_olive, 5);
draw_text_outline(632, 96, "Level: "      + string(level), 1, c_dkgray, 5);                                  

draw_set_font(ft_text1);
draw_set_colour(c_navy);

if(instance_exists(obj_active_quest) && obj_active_quest.quest != noone)
{
    draw_set_font(ft_text1);
    draw_set_colour(c_navy);
    if(obj_active_quest.completed == true) 
    {
        draw_set_colour(make_colour_rgb(1, 56, 8));
        draw_sprite_stretched(spr_completed,0,16,192,16,16);
    }
    draw_text(32, 192, string_hash_to_newline("Quest: '" + string(obj_active_quest.title) + "'  " + string(obj_active_quest.description) +" "+ string(obj_active_quest.progression)+" % "));
}
/*if(instance_exists(obj_quest_HardTimes) && obj_quest_HardTimes.started == true)
{
    if(obj_quest_HardTimes.completed == true) 
    {
        draw_set_colour(make_colour_rgb(1, 56, 8));
        draw_sprite_stretched(spr_completed,0,16,128,16,16);
    }
    draw_text(32, 128, "Quest: '" + string(obj_quest_HardTimes.title) + "'  " + string(obj_quest_HardTimes.description) +" "+ string(obj_quest_HardTimes.progression)+" % ");
}
if(instance_exists(obj_quest_BossFight) && obj_quest_BossFight.started = true)
{
    draw_set_font(ft_text1);
    draw_set_colour(c_navy);
    if(obj_quest_BossFight.completed == true) 
    {
        draw_set_colour(make_colour_rgb(1, 56, 8));
        draw_sprite_stretched(spr_completed,0,16,146,16,16);
    }
    draw_text(32, 146, "Quest: '" + string(obj_quest_BossFight.title) + "'  " + string(obj_quest_BossFight.description) +" "+ string(obj_quest_BossFight.progression)+" % ");
}*/
draw_set_colour(c_white);
draw_set_font(ft_text0);

/* */
/*  */
