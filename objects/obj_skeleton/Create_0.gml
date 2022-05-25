// INITIALIZE ENEMY
event_inherited();
image_speed = .25;
spd         = .3;
state       = scr_enemy_idle_state;
alarm[0]    = room_speed*irandom_range(2,5);
xaxis       = 0;
yaxis       = 0;
sight       = 128;
hit_side    = 1;
type        = "enemy";

