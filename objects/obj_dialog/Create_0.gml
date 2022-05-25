// INITIALIZE THE DIALOG
text            = noone;                                           // premenna pre text
text_visible    = "";                                      // String pre viditelny text
text_page       = 0;                                          // 
text_count      = 0;                                         //
spd             = .5;                                               // rychlost vypisovania textu
display_scale   = display_get_gui_width()/__view_get( e__VW.WView, 0 );  // pomer zobrazovania
width           = sprite_width*display_scale;                     // sirka
margin          = 4;

