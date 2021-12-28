x = random_range(Lightning_Director_Obj.x, Lightning_Director_Obj.x + 208);
y = Lightning_Director_Obj.y;

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

alarm[0] = 120;

