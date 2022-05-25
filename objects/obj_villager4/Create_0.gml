// LIFEFORM_PARENT INITIALIZE
event_inherited();
// INITIALIZE THE SPEAKER
speak = instance_create(x,y,obj_speaker); 
speak.sprite_index = sprite_index;
speak.visible = false;
with(speak)
{  
    dialog = noone;
    dialog_page = 0;
    xoffset = -32;
    yoffset = -40;
    text[0] = "Welcome traveler";
    text[1] = "I'm Susane";
    text[2] = "Have a nice day.";
}

