if(!place_meeting(x, y, Zombie_Obj)){
	// Anti Dash
    if(dashing){
        if(facingRight){
            x -= 4;
        }
        else{
            x += 4;
        }
    }
    
    dashing = false;
    SPD = 0;
    
    if(x < other.x){
        hspeed = -2;
        vspeed = -2;
    }
    else{
        hspeed = 2;
        vspeed = -2;
    }
}
