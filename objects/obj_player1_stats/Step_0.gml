// Ak nastane smrt
if(hp < 0)
{
    hp = 0;
}
// Ak bude zaporna mana
if(mana < 0)
{
    mana = 0;
}
// Ak bude zaporna stamina
if(stamina < 0)
{
    stamina = 0;
}
// Ak bude hp vacsie ako maxhp
if(hp >= maxhp)
{
    hp = maxhp;
}

// Ak sa zvysi level hraca
if(expr >= maxexpr)
{
    expr = expr-maxexpr;        // pripocita zvysne experience
    level       ++;             // zvysi level
    damage      ++;             // zvysi damage
    maxstamina  += 2;           // zvysi maximalnu vydrz
    maxhp       += 2;           // zvysi maximalne hp
    maxexpr     += 5;           // zvysi experience potrebne pre novu uroven
    maxmana     += 5;           // zvysi maximalnu manu
}

// COOLDOWNS
// nastavime alarm pre mana recharge
// pretoze sme v step evente
if(alarm[1] = -1)           // ak sa spusti alarm[1]         
alarm[1] = room_speed/3;    // nastavi alarm[1]

