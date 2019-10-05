scr_Movement()

if (global.FrameCount % 5 == 0) {
	var partDir = random_range(0, 360)
	var partX = x + lengthdir_x(64, partDir)
	var partY = y + lengthdir_y(64, partDir)
	var part = instance_create_depth(partX, partY, depth - 1, obj_Particle)
	part.Direction = partDir + 180
}

var click = mouse_check_button_pressed(mb_left)

if (point_distance(x, y, mouse_x, mouse_y) < 95 && click && room == rm_Game) {
	if (global.Talking) {
		with (obj_Dialogue) {
			scr_StopDialogue()
			instance_destroy()
		}
	}
	scr_Hint()
}