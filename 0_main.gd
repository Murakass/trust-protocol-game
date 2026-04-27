#0_main.gd

extends Control

@onready var menu = $MenuPanel

@onready var menu_btn = $Taskbar/MenuBtn
@onready var audio_label = $MenuPanel/MarginContainer/VBoxContainer/AudioBtn/Label

@onready var audio_btn = $MenuPanel/MarginContainer/VBoxContainer/AudioBtn
@onready var save_btn = $MenuPanel/MarginContainer/VBoxContainer/SaveBtn
@onready var main_menu_btn = $MenuPanel/MarginContainer/VBoxContainer/MainMenuBtn
@onready var quit_menu_btn = $MenuPanel/MarginContainer/VBoxContainer/QuitBtn

@onready var trust_btn = $Taskbar/TrustBtn
@onready var dismiss_btn = $Taskbar/DismissBtn

@onready var result_notification = $WindowLayer/ResultNotification
@onready var article_warning = $WindowLayer/ArticleWarning


@onready var morning_news_tool = $WindowLayer/MorningNewsTool
@onready var protocol_tool = $WindowLayer/ProtocolTool
@onready var case_tool = $WindowLayer/CaseTool
@onready var author_tool = $WindowLayer/AuthorTool
@onready var image_tool = $WindowLayer/ImageTool
@onready var quote_tool = $WindowLayer/QuoteTool
@onready var graph_tool = $WindowLayer/GraphTool
@onready var source_tool = $WindowLayer/SourceTool
@onready var url_tool = $WindowLayer/UrlTool
@onready var cross_reference_tool = $WindowLayer/CrossReferenceTool
@onready var tutorial_tool = $WindowLayer/TutorialTool

@onready var tutorial_window = $WindowLayer/TutorialWindow
@onready var morning_news_window = $WindowLayer/MorningNewsWindow
@onready var case_control = $WindowLayer/CaseControl
@onready var author_window = $WindowLayer/AuthorWindow
@onready var image_window = $WindowLayer/ImageWindow
@onready var quote_window = $WindowLayer/QuoteWindow
@onready var graph_window = $WindowLayer/GraphWindow
@onready var protocol_window = $WindowLayer/ProtocolWindow
@onready var source_window = $WindowLayer/SourceWindow
@onready var url_window = $WindowLayer/UrlWindow
@onready var cross_reference_window = $WindowLayer/CrossReferenceWindow

@onready var click_sound = $ClickSound
@onready var correct_sound = $CorrectSound
@onready var wrong_sound = $WrongSound
@onready var startup_sound = $StartupSound

@onready var end_screen = $EndScreen
@onready var stats_screen = $StatsScreen

@onready var all_tool_buttons := [
	morning_news_tool,
	protocol_tool,
	case_tool,
	author_tool,
	image_tool,
	quote_tool,
	graph_tool,
	source_tool,
	url_tool,
	cross_reference_tool,
	tutorial_tool
]

@onready var all_windows := [
	morning_news_window,
	case_control,
	author_window,
	image_window,
	quote_window,
	graph_window,
	protocol_window,
	source_window,
	url_window,
	cross_reference_window,
	tutorial_window
]

@onready var content_windows := [
	author_window,
	image_window,
	quote_window,
	graph_window,
	source_window,
	url_window,
	cross_reference_window
]

@onready var tool_to_window := {
	case_tool: case_control,
	tutorial_tool: tutorial_window,
	author_tool: author_window,
	image_tool: image_window,
	quote_tool: quote_window,
	graph_tool: graph_window,
	source_tool: source_window,
	url_tool: url_window,
	cross_reference_tool: cross_reference_window,
	protocol_tool: protocol_window,
	morning_news_tool: morning_news_window
}

@onready var datetime_label = $Taskbar/DateTimeLabel
@onready var day_summary = $WindowLayer/DaySummary
@onready var day_transition = $DayTransition

const MENU_SCENE_PATH := "res://main_menu.tscn"
const FINAL_DAY := 15
const VERDICT_TRUST := "trust"
const VERDICT_DISMISS := "dismiss"
const GAME_TIME_SCALE := 1.0

