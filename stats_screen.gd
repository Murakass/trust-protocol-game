extends Control

signal main_menu_pressed

@onready var stats_text: TextEdit = $Panel/StatsText
@onready var title_label: Label = $Panel/Title
@onready var menu_button: Button = $Panel/MenuButton

func _ready() -> void:
	hide()
	stats_text.editable = false
	menu_button.pressed.connect(func(): main_menu_pressed.emit())

func show_stats(run_stats: Dictionary, persistent_progress: Dictionary) -> void:
	var total_correct: int = int(run_stats.get("total_correct", 0))
	var total_wrong: int = int(run_stats.get("total_wrong", 0))
	var total_articles: int = total_correct + total_wrong

	var playthrough_count: int = int(persistent_progress.get("playthrough_count", 0))
	var endings_reached: Array = persistent_progress.get("endings_reached", [])

	var lines: Array[String] = []

	lines.append("Total correct article guesses: %d / %d" % [total_correct, total_articles])

	lines.append("")
	lines.append("Playthroughs completed: %d" % playthrough_count)
	lines.append("Endings reached: %d / 4" % endings_reached.size())

	stats_text.text = "\n".join(lines)

	show()
	move_to_front()
