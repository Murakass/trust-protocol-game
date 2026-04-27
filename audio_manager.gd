extends Node

var is_muted := false

func toggle_audio():
	is_muted = !is_muted
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), is_muted)
