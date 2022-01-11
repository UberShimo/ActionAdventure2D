ini_open("music.ini");
vol = ini_read_real("volume", "value", 0);
ini_close();

image_index = vol*10;