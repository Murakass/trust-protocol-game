extends RefCounted
class_name SaveData

const SAVE_PATH := "user://savegame.cfg"

static func save_game(data: Dictionary) -> bool:
	var config := ConfigFile.new()

	for key in data.keys():
		config.set_value("save", key, data[key])

	return config.save(SAVE_PATH) == OK

static func load_game() -> Dictionary:
	var config := ConfigFile.new()
	var err := config.load(SAVE_PATH)

	if err != OK:
		return {}

	return {
		"current_day": config.get_value("save", "current_day", 1),
		"current_case_index": config.get_value("save", "current_case_index", 0),
		"day_correct": config.get_value("save", "day_correct", 0),
		"day_wrong": config.get_value("save", "day_wrong", 0),
		"game_state": config.get_value("save", "game_state", {}),
		"current_date": config.get_value("save", "current_date", {"day": 1, "month": 1, "year": 2001}),
		"current_minutes": config.get_value("save", "current_minutes", 480.0),
		"persistent_progress": config.get_value("save", "persistent_progress", {})
	}

static func has_save() -> bool:
	return FileAccess.file_exists(SAVE_PATH)

static func delete_save() -> void:
	if FileAccess.file_exists(SAVE_PATH):
		DirAccess.remove_absolute(SAVE_PATH)
