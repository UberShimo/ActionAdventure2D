/// @description Spawn priest star
star = instance_create_depth(0, 0, 0, PriestStarSpawn_Obj);
star.x = random_range(PriestStageController_Obj.x + 16, PriestStageController_Obj.x + 144);
star.y = random_range(ChurchRoof_Obj.y, PriestStageController_Obj.y - 32);

alarm[1] = 60;