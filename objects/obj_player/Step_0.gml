depth = -y                  // treba kontrolovat depth
script_execute(state);      // spusti script pre state

sprite_index = sprite[movement,face];

// Player death
if(obj_player1_stats.hp <= 0)
{
    instance_destroy();
}

// nastavime alarm pre stamina recharge
// pretoze sme v step evente
if(alarm[1] = -1)           // ak sa spusti alarm[1]         
alarm[1] = room_speed/3;    // nastavi alarm[1]

