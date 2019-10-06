Speed += 0.1
Speed = min(Speed, 16)

var dis = point_distance(x, y, obj_Player.x, obj_Player.y)

if (dis < 128) {
	image_xscale -= 0.1
	image_yscale -= 0.1
	image_alpha -= 0.1
	image_xscale = max(0, image_xscale)
	image_yscale = max(0, image_yscale)
	image_alpha = max(0, image_alpha)
}

if (Ranged || dis < 128) {
	var dir = point_direction(x, y, obj_Player.x, obj_Player.y)
	x += lengthdir_x(Speed, dir)
	y += lengthdir_y(Speed, dir)
}

dis = point_distance(x, y, obj_Player.x, obj_Player.y)

if (dis < 10 && image_xscale <= 0) {
	audio_play_sound(snd_Orb, 1, false)
	var slot = ds_list_find_index(obj_Player.Orbs, Name)
	if (slot == -1) {
		ds_list_add(obj_Player.Orbs, Name)
		ds_list_add(obj_Player.Backdrops, Name)
	}
	scr_SpecialOrbs()
	if (Name == "You") {
		obj_Control.Shake = true
	}
	instance_destroy()
}