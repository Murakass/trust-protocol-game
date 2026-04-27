extends Control

const GAME_SCENE_PATH := "res://main.tscn"
const REALITY_SCENE_PATH := "res://reality_mode.tscn"

@onready var audio_label = $AudioBtn/Label
@onready var new_game_btn = $NewGameBtn
@onready var reality_game_btn = $RealityGameBtn
@onready var continue_btn = $ContinueBtn
@onready var audio_btn = $AudioBtn
@onready var quit_btn = $QuitBtn
@onready var clear_results_btn = $ClearResultsBtn
@onready var open_results_btn = $OpenResultsBtn

func _ready() -> void:
	ProofData.clear_all_data()
	SaveData.delete_save()
	if not SaveData.has_save():
		continue_btn.hide()
	new_game_btn.pressed.connect(_on_new_game_pressed)
	reality_game_btn.pressed.connect(_on_reality_game_pressed)
	continue_btn.pressed.connect(_on_continue_pressed)
	audio_btn.pressed.connect(_on_audio_pressed)
	quit_btn.pressed.connect(_on_quit_pressed)
	open_results_btn.pressed.connect(_on_open_results_pressed)
	clear_results_btn.pressed.connect(_on_clear_results_pressed)
	set_pointer_cursor_recursive(self)

func _on_new_game_pressed() -> void:
	var err := get_tree().change_scene_to_file(GAME_SCENE_PATH)
	if err != OK:
		push_error("Failed to load game scene: %s" % GAME_SCENE_PATH)

func _on_reality_game_pressed() -> void:
	var err := get_tree().change_scene_to_file(REALITY_SCENE_PATH)
	if err != OK:
		push_error("Failed to load game scene: %s" % REALITY_SCENE_PATH)

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_continue_pressed():
	if not SaveData.has_save():
		return

	SessionState.load_save_on_start = true
	
	var game_scene := load("res://main.tscn")
	var game = game_scene.instantiate()
	get_tree().root.add_child(game)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = game

	await game.ready
	game.load_saved_game()

func _on_audio_pressed() -> void:
	AudioManager.toggle_audio()
	audio_label.text = "Audio: OFF" if AudioManager.is_muted else "Audio: ON "

func set_pointer_cursor_recursive(node: Node):
	for child in node.get_children():
		if child is Button or child is TextureButton:
			child.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
		set_pointer_cursor_recursive(child)

func _on_open_results_pressed() -> void:
	download_proof()

func _on_clear_results_pressed() -> void:
	if FileAccess.file_exists("user://exports/reality_results_export.json"):
		DirAccess.remove_absolute(ProjectSettings.globalize_path("user://exports/reality_results_export.json"))
		print("Export file cleared.")

func download_proof():
	var path := "user://exports/play_proof.txt"
	
	if not FileAccess.file_exists(path):
		return
	
	var file := FileAccess.open(path, FileAccess.READ)
	var content := file.get_as_text()
	file.close()
	
	JavaScriptBridge.download_buffer(
		content.to_utf8_buffer(),
		"play_proof.txt"
	)
