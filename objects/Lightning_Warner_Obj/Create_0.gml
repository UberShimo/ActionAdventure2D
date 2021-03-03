x = random_range(16, 224);
y = 112;

while(place_meeting(x, y, Lightning_Warner_Obj) && x >= 20 && x <= 220){
    if(!place_meeting(x+16, y, Lightning_Warner_Obj)){
        x += 4;
    }
    else if(!place_meeting(x-16, y, Lightning_Warner_Obj)){
        x -= 4;
    }
    else{
        instance_destroy();
    }
}

alarm[0] = 60;

