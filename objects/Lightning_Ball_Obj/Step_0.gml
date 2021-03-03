x = ThunderMan_Obj.x;
y = ThunderMan_Obj.y;

if(ThunderMan_Obj.sprite_index = ThunderMan_R_Spr){
    direction += 3;
}
else if(ThunderMan_Obj.sprite_index = ThunderMan_L_Spr){
    direction -= 3;
}
else{
    instance_destroy();
}

image_angle = direction;

