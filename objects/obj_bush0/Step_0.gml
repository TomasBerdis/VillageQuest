depth = -y;                                 // depth checking
if(((place_meeting(x,y,obj_player)          // (ak sa stretne s hracom
|| (place_meeting(x,y,obj_projectile)))     // alebo ak sa stretne s projektilom)
&& (met == false)))                         // a nestretli sa predtym
{
    met         = true;                     // nastala kolizia
    image_speed = .2;                       // zapne animaciu
} else if (!place_meeting(x,y,obj_player)   // ak sa nestretli s hracom
|| place_meeting(x,y,obj_projectile))
{
    image_index = 0;                        // reset na prvy frame
    image_speed = 0;                        // vypnutie animacie
    met         = false;                    // nestretli sa predtym
}
if (image_speed > 0)                        // ak je zapnuta animacia
{
   if (image_index > image_number - 1)      // ak je animacia v pokrocilom frame
   { 
        image_speed = 0;                    // vypne animaciu
        image_index = 0;                    // reset na prvy frame
   }
}

