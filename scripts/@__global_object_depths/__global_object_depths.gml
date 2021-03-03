// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // Collision_Obj
global.__objectDepths[1] = 0; // Grave_Obj
global.__objectDepths[2] = 0; // Broken_Grave_Obj
global.__objectDepths[3] = -4; // Grave_Hider_Obj
global.__objectDepths[4] = -20; // BoomHammerHider_Obj
global.__objectDepths[5] = 0; // Enemy_Parent
global.__objectDepths[6] = 0; // Game_Initialize
global.__objectDepths[7] = 0; // Hud_Fix_Obj
global.__objectDepths[8] = 0; // Healer_Obj
global.__objectDepths[9] = 0; // Testing_Obj
global.__objectDepths[10] = 0; // Dash_Eff_Obj
global.__objectDepths[11] = 0; // Detection_Area_Obj
global.__objectDepths[12] = 0; // Press_C_Obj
global.__objectDepths[13] = 0; // Victory_Obj
global.__objectDepths[14] = 0; // Player_Dance_Obj
global.__objectDepths[15] = -5; // Player_Obj
global.__objectDepths[16] = -10; // BloodDrop_Obj
global.__objectDepths[17] = 0; // Crow_Spawn
global.__objectDepths[18] = 0; // Crow_Obj
global.__objectDepths[19] = 0; // Goblin_Club_Spawn
global.__objectDepths[20] = 0; // Goblin_Spawn
global.__objectDepths[21] = 0; // Goblin_Club_Obj
global.__objectDepths[22] = 0; // Goblin_Obj
global.__objectDepths[23] = 0; // Goblin_Hitbox_R_Obj
global.__objectDepths[24] = 0; // Goblin_Hitbox_L_Obj
global.__objectDepths[25] = 0; // Stone_R_Obj
global.__objectDepths[26] = 0; // Stone_L_Obj
global.__objectDepths[27] = 1; // Stone_Eff_Obj
global.__objectDepths[28] = 0; // Goblin_Ambush
global.__objectDepths[29] = 0; // Zombie_Spawn_Obj
global.__objectDepths[30] = 0; // Zombie_Obj
global.__objectDepths[31] = 0; // Zombie_Hitbox_L_Obj
global.__objectDepths[32] = 0; // Zombie_Hitbox_R_Obj
global.__objectDepths[33] = 0; // Troll_Spawn
global.__objectDepths[34] = 0; // Troll_Obj
global.__objectDepths[35] = 0; // Troll_Smash_R_Hitbox_Obj
global.__objectDepths[36] = 0; // Troll_Smash_L_Hitbox_Obj
global.__objectDepths[37] = 0; // Troll_Hit_R_Hitbox_Obj
global.__objectDepths[38] = 0; // Troll_Hit_L_Hitbox_Obj
global.__objectDepths[39] = 0; // Spit_R_Obj
global.__objectDepths[40] = 0; // Spit_L_Obj
global.__objectDepths[41] = 0; // Spit_eff_Obj
global.__objectDepths[42] = 0; // Wolf_Spawn
global.__objectDepths[43] = 0; // Wolf_Obj
global.__objectDepths[44] = 5; // Wolf_Dash_Eff
global.__objectDepths[45] = 0; // Ghost1_Spawn
global.__objectDepths[46] = 0; // Ghost1_Obj
global.__objectDepths[47] = 10; // Ghost_Eff_Obj
global.__objectDepths[48] = 10; // Ghost_Charge_Eff_Obj
global.__objectDepths[49] = 0; // Ghost1_ATK_Obj
global.__objectDepths[50] = 0; // Ghost1_ATK_Eff
global.__objectDepths[51] = 0; // Spider_Spawn
global.__objectDepths[52] = 0; // Spider_Obj
global.__objectDepths[53] = 0; // Spider_Web_Obj
global.__objectDepths[54] = 0; // Spider_Web_Eff
global.__objectDepths[55] = -2; // Web_Hit_Obj
global.__objectDepths[56] = 0; // Spider_Hitbox_R_Obj
global.__objectDepths[57] = 0; // Spider_Hitbox_L_Obj
global.__objectDepths[58] = 0; // Hollow_Sword_Spawn
global.__objectDepths[59] = 0; // Hollow_Sword_Obj
global.__objectDepths[60] = 0; // Hollow_Crossbow_Spawn
global.__objectDepths[61] = 0; // Hollow_Crossbow_Obj
global.__objectDepths[62] = 0; // Hollow_Sword_ATK1_R_Hitbox
global.__objectDepths[63] = 0; // Hollow_Sword_ATK1_L_Hitbox
global.__objectDepths[64] = 0; // Hollow_Sword_ATK2_R_Hitbox
global.__objectDepths[65] = 0; // Hollow_Sword_ATK2_L_Hitbox
global.__objectDepths[66] = -10; // Hollow_Arrow_R_Obj
global.__objectDepths[67] = -10; // Hollow_Arrow_L_Obj
global.__objectDepths[68] = -8; // Hollow_Arrow_Eff
global.__objectDepths[69] = 0; // Golem_Spawn
global.__objectDepths[70] = 0; // Golem_Obj
global.__objectDepths[71] = -1; // Golem_Ball_R_Obj
global.__objectDepths[72] = -1; // Golem_Ball_L_Obj
global.__objectDepths[73] = 0; // Golem_Ball_Break_Obj
global.__objectDepths[74] = -10; // Rumble_Obj
global.__objectDepths[75] = 0; // Rumble_Eff_Obj
global.__objectDepths[76] = 0; // Rock_Rise_Obj
global.__objectDepths[77] = 0; // Golem_ATK1_R_Hitbox_Obj
global.__objectDepths[78] = 0; // Golem_ATK1_L_Hitbox_Obj
global.__objectDepths[79] = 0; // Golem_ATK2_R_Hitbox_Obj
global.__objectDepths[80] = 0; // Golem_ATK2_L_Hitbox_Obj
global.__objectDepths[81] = 0; // Golem_Rock_Rise_Hitbox_Obj
global.__objectDepths[82] = 0; // ThunderMan_Obj
global.__objectDepths[83] = 0; // Lightning_Obj
global.__objectDepths[84] = 0; // Lightning_Warner_Obj
global.__objectDepths[85] = 0; // Lightning_Ball_Obj
global.__objectDepths[86] = 0; // ThunderMan_L_Path
global.__objectDepths[87] = 0; // ThunderMan_R_Path
global.__objectDepths[88] = 0; // Punch_Sack_Obj
global.__objectDepths[89] = 0; // Hitbox_Parent
global.__objectDepths[90] = 0; // Sword_ATK_R_Hitbox
global.__objectDepths[91] = 0; // Sword_ATK_L_Hitbox
global.__objectDepths[92] = 0; // Spear_ATK_R_Hitbox
global.__objectDepths[93] = 0; // Spear_ATK_L_Hitbox
global.__objectDepths[94] = 0; // Axe_ATK_R_Hitbox
global.__objectDepths[95] = 0; // Axe_ATK_L_Hitbox
global.__objectDepths[96] = -6; // Arrow1_Obj
global.__objectDepths[97] = -6; // Arrow2_Obj
global.__objectDepths[98] = -6; // Arrow3_Obj
global.__objectDepths[99] = -8; // Arrow_Eff1_Obj
global.__objectDepths[100] = -8; // Arrow_Eff2_Obj
global.__objectDepths[101] = -8; // Arrow_Eff3_Obj
global.__objectDepths[102] = 0; // Rapier_ATK_R_Hitbox
global.__objectDepths[103] = 0; // Rapier_ATK_L_Hitbox
global.__objectDepths[104] = 0; // Scythe_ATK_R_Hitbox
global.__objectDepths[105] = 0; // Scythe_ATK_L_Hitbox
global.__objectDepths[106] = -6; // ScytheGhost_ATK_R_Obj
global.__objectDepths[107] = -6; // ScytheGhost_ATK_L_Obj
global.__objectDepths[108] = 0; // ScytheGhost_ATK_R_Hitbox
global.__objectDepths[109] = 0; // ScytheGhost_ATK_L_Hitbox
global.__objectDepths[110] = 0; // Knife_ATK_R_Hitbox
global.__objectDepths[111] = 0; // Knife_ATK_L_Hitbox
global.__objectDepths[112] = -8; // Explosion_Obj
global.__objectDepths[113] = 0; // Explosion_Hitbox
global.__objectDepths[114] = 0; // The_C
global.__objectDepths[115] = 0; // C_eff
global.__objectDepths[116] = 0; // Warp1_Obj
global.__objectDepths[117] = 0; // Warp2_Obj
global.__objectDepths[118] = 0; // Warp3_Obj
global.__objectDepths[119] = 0; // Spear_Obj
global.__objectDepths[120] = 0; // Axe_Obj
global.__objectDepths[121] = 0; // Bow_Obj
global.__objectDepths[122] = 0; // Rapier_Obj
global.__objectDepths[123] = 0; // Scythe_Obj
global.__objectDepths[124] = 0; // Knife_Obj
global.__objectDepths[125] = 0; // BoomHammer_Obj
global.__objectDepths[126] = -2; // High_Grass_Obj
global.__objectDepths[127] = -2; // Low_Grass_Obj
global.__objectDepths[128] = 0; // Get_weapons
global.__objectDepths[129] = 100000; // Light_Obj
global.__objectDepths[130] = 110000; // Flame_Eff_Obj


