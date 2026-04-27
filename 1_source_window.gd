extends "res://01_window_base.gd"

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_placeholder("No item selected."))

func load_source_record(source_data: Dictionary) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title(str(source_data.get("name", "Publisher Check"))))

	var status_text: String = str(source_data.get("status", ""))
	if status_text != "":
		content.add_child(make_meta("Status: " + status_text))

	var description_text: String = str(source_data.get("description", ""))
	if description_text != "":
		content.add_child(make_body(description_text))
