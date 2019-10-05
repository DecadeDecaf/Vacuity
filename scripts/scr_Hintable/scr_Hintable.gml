var elementA = argument0
var elementB = argument1
var elementC = argument2

var orbA = ds_list_find_index(obj_Player.Orbs, elementA) != -1
var orbB = ds_list_find_index(obj_Player.Orbs, elementB) != -1
var orbC = ds_list_find_index(obj_Player.Orbs, elementC) != -1

if (orbA && orbB && !orbC) {
	scr_StartDialogue("Hint", "You can create something with the orb of " + string_lower(choose(elementA, elementB)) + ".")
	return true
}

return false