var is_muted := false
var ui_locked := false
var day_summary_open := false
var waiting_for_result_close := false
var pending_day_start := false
var waiting_for_morning_news := false
var current_day := 1
var current_case_index := 0
var day_correct := 0
var day_wrong := 0
var current_minutes: float = 8 * 60 # 08:00
var hide_timer : SceneTreeTimer

var tutorial_article: Dictionary = {}
var side_story_conclusions: Dictionary = {}
var morning_news: Dictionary = {}
var day_protocols: Dictionary = {}
var cases: Array = []
var authors_db: Dictionary = {}
var images_db: Dictionary = {}
var quotes_db: Dictionary = {}
var graphs_db: Dictionary = {}
var sources_db: Dictionary = {}
var urls_db: Dictionary = {}
var cross_references_db: Dictionary = {}
var day_cases: Array = []
var endings_db: Dictionary = {}
var progress: Dictionary

var persistent_progress: Dictionary = {}

var game_state: Dictionary = {
	"article_choices": {},
	"article_results": {},
	"main_story": {
		"correct": 0,
		"total": 0
	},
	"branch_path": "",
	"side_stories": {},

	"total_correct": 0,
	"total_wrong": 0,
	"mistake_counts": {
		"dismissed": 0,
		"author": 0,
		"image": 0,
		"quote": 0,
		"graph": 0,
		"source": 0,
		"date": 0,
		"url": 0,
		"bias": 0,
		"speculateive": 0,
		"title": 0,
		"cross_reference": 0,
		"other": 0
	}
	}

var unlocked_tools: Dictionary = {
	"morning_news": true,
	"protocol": true,
	"case": true,
	"author": false,
	"image": false,
	"quote": false,
	"graph": false,
	"source": false,
	"url": false,
	"cross_reference": false
	}

var current_date: Dictionary = {
	"day": 1,
	"month": 1,
	"year": 2001
	}





func _ready() -> void:
	setup_menu()
	setup_windows()
	setup_tools()
	setup_popups()
	setup_ending()
	setup_data()
	set_pointer_cursor_recursive(self)
	
	randomize()
	progress = ProgressData.load_progress()
	ProofData.load_proof()
	
	
	DirAccess.remove_absolute("user://progress.cfg")
	trust_btn.pressed.connect(_on_trust_pressed)
	dismiss_btn.pressed.connect(_on_dismiss_pressed)
	day_transition.finished.connect(_on_day_transition_finished)
	audio_label.text = "Audio: OFF" if AudioManager.is_muted else "Audio: ON "
	tutorial_window.load_article(tutorial_article)

	if SessionState.load_save_on_start:
		SessionState.load_save_on_start = false
		load_saved_game()
	else:
		begin_day(13)
		update_datetime_label()
	update_datetime_label()

func setup_menu() -> void:
	$Menu.hide()
	menu.hide()
	menu_btn.pressed.connect(_on_menu_btn_pressed)

	audio_btn.pressed.connect(_on_audio_btn_pressed)
	save_btn.pressed.connect(_on_save_btn_pressed)
	main_menu_btn.pressed.connect(_on_main_menu_btn_pressed)
	quit_menu_btn.pressed.connect(_on_quit_menu_btn_pressed)

func setup_data() -> void:
	tutorial_article = GameData.get_tutorial_article()
	side_story_conclusions = GameData.get_side_story_conclusions()
	morning_news = GameData.get_morning_news()
	day_protocols = GameData.get_day_protocols()
	authors_db = GameData.get_authors_db()
	sources_db = GameData.get_sources_db()
	images_db = GameData.get_images_db()
	graphs_db = GameData.get_graphs_db()
	quotes_db = GameData.get_quotes_db()
	urls_db = GameData.get_urls_db()
	cross_references_db = GameData.get_cross_references_db()
	cases = GameData.get_cases()
	endings_db = GameData.get_endings()

