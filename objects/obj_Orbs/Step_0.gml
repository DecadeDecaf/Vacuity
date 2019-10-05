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
	var steam = (ds_list_find_index(obj_Player.Orbs, "Steam") != -1)
	var wind = (ds_list_find_index(obj_Player.Orbs, "Wind") != -1)
	var clay = (ds_list_find_index(obj_Player.Orbs, "Clay") != -1)
	var bricks = (ds_list_find_index(obj_Player.Orbs, "Bricks") != -1)
	var glass = (ds_list_find_index(obj_Player.Orbs, "Glass") != -1)
	var grav = (ds_list_find_index(obj_Player.Orbs, "Gravity") != -1)
	var metal = (ds_list_find_index(obj_Player.Orbs, "Metal") != -1)
	var energy = (ds_list_find_index(obj_Player.Orbs, "Energy") != -1)
	var ash = (ds_list_find_index(obj_Player.Orbs, "Ash") != -1)
	var emptiness = (ds_list_find_index(obj_Player.Orbs, "Emptiness") != -1)
	if (steam && !wind) {
		if (!instance_exists(obj_WindOrb)) {
			instance_create_depth(1600, 1024, depth, obj_WindOrb)
		}
	}
	if (clay && bricks && glass && !grav) {
		ds_list_add(obj_Player.Backdrops, "Bridge")
		if (!instance_exists(obj_GravityOrb)) {
			instance_create_depth(3200, 320, depth, obj_GravityOrb)
		}
	}
	if (metal && energy) {
		ds_list_add(obj_Player.Backdrops, "Dam")
	}
	if (ash && wind) {
		ds_list_add(obj_Player.Backdrops, "Black")
	}
	if (metal && energy && ash && wind && !emptiness) {
		if (!instance_exists(obj_EmptinessOrb)) {
			instance_create_depth(128, 880, depth, obj_EmptinessOrb)
		}
	}
	if (Name == "You") {
		obj_Control.Shake = true
	}
	instance_destroy()
}