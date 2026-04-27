extends Button

@onready var highlight = $Highlight

func _ready():
	highlight.visible = false
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

func set_selected(selected: bool):
	highlight.visible = selected
