var interact = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_space)

if (FrameCount > 25) {
	if (Progress < string_length(Message)) {
		if (interact) {
			Progress = string_length(Message)
		} else {
			Progress += 0.5
		}
	} else {
		if (interact) {
			ds_list_delete(Messages, 0)
			if (ds_list_size(Messages) > 0) {
				Progress = 0
				Message = ds_list_find_value(Messages, 0)
				scr_Wrap()
			} else {
				scr_StopDialogue()
				instance_destroy()
			}
		}
	}
}

FrameCount += 1