func setup_windows() -> void:
	morning_news_window.hide()
	quote_window.hide()
	graph_window.hide()
	case_control.hide()
	author_window.hide()
	image_window.hide()
	source_window.hide()
	url_window.hide()
	cross_reference_window.hide()
	tutorial_window.hide()
	protocol_window.hide()

	case_control.graph_clicked.connect(_on_graph_clicked)
	case_control.quote_clicked.connect(_on_quote_clicked)
	case_control.image_clicked.connect(_on_image_clicked)
	case_control.author_clicked.connect(_on_author_clicked)
	case_control.source_clicked.connect(_on_source_clicked)
	case_control.url_clicked.connect(_on_url_clicked)
	case_control.title_clicked.connect(_on_title_clicked)

	connect_window_close_buttons()

func setup_tools() -> void:
	for tool in all_tool_buttons:
		tool.pressed.connect(func(): _on_tool_pressed(tool))

func setup_popups() -> void:
	day_summary.hide()
	day_summary.continue_pressed.connect(_on_day_summary_continue_pressed)
	result_notification.closed.connect(_on_result_notification_closed)

func setup_ending() -> void:
	persistent_progress = ProgressData.load_progress()
	end_screen.hide()
	stats_screen.hide()
	end_screen.finished.connect(_on_end_screen_finished)
	stats_screen.main_menu_pressed.connect(_on_stats_main_menu_pressed)





func begin_day(day: int) -> void:
	current_date["day"] = day
	current_date["month"] = 1
	current_date["year"] = 2001
	current_minutes = 8 * 60

	load_day(day)
	update_tool_unlocks_for_day(day)
	refresh_tool_states()

	clear_selection()
	clear_tool_contents()

	if day_cases.size() > 0:
		case_control.load_article(day_cases[0])

	case_control.hide()

	pending_day_start = true
	startup_sound.play()
	day_transition.play_transition(day)

func load_day(day: int) -> void:
	current_day = day
	day_cases.clear()
	current_case_index = 0
	day_correct = 0
	day_wrong = 0

	var branch_path: String = str(game_state.get("branch_path", ""))

	for case_data in cases:
		if int(case_data.get("day", 1)) != current_day:
			continue

		var case_path: String = str(case_data.get("path", ""))
		if case_path != "" and case_path != branch_path:
			continue

		day_cases.append(case_data)

func show_day_protocol() -> void:
	var items = day_protocols.get(current_day, [])
	protocol_window.load_protocol(current_day, items)
	open_window(protocol_window)

func show_morning_news() -> void:
	var news_data: Dictionary = get_morning_news_for_day(current_day)

	if news_data.is_empty():
		load_case()
		return

	waiting_for_morning_news = true
	update_article_interactions()
	morning_news_window.load_article(news_data)
	open_window(morning_news_window)

func load_case() -> void:
	if current_case_index >= day_cases.size():
		print("Day complete")
		return

	clear_selection()
	clear_tool_contents()
	update_article_interactions()

	var case_data: Dictionary = day_cases[current_case_index]
	case_control.load_article(case_data)

func start_next_day() -> void:
	set_ui_locked(true)
	day_summary_open = true
	day_summary.show_summary(current_day, day_correct, day_wrong)
	day_summary.move_to_front()

func submit_choice(choice: String) -> void:
	if waiting_for_result_close:
		return

	var case_data: Dictionary = day_cases[current_case_index]
	var correct: bool = choice == case_data["correct_verdict"]

	if correct:
		day_correct += 1
		game_state["total_correct"] += 1
		correct_sound.play()
		result_notification.show_notification("Correct", case_data["explanation"], true)
	else:
		day_wrong += 1
		game_state["total_wrong"] += 1
		record_mistake_types(case_data)
		wrong_sound.play()
		result_notification.show_notification("Wrong choice", case_data["explanation"], false)

	record_case_result(case_data, choice, correct)
	update_branch_path(case_data, correct)

	set_ui_locked(true)
	waiting_for_result_close = true





func _on_day_transition_finished() -> void:
	if pending_day_start:
		pending_day_start = false

		if current_day >= 2:
			show_day_protocol()
			show_morning_news()
		else:
			show_day_protocol()
			tutorial_window.show()
			tutorial_window.move_to_front()

