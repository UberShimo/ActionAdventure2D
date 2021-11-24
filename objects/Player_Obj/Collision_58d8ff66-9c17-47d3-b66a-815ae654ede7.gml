if(other.object_index != Zombie_Obj && other.object_index != Skeleton_Obj){
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
    SPD = 0;
    
    if(x < other.x){
        hspeed = -1;
        vspeed = -1;
    }
    else{
        hspeed = 1;
        vspeed = -1;
    }
}
