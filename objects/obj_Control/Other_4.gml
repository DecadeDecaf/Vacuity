if (room == rm_Game) {
	audio_stop_all()
	audio_play_sound(snd_Game, 1, true)
}

if (room == rm_Ending) {
	audio_stop_all()
	audio_play_sound(snd_Intro, 1, true)
	scr_StopDialogue()
	scr_StartDialogue("Vacuity", "Thank you for playing.")
}