extends "res://01_window_base.gd"

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_placeholder("No item selected."))

func load_quote_record(quote_data: Dictionary) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title(str(quote_data.get("title", "Quote"))))

	var speaker_text: String = str(quote_data.get("speaker", ""))
	if speaker_text != "":
		content.add_child(make_meta("Speaker: " + speaker_text))

	var original_text: String = str(quote_data.get("original", ""))
	if original_text != "":
		content.add_child(make_body("Original: " + original_text))
