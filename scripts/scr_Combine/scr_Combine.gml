var orbA = argument0
var orbB = argument1
var combined = ""

var spawnX = mouse_x
var spawnY = mouse_y

if (scr_Combinable(orbA, orbB, "Earth", "Water")) {
	combined = "Mud"
	spawnX = 3720
	spawnY = 300
}

if (scr_Combinable(orbA, orbB, "Earth", "Air")) {
	combined = "Dust"
	spawnX = 1700
	spawnY = 800
}

if (scr_Combinable(orbA, orbB, "Earth", "Fire")) {
	combined = "Lava"
	spawnX = 560
	spawnY = 980
}

if (scr_Combinable(orbA, orbB, "Air", "Water")) {
	combined = "Steam"
	spawnX = 1150
	spawnY = 700
}

if (scr_Combinable(orbA, orbB, "Air", "Fire")) {
	combined = "Energy"
	spawnX = 900
	spawnY = 320
}

if (scr_Combinable(orbA, orbB, "Dust", "Fire")) {
	combined = "Ash"
	spawnX = 200
	spawnY = 650
}

if (scr_Combinable(orbA, orbB, "Lava", "Air")) {
	combined = "Stone"
	spawnX = 2320
	spawnY = 840
}

if (scr_Combinable(orbA, orbB, "Fire", "Stone")) {
	combined = "Metal"
	spawnX = 1020
	spawnY = 100
}

if (scr_Combinable(orbA, orbB, "Water", "Stone")) {
	combined = "Sand"
	spawnX = 2100
	spawnY = 500
}

if (scr_Combinable(orbA, orbB, "Fire", "Sand")) {
	combined = "Glass"
	spawnX = 1340
	spawnY = 380
}

if (scr_Combinable(orbA, orbB, "Mud", "Sand")) {
	combined = "Clay"
	spawnX = 1000
	spawnY = 460
}

if (scr_Combinable(orbA, orbB, "Fire", "Clay")) {
	combined = "Bricks"
	spawnX = 1700
	spawnY = 360
}

if (scr_Combinable(orbA, orbB, "Gravity", "Emptiness")) {
	combined = "You"
	spawnX = obj_Player.x
	spawnY = obj_Player.y - 1280
}

with (obj_Dialogue) {
	scr_StopDialogue()
	instance_destroy()
}

if (combined != "") {
	var orb = asset_get_index("obj_" + combined + "Orb")
	if (!instance_exists(orb) && ds_list_find_index(obj_Player.Orbs, combined) == -1) {
		instance_create_depth(spawnX, spawnY, depth, orb)
		scr_StartDialogue(combined, "You created the orb of " + string_lower(combined) + ".")
	} else if (ds_list_find_index(obj_Player.Orbs, combined) == -1) {
		scr_StartDialogue(combined, "You already created the orb of " + string_lower(combined) + ". Find it in the world around you.")
	} else {
		scr_StartDialogue(combined, "You already possess the orb of " + string_lower(combined) + ".")
	}
} else {
	scr_StartDialogue("Incompatible", "Nothing happened.")
}