event_inherited();
if(!instance_exists(obj_quest_VillageQuest)) obj_quest_VillageQuest.completed = true;
if(!instance_exists(obj_quest_HardTimes))
{
    var quest               = instance_create(x,y,obj_quest_HardTimes);
    quest.started           = true;
    quest.creator           = id;
    quest.progression       = 0;
    quest.completed         = false;
    obj_active_quest.quest  = obj_quest_HardTimes;
    
    var door                = instance_create(576,0,obj_door);
    door.new_room           = rm_one;
    door.new_x              = 96;
    door.new_y              = 300;
    
    var door1               = instance_create(1087,214,obj_interact_door);
    door1.new_room          = room4;
    door1.new_x             = 815;
    door1.new_y             = 720;
}
if(!instance_exists(obj_quest_BossFight) && obj_quest_HardTimes.completed == true)
{
    with(speak) instance_destroy();
    speak               = instance_create(x,y,obj_speaker); 
    speak.sprite_index  = sprite_index;
    speak.visible       = false;
    with(speak)
    {  
        dialog      = noone;
        dialog_page = 0;
        xoffset     = -32;
        yoffset     = -40;
        text[0]     = "You have proven your skills traveler";
        text[1]     = "Now the reward I promised";
        text[2]     = "You can slay the monster";
        text[3]     = "in the southern forest!";
    }
    
    var quest               = instance_create(x,y,obj_quest_BossFight);
    quest.started           = true;
    quest.creator           = id;
    quest.progression       = 0;
    quest.completed         = false;
    obj_active_quest.quest  = obj_quest_BossFight;
    
    var door2       = instance_create(576,627,obj_door);
    door2.new_room  = rm_woods;
    door2.new_x     = 175;
    door2.new_y     = 32;
}

