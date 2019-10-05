if (global.Talking) {
	exit
}

var title = argument0
var message = argument1

global.Talking = true

var dialogue = instance_create_depth(960, 992, -1000, obj_Dialogue)

dialogue.Title = title
dialogue.Message = message

with (dialogue) {
	scr_Wrap()
}