func get_morning_news_for_day(day: int) -> Dictionary:
	var merged_content: Array = []

	var day_data: Dictionary = morning_news.get(day, {})
	if not day_data.is_empty():
		var variants: Array = day_data.get("variants", [])
		var article_choices: Dictionary = game_state.get("article_choices", {})
		var main_content: Array = []

		for variant in variants:
			var when: Dictionary = variant.get("when", {})
			var article_id: String = str(when.get("article_id", ""))
			var expected_choice: String = str(when.get("choice", ""))

			if article_choices.get(article_id, "") == expected_choice:
				main_content = variant.get("content", [])
				break

		if main_content.is_empty():
			var default_data: Dictionary = day_data.get("default", {})
			main_content = default_data.get("content", [])

		merged_content.append_array(main_content)

	var side_stories: Dictionary = game_state.get("side_stories", {})
	for story_id in side_stories.keys():
		if should_show_side_story_conclusion(story_id, day):
			var outcome: String = get_side_story_outcome(story_id)
			var story_conclusions: Dictionary = side_story_conclusions.get(story_id, {})
			var conclusion_content: Array = story_conclusions.get(outcome, [])

			if not merged_content.is_empty():
				merged_content.append({"type": "divider"})

			merged_content.append_array(conclusion_content)
			mark_side_story_conclusion_shown(story_id)

	if merged_content.is_empty():
		return {}

	return {"content": merged_content}

func _on_result_notification_closed() -> void:
	click_sound.play()
	if not waiting_for_result_close:
		return

	waiting_for_result_close = false
	current_case_index += 1

	if current_case_index >= day_cases.size():
		start_next_day()
		if day_summary_open == false:
			set_ui_locked(false)
	else:
		load_case()
		if day_summary_open == false:
			set_ui_locked(false)

func _on_trust_pressed() -> void:
	if case_control.is_visible_in_tree():
		submit_choice(VERDICT_TRUST)
	else:
		show_message("Article must be open to make decisions")

func _on_dismiss_pressed() -> void:
	if case_control.is_visible_in_tree():
		submit_choice(VERDICT_DISMISS)
	else:
		show_message("Article must be open to make decisions")

func show_message(warningText: String, duration := 2.5):
	article_warning.visible = true
	$WindowLayer/ArticleWarning/ArticleWarningLabel.text = warningText
	article_warning.move_to_front()
	if hide_timer:
		hide_timer = null

	hide_timer = get_tree().create_timer(duration)
	await hide_timer.timeout

	if hide_timer:
		article_warning.visible = false
		hide_timer = null



###Tools
func _on_tool_pressed(tool: Control) -> void:
	clear_selection()

	if tool.has_method("set_selected"):
		tool.set_selected(true)

	if tool_to_window.has(tool):
		open_window(tool_to_window[tool])

func clear_selection() -> void:
	for tool in all_tool_buttons:
		tool.set_selected(false)

func _on_image_clicked(image_id) -> void:
	if is_ui_blocked():
		return

	var image_data = images_db.get(image_id)
	if image_data == null:
		return

	open_window(image_window)
	image_window.load_image_record(image_data)

func _on_author_clicked(author_id) -> void:
	if is_ui_blocked():
		return

	var author_data = authors_db.get(author_id)
	if author_data == null:
		return

	open_window(author_window)
	author_window.load_author_record(author_data)

func _on_quote_clicked(quote_id) -> void:
	if is_ui_blocked():
		return

	var quote_data = quotes_db.get(quote_id)
	if quote_data == null:
		return

	open_window(quote_window)
	quote_window.load_quote_record(quote_data)

func _on_graph_clicked(graph_id) -> void:
	if is_ui_blocked():
		return

	var graph_data = graphs_db.get(graph_id)
	if graph_data == null:
		return

	open_window(graph_window)
	graph_window.load_graph_record(graph_data)

func _on_source_clicked(source_id) -> void:
	if is_ui_blocked():
		return

	var source_data = sources_db.get(source_id)
	if source_data == null:
		return

	open_window(source_window)
	source_window.load_source_record(source_data)

func _on_url_clicked(url_id) -> void:
	if is_ui_blocked():
		return

	var url_data = urls_db.get(url_id)
	if url_data == null:
		return

	open_window(url_window)
	url_window.load_url_record(url_data)

