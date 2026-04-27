
extends "res://01_window_base.gd"

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_placeholder("No item selected."))


func load_url_record(url_data: Dictionary) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title(str(url_data.get("title", "URL Check"))))

	var status_text: String = str(url_data.get("status", ""))
	if status_text != "":
		content.add_child(make_meta("Status: " + status_text))

	var description_text: String = str(url_data.get("description", ""))
	if description_text != "":
		content.add_child(make_body(description_text))
