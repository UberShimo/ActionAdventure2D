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
	SPD = 0.2;
	global.HP -= 1;
	global.hurt = true;
	alarm[2] = 16;
    
	if(x < other.x){
	    hspeed = -1;
	    vspeed = -0.5;
	}
	else{
	    hspeed = 1;
	    vspeed = -0.5;
	}
}
