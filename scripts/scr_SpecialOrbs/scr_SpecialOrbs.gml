var steam = (ds_list_find_index(obj_Player.Orbs, "Steam") != -1)
var wind = (ds_list_find_index(obj_Player.Orbs, "Wind") != -1)
var black = (ds_list_find_index(obj_Player.Backdrops, "Black") != -1)
var dam = (ds_list_find_index(obj_Player.Backdrops, "Dam") != -1)
var emptiness = (ds_list_find_index(obj_Player.Orbs, "Emptiness") != -1)
var bridge = (ds_list_find_index(obj_Player.Backdrops, "Bridge") != -1)
var grav = (ds_list_find_index(obj_Player.Orbs, "Gravity") != -1)

if (steam && !wind) {
	if (!instance_exists(obj_WindOrb)) {
		instance_create_depth(1600, 1020, depth, obj_WindOrb)
	}
}

if (black && dam && !emptiness) {
	if (!instance_exists(obj_EmptinessOrb)) {
		instance_create_depth(120, 880, depth, obj_EmptinessOrb)
	}
}

if (bridge && !grav) {
	if (!instance_exists(obj_GravityOrb)) {
		instance_create_depth(3200, 320, depth, obj_GravityOrb)
	}
}