global.__objectNames[0] = "Collision_Obj";
global.__objectNames[1] = "Grave_Obj";
global.__objectNames[2] = "Broken_Grave_Obj";
global.__objectNames[3] = "Grave_Hider_Obj";
global.__objectNames[4] = "BoomHammerHider_Obj";
global.__objectNames[5] = "Enemy_Parent";
global.__objectNames[6] = "Game_Initialize";
global.__objectNames[7] = "Hud_Fix_Obj";
global.__objectNames[8] = "Healer_Obj";
global.__objectNames[9] = "Testing_Obj";
global.__objectNames[10] = "Dash_Eff_Obj";
global.__objectNames[11] = "Detection_Area_Obj";
global.__objectNames[12] = "Press_C_Obj";
global.__objectNames[13] = "Victory_Obj";
global.__objectNames[14] = "Player_Dance_Obj";
global.__objectNames[15] = "Player_Obj";
global.__objectNames[16] = "BloodDrop_Obj";
global.__objectNames[17] = "Crow_Spawn";
global.__objectNames[18] = "Crow_Obj";
global.__objectNames[19] = "Goblin_Club_Spawn";
global.__objectNames[20] = "Goblin_Spawn";
global.__objectNames[21] = "Goblin_Club_Obj";
global.__objectNames[22] = "Goblin_Obj";
global.__objectNames[23] = "Goblin_Hitbox_R_Obj";
global.__objectNames[24] = "Goblin_Hitbox_L_Obj";
global.__objectNames[25] = "Stone_R_Obj";
global.__objectNames[26] = "Stone_L_Obj";
global.__objectNames[27] = "Stone_Eff_Obj";
global.__objectNames[28] = "Goblin_Ambush";
global.__objectNames[29] = "Zombie_Spawn_Obj";
global.__objectNames[30] = "Zombie_Obj";
global.__objectNames[31] = "Zombie_Hitbox_L_Obj";
global.__objectNames[32] = "Zombie_Hitbox_R_Obj";
global.__objectNames[33] = "Troll_Spawn";
global.__objectNames[34] = "Troll_Obj";
global.__objectNames[35] = "Troll_Smash_R_Hitbox_Obj";
global.__objectNames[36] = "Troll_Smash_L_Hitbox_Obj";
global.__objectNames[37] = "Troll_Hit_R_Hitbox_Obj";
global.__objectNames[38] = "Troll_Hit_L_Hitbox_Obj";
global.__objectNames[39] = "Spit_R_Obj";
global.__objectNames[40] = "Spit_L_Obj";
global.__objectNames[41] = "Spit_eff_Obj";
global.__objectNames[42] = "Wolf_Spawn";
global.__objectNames[43] = "Wolf_Obj";
global.__objectNames[44] = "Wolf_Dash_Eff";
global.__objectNames[45] = "Ghost1_Spawn";
global.__objectNames[46] = "Ghost1_Obj";
global.__objectNames[47] = "Ghost_Eff_Obj";
global.__objectNames[48] = "Ghost_Charge_Eff_Obj";
global.__objectNames[49] = "Ghost1_ATK_Obj";
global.__objectNames[50] = "Ghost1_ATK_Eff";
global.__objectNames[51] = "Spider_Spawn";
global.__objectNames[52] = "Spider_Obj";
global.__objectNames[53] = "Spider_Web_Obj";
global.__objectNames[54] = "Spider_Web_Eff";
global.__objectNames[55] = "Web_Hit_Obj";
global.__objectNames[56] = "Spider_Hitbox_R_Obj";
global.__objectNames[57] = "Spider_Hitbox_L_Obj";
global.__objectNames[58] = "Hollow_Sword_Spawn";
global.__objectNames[59] = "Hollow_Sword_Obj";
global.__objectNames[60] = "Hollow_Crossbow_Spawn";
global.__objectNames[61] = "Hollow_Crossbow_Obj";
global.__objectNames[62] = "Hollow_Sword_ATK1_R_Hitbox";
global.__objectNames[63] = "Hollow_Sword_ATK1_L_Hitbox";
global.__objectNames[64] = "Hollow_Sword_ATK2_R_Hitbox";
global.__objectNames[65] = "Hollow_Sword_ATK2_L_Hitbox";
global.__objectNames[66] = "Hollow_Arrow_R_Obj";
global.__objectNames[67] = "Hollow_Arrow_L_Obj";
global.__objectNames[68] = "Hollow_Arrow_Eff";
global.__objectNames[69] = "Golem_Spawn";
global.__objectNames[70] = "Golem_Obj";
global.__objectNames[71] = "Golem_Ball_R_Obj";
global.__objectNames[72] = "Golem_Ball_L_Obj";
global.__objectNames[73] = "Golem_Ball_Break_Obj";
global.__objectNames[74] = "Rumble_Obj";
global.__objectNames[75] = "Rumble_Eff_Obj";
global.__objectNames[76] = "Rock_Rise_Obj";
global.__objectNames[77] = "Golem_ATK1_R_Hitbox_Obj";
global.__objectNames[78] = "Golem_ATK1_L_Hitbox_Obj";
global.__objectNames[79] = "Golem_ATK2_R_Hitbox_Obj";
global.__objectNames[80] = "Golem_ATK2_L_Hitbox_Obj";
global.__objectNames[81] = "Golem_Rock_Rise_Hitbox_Obj";
global.__objectNames[82] = "ThunderMan_Obj";
global.__objectNames[83] = "Lightning_Obj";
global.__objectNames[84] = "Lightning_Warner_Obj";
global.__objectNames[85] = "Lightning_Ball_Obj";
global.__objectNames[86] = "ThunderMan_L_Path";
global.__objectNames[87] = "ThunderMan_R_Path";
global.__objectNames[88] = "Punch_Sack_Obj";
global.__objectNames[89] = "Hitbox_Parent";
global.__objectNames[90] = "Sword_ATK_R_Hitbox";
global.__objectNames[91] = "Sword_ATK_L_Hitbox";
global.__objectNames[92] = "Spear_ATK_R_Hitbox";
global.__objectNames[93] = "Spear_ATK_L_Hitbox";
global.__objectNames[94] = "Axe_ATK_R_Hitbox";
global.__objectNames[95] = "Axe_ATK_L_Hitbox";
global.__objectNames[96] = "Arrow1_Obj";
global.__objectNames[97] = "Arrow2_Obj";
global.__objectNames[98] = "Arrow3_Obj";
global.__objectNames[99] = "Arrow_Eff1_Obj";
global.__objectNames[100] = "Arrow_Eff2_Obj";
global.__objectNames[101] = "Arrow_Eff3_Obj";
global.__objectNames[102] = "Rapier_ATK_R_Hitbox";
global.__objectNames[103] = "Rapier_ATK_L_Hitbox";
global.__objectNames[104] = "Scythe_ATK_R_Hitbox";
global.__objectNames[105] = "Scythe_ATK_L_Hitbox";
global.__objectNames[106] = "ScytheGhost_ATK_R_Obj";
global.__objectNames[107] = "ScytheGhost_ATK_L_Obj";
global.__objectNames[108] = "ScytheGhost_ATK_R_Hitbox";
global.__objectNames[109] = "ScytheGhost_ATK_L_Hitbox";
global.__objectNames[110] = "Knife_ATK_R_Hitbox";
global.__objectNames[111] = "Knife_ATK_L_Hitbox";
global.__objectNames[112] = "Explosion_Obj";
global.__objectNames[113] = "Explosion_Hitbox";
global.__objectNames[114] = "The_C";
global.__objectNames[115] = "C_eff";
global.__objectNames[116] = "Warp1_Obj";
global.__objectNames[117] = "Warp2_Obj";
global.__objectNames[118] = "Warp3_Obj";
global.__objectNames[119] = "Spear_Obj";
global.__objectNames[120] = "Axe_Obj";
global.__objectNames[121] = "Bow_Obj";
global.__objectNames[122] = "Rapier_Obj";
global.__objectNames[123] = "Scythe_Obj";
global.__objectNames[124] = "Knife_Obj";
global.__objectNames[125] = "BoomHammer_Obj";
global.__objectNames[126] = "High_Grass_Obj";
global.__objectNames[127] = "Low_Grass_Obj";
global.__objectNames[128] = "Get_weapons";
global.__objectNames[129] = "Light_Obj";
global.__objectNames[130] = "Flame_Eff_Obj";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for