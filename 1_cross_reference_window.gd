
extends "res://01_window_base.gd"

func clear_content() -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_placeholder("No item selected."))

func load_cross_reference_record(cross_ref_data: Dictionary) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title(str(cross_ref_data.get("title", "Cross Reference"))))

	var entries: Array = cross_ref_data.get("entries", [])
	for entry in entries:
		content.add_child(make_body("• " + str(entry)))
