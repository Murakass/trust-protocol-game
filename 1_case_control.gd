#article window script

extends "res://01_window_base.gd"

signal author_clicked(author_id)
signal image_clicked(image_id)
signal quote_clicked(quote_id)
signal graph_clicked(graph_id)
signal source_clicked(source_id)
signal url_clicked(url_id)
signal title_clicked(article_id)
signal search_query_clicked(query)
signal external_link_clicked(url)

const TEXT_COLOR: Color = Color("1c1c1c")
const TITLE_SIZE: int = 18
const BODY_SIZE: int = 14
const META_SIZE: int = 10

var current_article_id: String = ""

var interactions_enabled := {
	"title": true,
	"author": true,
	"image": true,
	"quote": true,
	"graph": true,
	"source": true,
	"url": true
}



func set_interactions_enabled(state: Dictionary) -> void:
	interactions_enabled = state.duplicate()

func _on_external_link_clicked(url: String) -> void:
	external_link_clicked.emit(url)

func _on_image_clicked(image_id):
	image_clicked.emit(image_id)

func _on_author_clicked(author_id):
	author_clicked.emit(author_id)

func _on_quote_clicked(quote_id):
	quote_clicked.emit(quote_id)

func _on_graph_clicked(graph_id):
	graph_clicked.emit(graph_id)

func _on_source_clicked(source_id):
	source_clicked.emit(source_id)

func _on_url_clicked(url_id):
	url_clicked.emit(url_id)

func _on_title_clicked(article_id):
	title_clicked.emit(article_id)

func _on_search_query_clicked(query: String) -> void:
	search_query_clicked.emit(query)

func load_article(article_data: Dictionary) -> void:
	current_article_id = str(article_data.get("id", ""))
	clear_content()

	var elements: Array = article_data.get("content", [])
	for element in elements:
		var node: Control = build_element(element)
		if node != null:
			content.add_child(node)

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

func build_element(element: Dictionary) -> Control:
	var element_type: String = str(element.get("type", ""))

	match element_type:
		"title":
			return build_title(element)
		"author":
			return build_author_button(element)
		"body":
			return build_body(element)
		"meta":
			return build_meta_label(element)
		"search_query":
			return build_search_query_button(element)
		"external_link":
			return build_external_link_button(element)
		"url":
			return build_url_button(element)
		"source":
			return build_source_button(element)
		"date":
			return build_meta_label(element)
		"image":
			return build_image_button(element)
		"quote":
			return build_quote_button(element)
		"graph":
			return build_graph_button(element)
		"divider":
			return build_divider()
		_:
			push_warning("Unknown case element type: %s" % element_type)
			return null

func build_search_query_button(element: Dictionary) -> Button:
	var button := Button.new()
	var query: String = str(element.get("query", ""))

	button.text = query
	button.flat = false
	button.alignment = HORIZONTAL_ALIGNMENT_LEFT
	button.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.focus_mode = Control.FOCUS_NONE
	button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

	button.pressed.connect(func(): _on_search_query_clicked(query))

	return button

func build_title(element: Dictionary) -> Button:
	var button := Button.new()
	var article_id: String = current_article_id
	var enabled := bool(interactions_enabled.get("title", true))

	button.text = str(element.get("text", ""))
	button.flat = true
	button.alignment = HORIZONTAL_ALIGNMENT_LEFT
	button.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.add_theme_font_size_override("font_size", TITLE_SIZE)
	button.add_theme_color_override("font_color", TEXT_COLOR)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_title_clicked(article_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_meta_label(element: Dictionary) -> Label:
	var label := Label.new()
	label.text = str(element.get("text", ""))
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("font_size", META_SIZE)
	label.add_theme_color_override("font_color", TEXT_COLOR)
	return label

func build_author_button(element: Dictionary) -> Button:
	var button := Button.new()
	var author_id: String = str(element.get("id", ""))
	var enabled := bool(interactions_enabled.get("author", true))

	button.text = str(element.get("text", ""))
	button.flat = true
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.add_theme_font_size_override("font_size", META_SIZE)
	button.add_theme_color_override("font_color", TEXT_COLOR)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_author_clicked(author_id))
	else:
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE

	return button

