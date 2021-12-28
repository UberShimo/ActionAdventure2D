draw_self();

draw_sprite_ext(Enemy_HP_Frame_Spr, 0, x-hpBarWidth/2, y-hpBarHeight, hpBarWidth/16, 1, 0, c_white, image_alpha/2);
if(HP > 0){
	draw_sprite_ext(Enemy_HP_Bar_Spr, 0, x-hpBarWidth/2, y-hpBarHeight, (hpBarWidth/16)*(HP/maxHP), 1, 0, c_white, image_alpha);
}