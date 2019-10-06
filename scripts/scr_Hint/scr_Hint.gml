if (instance_exists(obj_Orbs)) {
	scr_StartDialogue("Hint", "Try exploring the world around you.")
} else if (scr_Hintable("Earth", "Water", "Mud")) {
	exit
} else if (scr_Hintable("Earth", "Air", "Dust")) {
	exit
} else if (scr_Hintable("Earth", "Fire", "Lava")) {
	exit
} else if (scr_Hintable("Air", "Water", "Steam")) {
	exit
} else if (scr_Hintable("Air", "Fire", "Energy")) {
	exit
} else if (scr_Hintable("Dust", "Fire", "Ash")) {
	exit
} else if (scr_Hintable("Lava", "Air", "Stone")) {
	exit
} else if (scr_Hintable("Fire", "Stone", "Metal")) {
	exit
} else if (scr_Hintable("Water", "Stone", "Sand")) {
	exit
} else if (scr_Hintable("Fire", "Sand", "Glass")) {
	exit
} else if (scr_Hintable("Mud", "Sand", "Clay")) {
	exit
} else if (scr_Hintable("Fire", "Clay", "Bricks")) {
	exit
} else if (scr_Hintable("Metal", "Energy", "Dam")) {
	exit
} else if (scr_Hintable("Bricks", "Glass", "Bridge")) {
	exit
} else if (scr_Hintable("Ash", "Wind", "Black")) {
	exit
} else if (scr_Hintable("Gravity", "Emptiness", "You")) {
	exit
} else {
	scr_StartDialogue("Hint", "Try exploring the world around you.")
}