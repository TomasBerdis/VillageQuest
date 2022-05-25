// DRAW THE DIALOG
// GET THE LAST SPACE
if(string_char_at(text[text_page], text_count) == " ")
{
    last_space = text_count;
}

// ADD SMART RETURNS
var text_words = scr_get_words(text[text_page], 1, text_count);
if(string_width(string_hash_to_newline(text_words)) >= width - (margin*2))
{
    // REMOVE THE SPACE
    text[text_page] = string_delete(text[text_page], last_space, 1);
    
    // ADD A RETURN
    text[text_page] = string_insert("#", text[text_page], last_space);
}

text_visible = string_copy(text[text_page], 0, text_count);     // skopiruje cely text

var xx = (x-__view_get( e__VW.XView, 0 ))*display_scale;                       // (x dialogu - x pohladu) * display scale
var yy = (y-__view_get( e__VW.YView, 0 ))*display_scale;                       // (y dialogu - y pohladu) * display scale
draw_set_font(ft_text0);    
draw_text_ext(xx+margin, yy+margin, string_hash_to_newline(text_visible), -1, width-(margin*2));    // vykresli text

text_count += spd;

