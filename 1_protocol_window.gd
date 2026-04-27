extends "res://01_window_base.gd"

func load_protocol(day: int, items: Array) -> void:
	for child in content.get_children():
		child.queue_free()

	content.add_child(make_title("DAY %d VERIFICATION PROTOCOL" % day))

	for item in items:
		content.add_child(make_body("- " + str(item)))
