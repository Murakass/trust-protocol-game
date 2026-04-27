
extends Panel

@onready var top_bar = $TopBar
@onready var content = $Body/ScrollContainer/Content
@onready var scroll_container = $Body/ScrollContainer
@onready var resize_handle = $ResizeHandle

var input_locked := false
var dragging := false
var drag_offset := Vector2.ZERO

var resizing := false
var resize_start_mouse := Vector2.ZERO
var resize_start_size := Vector2.ZERO
var min_window_size := Vector2(220, 140)

var bottom_safe_margin := 48.0
var min_visible_top_bar_width := 120.0
var min_visible_top_bar_height := 24.0

func _ready():
	top_bar.gui_input.connect(_on_top_bar_gui_input)
	resize_handle.gui_input.connect(_on_resize_handle_gui_input)
	scroll_container.resized.connect(_update_content_width)
	resize_handle.mouse_default_cursor_shape = Control.CURSOR_FDIAGSIZE
	_update_content_width()

func _update_content_width():
	content.custom_minimum_size.x = scroll_container.size.x - 24

func _on_top_bar_gui_input(event):
	if input_locked:
		return
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
			var new_position := get_global_mouse_position() - drag_offset
			var viewport_rect := get_viewport_rect()

			var max_x := viewport_rect.size.x - min_visible_top_bar_width
			var max_y := viewport_rect.size.y - bottom_safe_margin - min_visible_top_bar_height
			var min_x := -size.x + min_visible_top_bar_width
			var min_y := 0.0

			new_position.x = clamp(new_position.x, min_x, max_x)
			new_position.y = clamp(new_position.y, min_y, max_y)

			global_position = new_position

func _on_resize_handle_gui_input(event):
	if input_locked:
		return
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				resizing = true
				resize_start_mouse = get_global_mouse_position()
				resize_start_size = size
				move_to_front()
			else:
				resizing = false

	elif event is InputEventMouseMotion:
		if resizing:
			var mouse_delta = get_global_mouse_position() - resize_start_mouse
			var new_size = resize_start_size + mouse_delta

			size = Vector2(
				max(min_window_size.x, new_size.x),
				max(min_window_size.y, new_size.y)
			)

			_update_content_width()

func set_input_locked(state: bool) -> void:
	input_locked = state

func make_placeholder(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	var settings := LabelSettings.new()
	settings.font_size = 16
	settings.font_color = Color("666666")
	settings.font = load("res://Assets/fonts/zig.regular.ttf")

	label.label_settings = settings
	return label

func make_title(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("font_size", 18)
	label.add_theme_color_override("font_color", Color("1c1c1c"))
	return label

func make_meta(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("font_size", 14)
	label.add_theme_color_override("font_color", Color("1c1c1c"))
	return label

func make_body(text: String) -> Label:
	var label := Label.new()
	label.text = text
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("font_size", 14)
	label.add_theme_color_override("font_color", Color("1c1c1c"))
	label.add_theme_constant_override("line_spacing", -4)
	return label
