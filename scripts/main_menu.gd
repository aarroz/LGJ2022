extends Control

onready var settings_menu = $Settings
onready var transition = $CanvasLayer/AnimationPlayer

const game = preload("res://scenes/Level_00.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$music.play("RESET")

func _on_Options_pressed():
	get_node("Settings").show()


func _on_Back_pressed():
	get_node("Settings").hide()


func _on_Play_pressed():
	transition.play("cam_fade_in")
	$music.play("music_fade_out")
	yield(get_tree().create_timer(2.0), "timeout")
	get_tree().change_scene("res://scenes/Level_00.tscn")


func _on_Quit_pressed():
	get_tree().quit()
