extends Panel

@onready var top_bar = $TopBar

var dragging := false
var drag_offset := Vector2.ZERO

func _ready():
	top_bar.gui_input.connect(_on_top_bar_gui_input)

func _on_top_bar_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				dragging = true
				drag_offset = get_global_mouse_position() - global_position
				move_to_front()
			else:
				dragging = false

	elif event is InputEventMouseMotion:
		if dragging:
			global_position = get_global_mouse_position() - drag_offset
