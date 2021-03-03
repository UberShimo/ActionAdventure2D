if global.HP = 8
{
    draw_sprite_ext(HP_bar_Spr,0,0,0,4,4,0,c_white,1);
}
if global.HP = 7
{
    draw_sprite_ext(HP_bar_Spr,1,0,0,4,4,0,c_white,1);
}
if global.HP = 6
{
    draw_sprite_ext(HP_bar_Spr,2,0,0,4,4,0,c_white,1);
}
if global.HP = 5
{
    draw_sprite_ext(HP_bar_Spr,3,0,0,4,4,0,c_white,1);
}
if global.HP = 4
{
    draw_sprite_ext(HP_bar_Spr,4,0,0,4,4,0,c_white,1);
}
if global.HP = 3
{
    draw_sprite_ext(HP_bar_Spr,5,0,0,4,4,0,c_white,1);
}
if global.HP = 2
{
    draw_sprite_ext(HP_bar_Spr,6,0,0,4,4,0,c_white,1);
}
if global.HP = 1
{
    draw_sprite_ext(HP_bar_Spr,7,0,0,4,4,0,c_white,1);
}
if global.HP <= 0
{
    draw_sprite_ext(HP_bar_Spr,8,0,0,4,4,0,c_white,1);
}

if (global.dash = 8){
    draw_sprite_ext(Dash_bar_Spr,0,0,32,4,4,0,c_white,1);
}
else if (global.dash > 7.5){
    draw_sprite_ext(Dash_bar_Spr,1,0,32,4,4,0,c_white,1);
	audio_play_sound(Dash_Cooldown_Sd, 0, false);
	instance_create(Player_Obj.x, Player_Obj.y, Dash_Cooldown_Obj);
}
else if (global.dash >= 7){
    draw_sprite_ext(Dash_bar_Spr,2,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 6.5){
    draw_sprite_ext(Dash_bar_Spr,3,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 6){
    draw_sprite_ext(Dash_bar_Spr,4,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 5.5){
    draw_sprite_ext(Dash_bar_Spr,5,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 5){
    draw_sprite_ext(Dash_bar_Spr,6,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 4.5){
    draw_sprite_ext(Dash_bar_Spr,7,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 4){
    draw_sprite_ext(Dash_bar_Spr,8,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 3.5){
    draw_sprite_ext(Dash_bar_Spr,9,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 3){
    draw_sprite_ext(Dash_bar_Spr,10,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 2.5){
    draw_sprite_ext(Dash_bar_Spr,11,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 2){
    draw_sprite_ext(Dash_bar_Spr,12,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 1.5){
    draw_sprite_ext(Dash_bar_Spr,13,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 1){
    draw_sprite_ext(Dash_bar_Spr,14,0,32,4,4,0,c_white,1);
}
else if (global.dash >= 0.5){
    draw_sprite_ext(Dash_bar_Spr,15,0,32,4,4,0,c_white,1);
}
else{
    draw_sprite_ext(Dash_bar_Spr,16,0,32,4,4,0,c_white,1);
}

if (global.hurt = true)
{
    draw_sprite_ext(RED_SCREEN,0,0,0,1,1,0,c_white,0.2);
}

draw_sprite_ext(Weapons_Slots_Spr, 0, 640, 0, 4, 4, 0, c_white, 1);

//+48 per slot
if(global.hasSword){
    draw_sprite_ext(Sword_UI_Spr, 0, 640, 0, 4, 4, 0, c_white, 1);
}
if(global.hasSpear){
    draw_sprite_ext(Spear_UI_Spr, 0, 688, 0, 4, 4, 0, c_white, 1);
}
if(global.hasAxe){
    draw_sprite_ext(Axe_UI_Spr, 0, 736, 0, 4, 4, 0, c_white, 1);
}
if(global.hasKatana){
    draw_sprite_ext(Katana_UI_Spr, 0, 784, 0, 4, 4, 0, c_white, 1);
}
if(global.hasRapier){
    draw_sprite_ext(Rapier_UI_Spr, 0, 832, 0, 4, 4, 0, c_white, 1);
}
if(global.hasScythe){
    draw_sprite_ext(Scythe_UI_Spr, 0, 880, 0, 4, 4, 0, c_white, 1);
}
if(global.hasKnife){
    draw_sprite_ext(Knife_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
}
if(global.hasBoomHammer){
    draw_sprite_ext(BoomHammer_UI_Spr, 0, 976, 0, 4, 4, 0, c_white, 1);
}

// Draw chosen weapon marker
xDistance = 640;
if(global.weapon == "spear"){
    xDistance += 48;
}
else if(global.weapon == "axe"){
    xDistance += 48 * 2;
}
else if(global.weapon == "katana"){
    xDistance += 48 * 3;
}
else if(global.weapon == "rapier"){
    xDistance += 48 * 4;
}
else if(global.weapon == "scythe"){
    xDistance += 48 * 5;
}
else if(global.weapon == "knife"){
    xDistance += 48 * 6;
}
else if(global.weapon == "boomhammer"){
    xDistance += 48 * 7;
}
draw_sprite_ext(Weapon_Chosen_Mark_Spr, 0, xDistance, 0, 4, 4, 0, c_white, 1);