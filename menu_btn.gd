extends Button

@onready var iconr = $IconR
@onready var label = $Label

var base_pos_icon: Vector2
var base_pos_label: Vector2

func _ready():
	base_pos_icon = iconr.position
	base_pos_label = label.position
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	

func _on_mouse_entered():
	iconr.position = base_pos_icon + Vector2(1, 0)
	label.position = base_pos_label + Vector2(1, 0)
	iconr.modulate = Color(1.1, 1.1, 1.1)
	label.modulate = Color(1.0, 1.0, 1.0)

func _on_mouse_exited():
	iconr.position = base_pos_icon
	label.position = base_pos_label
	iconr.modulate = Color(1, 1, 1)
	label.modulate = Color(1, 1, 1)

func _on_button_down():
	iconr.position = base_pos_icon + Vector2(1, 1)
	label.position = base_pos_label + Vector2(1, 1)

func _on_button_up():
	if is_hovered():
		iconr.position = base_pos_icon + Vector2(1, 0)
		label.position = base_pos_label + Vector2(1, 0)
	else:
		iconr.position = base_pos_icon
		label.position = base_pos_label
