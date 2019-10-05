global.FrameCount += 1

var f = keyboard_check_pressed(ord("F"))

if (f) {
	var full = window_get_fullscreen()
	window_set_fullscreen(!full)

	if (full) {
		window_set_size(960, 540)
	}
}

if (!global.Talking && global.FrameCount >= 180) {
	switch (DialogueProgress) {
		case 0: scr_StartDialogue("Vacuity", "Welcome. Press the spacebar or E to continue."); DialogueProgress++; break
		case 1: scr_StartDialogue("Vacuity", "Use the arrow keys or WASD to move."); DialogueProgress++; break
		case 2: scr_StartDialogue("Vacuity", "Press F to switch in and out of fullscreen."); DialogueProgress++; break
		case 3: scr_StartDialogue("Vacuity", "Vacuity and its art and music were made by DecadeDecaf in 48 hours for the Ludum Dare 45. I hope you enjoy!"); DialogueProgress++; break
		case 4: instance_create_depth(960, 240, depth, obj_Logo); DialogueProgress++; break
	}
}

if (Shake) {
	if (audio_is_playing(snd_Intro)) {
		audio_stop_all()
		audio_play_sound(snd_Transition, 1, false)
	}
	global.Screenshake += 1
	if (global.Screenshake > 372) {
		room_goto_next()
		global.Screenshake = 0
		Shake = false
	}
}

for (var i = 0; i < ds_list_size(obj_Player.Backdrops); i++) {
	var orb = ds_list_find_value(obj_Player.Backdrops, i)
	var lay = layer_get_id(orb)
	var back = layer_background_get_id(lay)
	layer_background_alpha(back, layer_background_get_alpha(back) + 0.05)
}