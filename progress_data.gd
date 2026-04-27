extends RefCounted
class_name ProgressData

const SAVE_PATH := "user://progress.cfg"

static func load_progress() -> Dictionary:
	var config := ConfigFile.new()
	var err := config.load(SAVE_PATH)

	if err != OK:
		return {
			"playthrough_count": 0,
			"endings_reached": []
		}

	return {
		"playthrough_count": int(config.get_value("progress", "playthrough_count", 0)),
		"endings_reached": config.get_value("progress", "endings_reached", [])
	}

static func save_progress(progress: Dictionary) -> void:
	var config := ConfigFile.new()

	config.set_value("progress", "playthrough_count", int(progress.get("playthrough_count", 0)))
	config.set_value("progress", "endings_reached", progress.get("endings_reached", []))

	config.save(SAVE_PATH)
