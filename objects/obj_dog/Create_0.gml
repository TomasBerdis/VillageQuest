event_inherited();
hp          = 1;
type        = "animal";

states[0]   = "idle";
states[1]   = "move_down";
states[2]   = "move_left";
states[3]   = "move_right";
states[4]   = "move_up";
states[5]   = "eat";

state       = "idle";
dir         = DOWN;
rng         = 0;

timeline_index      = tml_chicken;
timeline_position   = 0;
timeline_running    = true;
timeline_loop       = true;

