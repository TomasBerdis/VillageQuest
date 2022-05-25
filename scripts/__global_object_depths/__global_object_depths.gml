function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_tree0
	global.__objectDepths[1] = 0; // obj_tree1
	global.__objectDepths[2] = 0; // obj_tree2
	global.__objectDepths[3] = 0; // obj_bush0
	global.__objectDepths[4] = 0; // obj_bush1
	global.__objectDepths[5] = 0; // obj_bush2
	global.__objectDepths[6] = 0; // obj_player1_stats
	global.__objectDepths[7] = 0; // obj_player2_stats
	global.__objectDepths[8] = 0; // obj_lifeform_parent
	global.__objectDepths[9] = 0; // obj_dash_effect
	global.__objectDepths[10] = 0; // obj_view
	global.__objectDepths[11] = 0; // obj_input
	global.__objectDepths[12] = 0; // obj_pause_menu
	global.__objectDepths[13] = 0; // obj_first_screen
	global.__objectDepths[14] = 0; // obj_end_menu
	global.__objectDepths[15] = 0; // obj_credits
	global.__objectDepths[16] = 0; // obj_death
	global.__objectDepths[17] = 0; // obj_menu_particles
	global.__objectDepths[18] = 0; // obj_particles
	global.__objectDepths[19] = 0; // obj_sounds
	global.__objectDepths[20] = 0; // obj_GAME
	global.__objectDepths[21] = 0; // obj_ARENA
	global.__objectDepths[22] = 0; // obj_change_player
	global.__objectDepths[23] = 0; // obj_menu
	global.__objectDepths[24] = 0; // obj_interact_door
	global.__objectDepths[25] = 0; // obj_interact
	global.__objectDepths[26] = 0; // obj_door
	global.__objectDepths[27] = 0; // obj_hitbox
	global.__objectDepths[28] = -1; // obj_wall_parent
	global.__objectDepths[29] = -1; // obj_water
	global.__objectDepths[30] = 0; // obj_speaker
	global.__objectDepths[31] = -10; // obj_player
	global.__objectDepths[32] = -10; // obj_player2
	global.__objectDepths[33] = -9; // obj_enemy0
	global.__objectDepths[34] = -9; // obj_skeleton
	global.__objectDepths[35] = -9; // obj_enemy0_dead
	global.__objectDepths[36] = -9; // obj_skeleton_dead
	global.__objectDepths[37] = 0; // obj_midget
	global.__objectDepths[38] = 0; // obj_hero_adventurer
	global.__objectDepths[39] = 0; // obj_villager0
	global.__objectDepths[40] = 0; // obj_villager1
	global.__objectDepths[41] = 0; // obj_villager2
	global.__objectDepths[42] = 0; // obj_villager3
	global.__objectDepths[43] = 0; // obj_villager4
	global.__objectDepths[44] = 0; // obj_forestmonster
	global.__objectDepths[45] = 0; // obj_chicken
	global.__objectDepths[46] = 0; // obj_dog
	global.__objectDepths[47] = 0; // obj_quest
	global.__objectDepths[48] = 0; // obj_quest_HardTimes
	global.__objectDepths[49] = 0; // obj_quest_BossFight
	global.__objectDepths[50] = 0; // obj_quest_VillageQuest
	global.__objectDepths[51] = 0; // obj_active_quest
	global.__objectDepths[52] = 0; // obj_merchant
	global.__objectDepths[53] = 0; // obj_sign
	global.__objectDepths[54] = 0; // obj_bucket
	global.__objectDepths[55] = 0; // obj_chest
	global.__objectDepths[56] = 0; // obj_expr
	global.__objectDepths[57] = 1; // obj_expr_gain
	global.__objectDepths[58] = 0; // obj_projectile
	global.__objectDepths[59] = 0; // obj_heart
	global.__objectDepths[60] = -1000; // obj_dialog
	global.__objectDepths[61] = 0; // obj_barrel
	global.__objectDepths[62] = 0; // obj_barrel_destroy


	global.__objectNames[0] = "obj_tree0";
	global.__objectNames[1] = "obj_tree1";
	global.__objectNames[2] = "obj_tree2";
	global.__objectNames[3] = "obj_bush0";
	global.__objectNames[4] = "obj_bush1";
	global.__objectNames[5] = "obj_bush2";
	global.__objectNames[6] = "obj_player1_stats";
	global.__objectNames[7] = "obj_player2_stats";
	global.__objectNames[8] = "obj_lifeform_parent";
	global.__objectNames[9] = "obj_dash_effect";
	global.__objectNames[10] = "obj_view";
	global.__objectNames[11] = "obj_input";
	global.__objectNames[12] = "obj_pause_menu";
	global.__objectNames[13] = "obj_first_screen";
	global.__objectNames[14] = "obj_end_menu";
	global.__objectNames[15] = "obj_credits";
	global.__objectNames[16] = "obj_death";
	global.__objectNames[17] = "obj_menu_particles";
	global.__objectNames[18] = "obj_particles";
	global.__objectNames[19] = "obj_sounds";
	global.__objectNames[20] = "obj_GAME";
	global.__objectNames[21] = "obj_ARENA";
	global.__objectNames[22] = "obj_change_player";
	global.__objectNames[23] = "obj_menu";
	global.__objectNames[24] = "obj_interact_door";
	global.__objectNames[25] = "obj_interact";
	global.__objectNames[26] = "obj_door";
	global.__objectNames[27] = "obj_hitbox";
	global.__objectNames[28] = "obj_wall_parent";
	global.__objectNames[29] = "obj_water";
	global.__objectNames[30] = "obj_speaker";
	global.__objectNames[31] = "obj_player";
	global.__objectNames[32] = "obj_player2";
	global.__objectNames[33] = "obj_enemy0";
	global.__objectNames[34] = "obj_skeleton";
	global.__objectNames[35] = "obj_enemy0_dead";
	global.__objectNames[36] = "obj_skeleton_dead";
	global.__objectNames[37] = "obj_midget";
	global.__objectNames[38] = "obj_hero_adventurer";
	global.__objectNames[39] = "obj_villager0";
	global.__objectNames[40] = "obj_villager1";
	global.__objectNames[41] = "obj_villager2";
	global.__objectNames[42] = "obj_villager3";
	global.__objectNames[43] = "obj_villager4";
	global.__objectNames[44] = "obj_forestmonster";
	global.__objectNames[45] = "obj_chicken";
	global.__objectNames[46] = "obj_dog";
	global.__objectNames[47] = "obj_quest";
	global.__objectNames[48] = "obj_quest_HardTimes";
	global.__objectNames[49] = "obj_quest_BossFight";
	global.__objectNames[50] = "obj_quest_VillageQuest";
	global.__objectNames[51] = "obj_active_quest";
	global.__objectNames[52] = "obj_merchant";
	global.__objectNames[53] = "obj_sign";
	global.__objectNames[54] = "obj_bucket";
	global.__objectNames[55] = "obj_chest";
	global.__objectNames[56] = "obj_expr";
	global.__objectNames[57] = "obj_expr_gain";
	global.__objectNames[58] = "obj_projectile";
	global.__objectNames[59] = "obj_heart";
	global.__objectNames[60] = "obj_dialog";
	global.__objectNames[61] = "obj_barrel";
	global.__objectNames[62] = "obj_barrel_destroy";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
