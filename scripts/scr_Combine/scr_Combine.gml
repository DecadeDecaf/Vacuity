var orbA = argument0
var orbB = argument1
var combined = ""

var spawnX = mouse_x
var spawnY = mouse_y

if (scr_Combinable(orbA, orbB, "Earth", "Water")) {
	combined = "Mud"
}

if (scr_Combinable(orbA, orbB, "Earth", "Air")) {
	combined = "Dust"
}

if (scr_Combinable(orbA, orbB, "Earth", "Fire")) {
	combined = "Lava"
}

if (scr_Combinable(orbA, orbB, "Air", "Water")) {
	combined = "Steam"
}

if (scr_Combinable(orbA, orbB, "Air", "Fire")) {
	combined = "Energy"
}

if (scr_Combinable(orbA, orbB, "Dust", "Fire")) {
	combined = "Ash"
}

if (scr_Combinable(orbA, orbB, "Lava", "Air")) {
	combined = "Stone"
}

if (scr_Combinable(orbA, orbB, "Fire", "Stone")) {
	combined = "Metal"
}

if (scr_Combinable(orbA, orbB, "Water", "Stone")) {
	combined = "Sand"
}

if (scr_Combinable(orbA, orbB, "Fire", "Sand")) {
	combined = "Glass"
}

if (scr_Combinable(orbA, orbB, "Mud", "Sand")) {
	combined = "Clay"
}

if (scr_Combinable(orbA, orbB, "Fire", "Clay")) {
	combined = "Bricks"
}

if (scr_Combinable(orbA, orbB, "Gravity", "Emptiness")) {
	combined = "You"
}

with (obj_Dialogue) {
	scr_StopDialogue()
	instance_destroy()
}

if (combined != "") {
	var orb = asset_get_index("obj_" + combined + "Orb")
	instance_create_depth(spawnX, spawnY, depth, orb)
	scr_StartDialogue(combined, "You created the orb of " + string_lower(combined) + ".")
} else {
	scr_StartDialogue("Incompatible", "Nothing happened.")
}