func _on_title_clicked(article_id) -> void:
	if is_ui_blocked():
		return

	var cross_reference_data = cross_references_db.get(article_id)
	if cross_reference_data == null:
		return

	open_window(cross_reference_window)
	cross_reference_window.load_cross_reference_record(cross_reference_data)





func open_window(window: Control) -> void:
	click_sound.play()
	window.show()
	window.move_to_front()

func close_window(window: Control) -> void:
	window.hide()
	click_sound.play()

func connect_window_close_buttons() -> void:
	for window in all_windows:
		if window.has_node("TopBar/CloseBtn"):
			var close_btn = window.get_node("TopBar/CloseBtn")

			if window == morning_news_window:
				close_btn.pressed.connect(_on_morning_news_close_pressed)
			else:
				close_btn.pressed.connect(func(): close_window(window))

func _on_morning_news_close_pressed() -> void:
	close_window(morning_news_window)

	if waiting_for_morning_news:
		waiting_for_morning_news = false

func hide_all_windows() -> void:
	menu.hide()
	for window in all_windows:
		window.hide()





func clear_tool_contents() -> void:
	for window in content_windows:
		window.clear_content()

func set_ui_locked(state: bool) -> void:
	ui_locked = state

	trust_btn.disabled = state
	dismiss_btn.disabled = state

	for tool in all_tool_buttons:
		tool.disabled = state

	for window in all_windows:
		if window.has_method("set_input_locked"):
			window.set_input_locked(state)

func is_ui_blocked() -> bool:
	return ui_locked

func update_article_interactions() -> void:
	var state := {
		"title": unlocked_tools["cross_reference"],
		"author": unlocked_tools["author"],
		"image": unlocked_tools["image"],
		"quote": unlocked_tools["quote"],
		"graph": unlocked_tools["graph"],
		"source": unlocked_tools["source"],
		"url": unlocked_tools["url"]
	}

	case_control.set_interactions_enabled(state)
	morning_news_window.set_interactions_enabled(state)

func refresh_tool_states() -> void:
	author_tool.visible = unlocked_tools["author"]
	image_tool.visible = unlocked_tools["image"]
	quote_tool.visible = unlocked_tools["quote"]
	graph_tool.visible = unlocked_tools["graph"]
	source_tool.visible = unlocked_tools["source"]
	url_tool.visible = unlocked_tools["url"]
	cross_reference_tool.visible = unlocked_tools["cross_reference"]

func set_pointer_cursor_recursive(node: Node) -> void:
	for child in node.get_children():
		if child is Button or child is TextureButton:
			child.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
		set_pointer_cursor_recursive(child)




###Menu buttons
func _on_menu_btn_pressed() -> void:
	click_sound.play()
	if menu.visible:
		menu.hide()
	else:
		menu.show()
		menu.move_to_front()

func _on_audio_btn_pressed() -> void:
	
	print("Settings clicked")
	click_sound.play()
	AudioManager.toggle_audio()
	audio_label.text = "Audio: OFF" if AudioManager.is_muted else "Audio: ON "
	menu.hide()

func _on_save_btn_pressed():
	click_sound.play()
	save_current_game()
	menu.hide()

func _on_main_menu_btn_pressed() -> void:
	print("Main Menu clicked")
	click_sound.play()
	menu.hide()
	get_tree().change_scene_to_file(MENU_SCENE_PATH)

func _on_quit_menu_btn_pressed() -> void:
	print("Quit clicked")
	click_sound.play()
	menu.hide()
	get_tree().quit()


###Ending
func _on_stats_main_menu_pressed() -> void:
	print("Main Menu clicked")
	click_sound.play()
	menu.hide()
	get_tree().change_scene_to_file(MENU_SCENE_PATH)

func _on_end_screen_finished() -> void:
	end_screen.hide()
	stats_screen.show_stats(game_state, persistent_progress)





