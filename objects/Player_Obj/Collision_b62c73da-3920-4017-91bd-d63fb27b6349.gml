if(!global.hurt){
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
	global.HP -= 1;
	global.hurt = true;
	alarm[2] = 8;
    
	if(x < other.x){
	    hspeed = -0.2;
	    vspeed = -0.2;
	}
	else{
	    hspeed = 0.2;
	    vspeed = -0.2;
	}
}
