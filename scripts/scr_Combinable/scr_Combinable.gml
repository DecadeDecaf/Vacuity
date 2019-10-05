var orbA = argument0
var orbB = argument1
var elementA = argument2
var elementB = argument3

if ((orbA == elementA && orbB == elementB) || (orbA == elementB && orbB == elementA)) {
	return true
}

return false