func build_source_button(element: Dictionary) -> Button:
	var button := Button.new()
	var source_id: String = str(element.get("id", ""))
	var enabled := bool(interactions_enabled.get("source", true))

	button.text = str(element.get("text", ""))
	button.flat = true
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.add_theme_font_size_override("font_size", META_SIZE)
	button.add_theme_color_override("font_color", TEXT_COLOR)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_source_clicked(source_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_url_button(element: Dictionary) -> Button:
	var button := Button.new()
	var url_id: String = str(element.get("id", ""))
	var enabled := bool(interactions_enabled.get("url", true))

	button.text = str(element.get("text", ""))
	button.flat = true
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.add_theme_font_size_override("font_size", META_SIZE)
	button.add_theme_color_override("font_color", TEXT_COLOR)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_url_clicked(url_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_body(element: Dictionary) -> Label:
	var label := Label.new()
	label.text = str(element.get("text", ""))
	label.autowrap_mode = TextServer.AUTOWRAP_WORD
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("font_size", BODY_SIZE)
	label.add_theme_color_override("font_color", TEXT_COLOR)
	label.add_theme_constant_override("line_spacing", -4)
	return label

func build_quote_button(element: Dictionary) -> Button:
	var button := Button.new()
	var quote_id: String = str(element.get("id", ""))
	var enabled := bool(interactions_enabled.get("quote", true))

	button.text = str(element.get("text", ""))
	button.flat = true
	button.alignment = HORIZONTAL_ALIGNMENT_LEFT
	button.autowrap_mode = TextServer.AUTOWRAP_WORD
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.add_theme_font_size_override("font_size", BODY_SIZE)
	button.add_theme_color_override("font_color", TEXT_COLOR)
	button.add_theme_constant_override("line_spacing", -4)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_quote_clicked(quote_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_image_button(element: Dictionary) -> TextureButton:
	var image_id: String = str(element.get("id", ""))
	var image_path: String = get_asset_path(element)
	var enabled := bool(interactions_enabled.get("image", true))

	if image_path == "":
		push_warning("Image element missing path/src")
		return null

	var tex: Texture2D = load(image_path) as Texture2D
	if tex == null:
		push_warning("Failed to load image: %s" % image_path)
		return null

	var button := TextureButton.new()
	button.texture_normal = tex
	button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
	button.custom_minimum_size = Vector2(200, 120)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_image_clicked(image_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_graph_button(element: Dictionary) -> TextureButton:
	var graph_id: String = str(element.get("id", ""))
	var graph_path: String = get_asset_path(element)
	var enabled := bool(interactions_enabled.get("graph", true))

	if graph_path == "":
		push_warning("Graph element missing path/src")
		return null

	var tex: Texture2D = load(graph_path) as Texture2D
	if tex == null:
		push_warning("Failed to load graph: %s" % graph_path)
		return null

	var button := TextureButton.new()
	button.texture_normal = tex
	button.ignore_texture_size = true
	button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
	button.custom_minimum_size = Vector2(160, 90)
	button.focus_mode = Control.FOCUS_NONE

	if enabled:
		button.mouse_filter = Control.MOUSE_FILTER_STOP
		button.pressed.connect(func(): _on_graph_clicked(graph_id))
		button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	else:
		button.mouse_filter = Control.MOUSE_FILTER_IGNORE
		button.mouse_default_cursor_shape = Control.CURSOR_ARROW

	return button

func build_divider() -> Control:
	var wrapper := VBoxContainer.new()
	wrapper.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	var spacer_top := Control.new()
	spacer_top.custom_minimum_size = Vector2(0, 8)

	var line := HSeparator.new()
	line.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	var spacer_bottom := Control.new()
	spacer_bottom.custom_minimum_size = Vector2(0, 8)

	wrapper.add_child(spacer_top)
	wrapper.add_child(line)
	wrapper.add_child(spacer_bottom)

	return wrapper

func get_asset_path(element: Dictionary) -> String:
	if element.has("path"):
		return str(element["path"])
	if element.has("src"):
		return str(element["src"])
	return ""

func build_external_link_button(element: Dictionary) -> Button:
	var button := Button.new()
	var label_text: String = str(element.get("label", "Open link"))
	var url: String = str(element.get("url", ""))

	button.text = label_text
	button.flat = false
	button.alignment = HORIZONTAL_ALIGNMENT_LEFT
	button.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.focus_mode = Control.FOCUS_NONE
	button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

	button.pressed.connect(func(): _on_external_link_clicked(url))

	return button
