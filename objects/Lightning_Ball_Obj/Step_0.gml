x = ThunderMan_Obj.x;
y = ThunderMan_Obj.y;

if(ThunderMan_Obj.sprite_index = ThunderMan_R_Spr){
    direction += rotation;
}
else if(ThunderMan_Obj.sprite_index = ThunderMan_L_Spr){
    direction -= rotation;
}
else{
    instance_destroy();
}

image_angle = direction;

