extends TextureRect

signal finished

@onready var ending_text = $EndingText

var current_tween: Tween

func _ready() -> void:
	hide()
	modulate.a = 0.0

func play_ending(ending_data: Dictionary) -> void:
	var bg_path: String = str(ending_data.get("background", ""))
	if bg_path != "":
		var tex := load(bg_path) as Texture2D
		if tex != null:
			texture = tex

	ending_text.text = str(ending_data.get("text", ""))
	if current_tween:
		current_tween.kill()

	modulate.a = 0.0
	show()
	move_to_front()

	current_tween = create_tween()
	current_tween.tween_property(self, "modulate:a", 1.0, 1.0)
	current_tween.tween_interval(4.0)
	current_tween.tween_property(self, "modulate:a", 0.0, 1.0)
	current_tween.finished.connect(_on_tween_finished)

func _on_tween_finished() -> void:
	hide()
	finished.emit()
