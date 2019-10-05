if (room == rm_Game) {
	audio_stop_all()
	audio_play_sound(snd_Game, 1, true)
	scr_HideBackground("Mud")
	scr_HideBackground("Dust")
	scr_HideBackground("Ash")
	scr_HideBackground("Bricks")
	scr_HideBackground("Black")
	scr_HideBackground("Energy")
	scr_HideBackground("Dam")
	scr_HideBackground("Metal")
	scr_HideBackground("Lava")
	scr_HideBackground("Stone")
	scr_HideBackground("Steam")
	scr_HideBackground("Bridge")
	scr_HideBackground("Glass")
	scr_HideBackground("Clay")
	scr_HideBackground("Sand")
}

if (room == rm_Ending) {
	audio_stop_all()
	audio_play_sound(snd_Intro, 1, true)
	scr_StopDialogue()
	scr_StartDialogue("Vacuity", "Thank you for playing.")
}