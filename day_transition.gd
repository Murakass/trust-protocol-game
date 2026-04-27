extends ColorRect

signal finished

@onready var day_label = $DayLabel

func _ready():
	visible = false
	modulate = Color(1, 1, 1, 0)
	day_label.modulate = Color(1, 1, 1, 0)

func play_transition(day_number: int):
	day_label.text = "DAY %d" % day_number
	visible = true
	modulate = Color(1, 1, 1, 0)
	day_label.modulate = Color(1, 1, 1, 0)

	var tween = create_tween()

	tween.tween_property(self, "modulate:a", 1.0, 0)
	tween.tween_interval(0.15)
	tween.tween_property(day_label, "modulate:a", 1.0, 0.4)

	tween.tween_interval(1.2)

	tween.tween_property(day_label, "modulate:a", 0.0, 0.4)
	tween.parallel().tween_property(self, "modulate:a", 0.0, 0.8)

	await tween.finished

	visible = false
	finished.emit()