func _on_day_summary_continue_pressed() -> void:
	set_ui_locked(false)
	day_summary_open = false
	hide_all_windows()
	
	progress["total_days_played"] = int(progress.get("total_days_played", 0)) + 1
	ProgressData.save_progress(progress)
	ProofData.sync_from_progress(progress)
	
	if current_day >= FINAL_DAY:
		hide_all_windows()
		progress["playthrough_count"] = int(progress.get("playthrough_count", 0)) + 1
		progress["playthrough_count"] += 1
		ProgressData.save_progress(progress)
		ProofData.sync_from_progress(progress)
		
		var ending_id: String = get_ending_id()
		var ending_data: Dictionary = endings_db.get(ending_id, {})

		record_completed_playthrough(ending_id)
		end_screen.play_ending(ending_data)
		return

	begin_day(current_day + 1)
	save_current_game()

func get_side_story_outcome(story_id: String) -> String:
	var side_stories: Dictionary = game_state.get("side_stories", {})
	var story: Dictionary = side_stories.get(story_id, {})

	var correct: int = int(story.get("correct", 0))
	var total: int = int(story.get("total", 0))

	if total == 0:
		return "bad"

	var ratio: float = float(correct) / float(total)

	if ratio > 0.5:
		return "good"
	return "bad"

func get_main_story_outcome() -> String:
	var main_story: Dictionary = game_state.get("main_story", {})
	var correct: int = int(main_story.get("correct", 0))
	var total: int = int(main_story.get("total", 0))


	var ratio: float = float(correct) / float(total)

	if ratio > 0.5:
		return "good"
	return "bad"

func should_show_side_story_conclusion(story_id: String, day: int) -> bool:
	var side_stories: Dictionary = game_state.get("side_stories", {})
	var story: Dictionary = side_stories.get(story_id, {})

	var resolved: bool = bool(story.get("resolved", false))
	var resolved_day: int = int(story.get("resolved_day", -1))
	var conclusion_shown: bool = bool(story.get("conclusion_shown", false))

	return resolved and resolved_day == day and not conclusion_shown

func mark_side_story_conclusion_shown(story_id: String) -> void:
	var side_stories: Dictionary = game_state.get("side_stories", {})
	var story: Dictionary = side_stories.get(story_id, {})

	story["conclusion_shown"] = true
	side_stories[story_id] = story
	game_state["side_stories"] = side_stories

func update_branch_path(case_data: Dictionary, correct: bool) -> void:
	var case_id: String = str(case_data.get("id", ""))

	if case_id != "main_13":
		return

	if correct:
		game_state["branch_path"] = "good"
	else:
		game_state["branch_path"] = "bad"

func get_ending_id() -> String:
	var branch_path: String = str(game_state.get("branch_path", "bad"))
	var main_outcome: String = get_main_story_outcome()

	if branch_path == "good" and main_outcome == "good":
		return "ending_1"
	if branch_path == "good" and main_outcome == "bad":
		return "ending_2"
	if branch_path == "bad" and main_outcome == "good":
		return "ending_3"
	return "ending_4"

func update_tool_unlocks_for_day(day: int) -> void:
	unlocked_tools["author"] = day >= 2
	unlocked_tools["image"] = day >= 3
	unlocked_tools["quote"] = day >= 5
	unlocked_tools["graph"] = day >= 6
	unlocked_tools["source"] = day >= 7
	unlocked_tools["url"] = day >= 10
	unlocked_tools["cross_reference"] = day >= 11
	refresh_tool_states()
	update_article_interactions()

func record_mistake_types(case_data: Dictionary) -> void:
	var mistake_counts: Dictionary = game_state.get("mistake_counts", {})
	var mistake_types: Array = case_data.get("mistake_types", [])

	if mistake_types.is_empty():
		mistake_types = ["other"]

	for mistake_type_variant in mistake_types:
		var mistake_type: String = str(mistake_type_variant)

		if not mistake_counts.has(mistake_type):
			mistake_type = "other"

		mistake_counts[mistake_type] = int(mistake_counts.get(mistake_type, 0)) + 1

	game_state["mistake_counts"] = mistake_counts

