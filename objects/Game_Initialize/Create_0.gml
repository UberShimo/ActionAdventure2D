global.HP = 8;
global.dash = 8;
global.hurt = false;
global.warp = 0;
global.warpFacingRight = true;
global.weapon = "sword";
global.inventoryIsOpen = false;

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

audio_group_load(Music);
room_goto(Home);