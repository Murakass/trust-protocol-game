
extends "res://01_window_base.gd"

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_placeholder("No item selected."))

func load_author_record(author_data: Dictionary) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title(str(author_data.get("name", "Author"))))

	var portrait_path: String = str(author_data.get("portrait", ""))
	if portrait_path != "":
		var tex: Texture2D = load(portrait_path)
		if tex:
			var img := TextureRect.new()
			img.texture = tex
			img.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
			img.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
			img.custom_minimum_size = Vector2(0, 120)
			img.size_flags_horizontal = Control.SIZE_EXPAND_FILL
			content.add_child(img)

	var status_text: String = str(author_data.get("status", ""))
	if status_text != "":
		content.add_child(make_meta("Status: " + status_text))

	var description_text: String = str(author_data.get("description", ""))
	if description_text != "":
		content.add_child(make_body(description_text))
