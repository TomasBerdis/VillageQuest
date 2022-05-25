// LIFEFORM_PARENT INITIALIZE
event_inherited();
invincible = true;
// INITIALIZE THE SPEAKER
speak               = instance_create(x,y,obj_speaker); 
speak.sprite_index  = sprite_index;
speak.mask_index    = mask_index;
speak.visible       = false;
with(speak)
{  
    dialog  = noone;
    dialog_page = 0;
    xoffset = -32;
    yoffset = -40;
    text[0] = "Welcome traveler";
    text[1] = "Please help us from that monsters!";
    text[2] = "They are swarming the northern forest";
    text[3] = "and wandering in our houses!";
    text[4] = "I will reward you greatly";
}

