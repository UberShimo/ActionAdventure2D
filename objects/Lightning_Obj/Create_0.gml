event_inherited();

y = Lightning_Director_Obj.y - 112;
alarm[0] = 8;

vLaunch = 1;
hLaunch = 0;
projectile = true;

if(!audio_is_playing(Thunder_Sd)){
	audio_play_sound(Thunder_Sd, 0, false);
}