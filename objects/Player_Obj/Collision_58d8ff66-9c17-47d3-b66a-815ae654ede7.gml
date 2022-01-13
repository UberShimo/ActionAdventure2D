if(other.object_index != Zombie_Obj
&& other.object_index != Punch_Sack_Obj
&& other.object_index != Wind_Ranger_Obj
&& other.object_index != Smoke_Plant_Obj
&& other.object_index != Special_Smoke_Plant_Obj
&& other.object_index != Stone_Face_Obj
&& other.object_index != Stone_Hand_R_Obj
&& other.object_index != Stone_Hand_L_Obj
&& other.object_index != Blue_Simon_Obj
&& other.object_index != Red_Simon_Obj
&& other.object_index != Green_Simon_Obj){
	// Anti Dash
    if(dashing){
        if(facingRight){
            x -= SPD;
        }
        else{
            x += SPD;
        }
    }
    
    dashing = false;
    SPD = 0.25;
    
    if(x < other.x){
        hspeed = -1;
    }
    else{
        hspeed = 1;
    }
    vspeed = -1.5;
}
