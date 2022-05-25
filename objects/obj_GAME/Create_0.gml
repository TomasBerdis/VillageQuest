player2 = false;

var quest               = instance_create(x,y,obj_quest_VillageQuest);
quest.started           = true;
quest.creator           = id;
quest.progression       = 0;
quest.completed         = false;
obj_active_quest.quest  = obj_quest_VillageQuest;

