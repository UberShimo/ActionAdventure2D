//Initialize
event_inherited();
HP = 80;
maxHP = HP;
action = "none";
hpBarWidth = 32;
ATK = true;
meleeRange = 0;

startAction = "FaceBlaze";

global.isControllable = false;
audio_stop_all();

instance_destroy(Worm_Obj);

alarm[3] = 120;