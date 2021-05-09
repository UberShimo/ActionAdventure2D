if(!place_meeting(x, y, Zombie_Obj)){
	// Anti Dash
    if(dashing){
        if(facingRight){
            x -= 2;
        }
        else{
            x += 2;
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
