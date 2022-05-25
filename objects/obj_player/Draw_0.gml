// DRAW EVENT
if(state == scr_move_state)
{
    draw_sprite(spr_player_shadow,image_index,x,y);
}
else
    draw_sprite(spr_player_shadow,0,x,y);


draw_self();        // nakresli seba

