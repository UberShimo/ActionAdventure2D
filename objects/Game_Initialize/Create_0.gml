global.singleWeaponMode = false;
global.hardMode = false;
global.controllerIsUsed = false;

global.HP = 8;
global.dash = 8;
global.hurt = false;
global.warp = 0;
global.warpFacingRight = true;
global.weapon = "sword";
global.inventoryIsOpen = false;
global.isControllable = false;
global.blackScreen = BLACK_SCREEN_Spr;
global.blackScreenAlpha = 1;
global.blackScreenAlphaChange = -1/180;
global.blackScreen2 = noone;
global.blackScreen2Alpha = 0;
global.blackScreen2AlphaChange = 0;

global.hasSword = true;
global.hasKnife = false;
global.hasSpear = false;
global.hasAxe = false;
global.hasKatana = false;
global.hasRapier = false;
global.hasScythe = false;
global.hasBoomHammer = false;

global.forestShortcutFound = false;

global.ghostSlain = false;
global.trollSlain = false;
global.golemSlain = false;
global.priestSlain = false;
global.lavaSnakeSlain = false;
global.windLeaderSlain = false;
global.thunderManSlain = false;
global.blazeManSlain = false;
global.stoneFaceSlain = false;

global.currentMusic = Wind_Mu;

audio_group_load(Music);

audio_sound_gain(Home_Mu, 0, 0);
audio_sound_gain(Wind_Mu, 0, 0);
audio_sound_gain(Forest_Mu, 0, 0);
audio_sound_gain(Mauntain_Mu, 0, 0);
audio_sound_gain(ThunderMan_Mu, 0, 0);
audio_sound_gain(Church_Mu, 0, 0);
audio_sound_gain(Dungeon_Mu, 0, 0);
audio_sound_gain(BlazeMan_Mu, 0, 0);
audio_sound_gain(Graveyard_Mu, 0, 0);
audio_sound_gain(Prezi_Village_Mu, 0, 0);
audio_sound_gain(StoneFace_Mu, 0, 0);
audio_sound_gain(Nightmare_Mu, 0, 0);

if(!file_exists("music.ini")){
	ini_open("music.ini");
	ini_write_real("volume", "value", 1);
	ini_close();
}

room_goto(Control_Picker_Room);