extends Panel

signal closed

@onready var title_label = $MarginContainer/VBoxContainer/TitleLabel
@onready var verdict_label = $MarginContainer/VBoxContainer/VerdictLabel
@onready var explanation_label = $MarginContainer/VBoxContainer/ExplanationLabel
@onready var continue_label = $MarginContainer/VBoxContainer/ContinueLabel

func _ready():
	var old_pos = position
	position = Vector2(-2000, -2000)
	show()

	await get_tree().process_frame
	size.y = $MarginContainer.get_combined_minimum_size().y

	hide()
	position = old_pos

func show_notification(verdict_text: String, explanation: String, is_correct: bool):
	title_label.add_theme_font_size_override("font_size", 10)
	title_label.add_theme_color_override("font_color", Color("c9c9c9"))
	title_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	verdict_label.add_theme_font_size_override("font_size", 18)
	verdict_label.add_theme_color_override("font_color", Color("c9c9c9"))
	verdict_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	verdict_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART

	explanation_label.add_theme_font_size_override("font_size", 14)
	explanation_label.add_theme_color_override("font_color", Color("c9c9c9"))
	explanation_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	explanation_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	explanation_label.add_theme_constant_override("line_spacing", -4)

	continue_label.add_theme_font_size_override("font_size", 10)
	continue_label.add_theme_color_override("font_color", Color("c9c9c9"))
	continue_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	if is_correct:
		verdict_label.add_theme_color_override("font_color", Color("559f55ff"))
	else:
		verdict_label.add_theme_color_override("font_color", Color("a65b5bff"))

	title_label.text = "VERDICT RESULT"
	verdict_label.text = verdict_text
	explanation_label.text = explanation
	continue_label.text = "[ click to continue ]"
	
	await get_tree().process_frame
	await get_tree().process_frame
	size.y = $MarginContainer.get_combined_minimum_size().y
	
	show()
	move_to_front()

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		hide()
		closed.emit()
