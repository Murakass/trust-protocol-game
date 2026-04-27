extends Panel

signal continue_pressed

@onready var title_label = $MarginContainer/VBoxContainer/TitleLabel
@onready var stats_label = $MarginContainer/VBoxContainer/StatsLabel
@onready var continue_btn = $MarginContainer/VBoxContainer/ContinueBtn

func _ready():
	hide()
	
	continue_btn.pressed.connect(_on_continue_btn_pressed)

func show_summary(day: int, correct: int, wrong: int):
	title_label.text = "DAY %d COMPLETE" % day
	stats_label.text = "Correct: %d\nWrong: %d" % [correct, wrong]
	
	show()
	move_to_front()

func _on_continue_btn_pressed():
	hide()
	continue_pressed.emit()