func record_completed_playthrough(ending_id: String) -> void:
	persistent_progress["playthrough_count"] = int(persistent_progress.get("playthrough_count", 0)) + 1

	var endings_reached: Array = persistent_progress.get("endings_reached", [])
	if not endings_reached.has(ending_id):
		endings_reached.append(ending_id)

	persistent_progress["endings_reached"] = endings_reached
	ProgressData.save_progress(persistent_progress)

func record_case_result(case_data: Dictionary, choice: String, correct: bool) -> void:
	var case_id: String = str(case_data.get("id", ""))
	var story_id: String = str(case_data.get("story_id", ""))
	var story_type: String = str(case_data.get("story_type", ""))

	var article_choices: Dictionary = game_state.get("article_choices", {})
	var article_results: Dictionary = game_state.get("article_results", {})
	var main_story: Dictionary = game_state.get("main_story", {"correct": 0, "total": 0})
	var side_stories: Dictionary = game_state.get("side_stories", {})

	article_choices[case_id] = choice
	article_results[case_id] = correct

	if story_type == "main":
		var main_correct: int = int(main_story.get("correct", 0))
		var main_total: int = int(main_story.get("total", 0))

		main_total += 1
		if correct:
			main_correct += 1

		main_story["correct"] = main_correct
		main_story["total"] = main_total

	elif story_type == "side":
		var story: Dictionary = side_stories.get(story_id, {
			"correct": 0,
			"total": 0,
			"resolved": false,
			"resolved_day": -1,
			"conclusion_shown": false
		})

		var side_correct: int = int(story.get("correct", 0))
		var side_total: int = int(story.get("total", 0))

		side_total += 1
		if correct:
			side_correct += 1

		story["correct"] = side_correct
		story["total"] = side_total

		var is_final_article: bool = bool(case_data.get("is_final_article", false))
		if is_final_article:
			story["resolved"] = true
			story["resolved_day"] = current_day + 1

		side_stories[story_id] = story

	game_state["article_choices"] = article_choices
	game_state["article_results"] = article_results
	game_state["main_story"] = main_story
	game_state["side_stories"] = side_stories





###Time###
func _process(delta: float) -> void:
	current_minutes += delta * GAME_TIME_SCALE

	if current_minutes > 23 * 60 + 59:
		current_minutes = 23 * 60 + 59

	update_datetime_label()

func update_datetime_label() -> void:
	var total_minutes: int = int(current_minutes)
	var hours: int = (total_minutes / 60) % 24
	var minutes: int = total_minutes % 60

	var day: int = int(current_date["day"])
	var month: int = int(current_date["month"])
	var year: int = int(current_date["year"])

	datetime_label.text = "%02d:%02d\n%02d.%02d.%04d" % [hours, minutes, day, month, year]





###Saving###
func get_save_data() -> Dictionary:
	return {
		"current_day": current_day,
		"current_case_index": current_case_index,
		"day_correct": day_correct,
		"day_wrong": day_wrong,
		"game_state": game_state,
		"current_date": current_date,
		"current_minutes": current_minutes,
		"persistent_progress": persistent_progress
	}

func save_current_game() -> void:
	var ok := SaveData.save_game(get_save_data())
	if ok:
		print("Game saved.")
	else:
		print("Save failed.")

func load_saved_game() -> void:
	var save_data: Dictionary = SaveData.load_game()
	if save_data.is_empty():
		print("No save found.")
		return

	current_day = int(save_data.get("current_day", 1))
	current_case_index = int(save_data.get("current_case_index", 0))
	day_correct = int(save_data.get("day_correct", 0))
	day_wrong = int(save_data.get("day_wrong", 0))
	game_state = save_data.get("game_state", game_state)
	current_date = save_data.get("current_date", current_date)
	current_minutes = float(save_data.get("current_minutes", 480.0))
	persistent_progress = save_data.get("persistent_progress", persistent_progress)

	load_day(current_day)
	update_tool_unlocks_for_day(current_day)
	refresh_tool_states()
	update_datetime_label()

	clear_selection()
	clear_tool_contents()
	hide_all_windows()

	if current_day > 1:
		show_day_protocol()
		show_morning_news()
	else:
		show_day_protocol()

	if current_case_index < day_cases.size():
		case_control.load_article(day_cases[current_case_index])

	print("Game loaded.")
