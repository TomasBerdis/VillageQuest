// PLAYER INITIALIZE
if(instance_number(obj_player) > 1) instance_destroy();
event_inherited();                                              // ZDEDI KONSTRUKTOR Z RODICA
phy_bullet  = true;
type        = "player";
spd         = 2;
hspd        = 0;
vspd        = 0;
xaxis       = 0;
yaxis       = 0;
len         = 0;
dir         = 0;
face        = DOWN;                                                    // defaultny smer
range       = 16;                                                     // dosah hitboxu
invincible  = false;                                             // docasna nesmrtelnost
image_speed = 0;                                                // vypnuta animacia
state       = scr_move_state;                                         // defaultne som v move_state

movement    = MOVE;                                                // premennu pre 2D pole sprite[] nastavim na MOVE, aby som mal move animacie

// 2D pole sprite[] riesi pohyb
sprite[MOVE,UP]         = spr_player1_up;
sprite[MOVE,DOWN]       = spr_player1_down;
sprite[MOVE,LEFT]       = spr_player1_left;
sprite[MOVE,RIGHT]      = spr_player1_right;
sprite[MOVE,RIGHT_UP]   = spr_player1_right;
sprite[MOVE,LEFT_UP]    = spr_player1_left;
sprite[MOVE,RIGHT_DOWN] = spr_player1_right;
sprite[MOVE,LEFT_DOWN]  = spr_player1_left;

// 2D pole sprite[] riesi utok
sprite[ATTACK,UP]       = spr_player1_sword_attack_up;
sprite[ATTACK,DOWN]     = spr_player1_sword_attack_down;
sprite[ATTACK,LEFT]     = spr_player1_sword_attack_left;
sprite[ATTACK,RIGHT]    = spr_player1_sword_attack_right;
sprite[ATTACK,RIGHT_UP] = spr_player1_sword_attack_right;
sprite[ATTACK,LEFT_UP]  = spr_player1_sword_attack_left;
sprite[ATTACK,RIGHT_DOWN]   = spr_player1_sword_attack_right;
sprite[ATTACK,LEFT_DOWN]= spr_player1_sword_attack_left;

// 2D pole sprite[] riesi cast
sprite[CAST,UP]         = spr_player1_cast_up;
sprite[CAST,DOWN]       = spr_player1_cast_down;
sprite[CAST,LEFT]       = spr_player1_cast_left;
sprite[CAST,RIGHT]      = spr_player1_cast_right;
sprite[CAST,RIGHT_UP]   = spr_player1_cast_right;
sprite[CAST,LEFT_UP]    = spr_player1_cast_left;
sprite[CAST,RIGHT_DOWN] = spr_player1_cast_right;
sprite[CAST,LEFT_DOWN]  = spr_player1_cast_left;


