// Create the C!
instance_create(x, y, The_C);

// Stats
SPD = 1;
ATK = false;
attackBuffer = 0;
Duck = false;
canWallClimb = true;
climbing = false;
dead = false;
dashing = false;
dashEffSpawnY = irandom_range(-2, 4);
bloodEff = 0;

knifeVariationBolean = false;

if(global.dash < 8){
	spawnDashCooldownEff = true;
}
else{
	spawnDashCooldownEff = false;
}

// Fix sprite
sprite_index = Player_Spr;
depth = 0;

if(global.warpFacingRight){
    facingRight = true;
	image_xscale = 1;
}
else{
    facingRight = false;
    image_xscale = -1;
}

// Warp
if(global.warp = 1){
    x = Warp1_Obj.x;
    y = Warp1_Obj.y;
}
else if(global.warp = 2){
    x = Warp2_Obj.x;
    y = Warp2_Obj.y;
}
else if(global.warp = 3){
    x = Warp3_Obj.x;
    y = Warp3_Obj.y;
}
else if(global.warp = 4){
    x = Warp4_Obj.x;
    y = Warp4_Obj.y;
}
