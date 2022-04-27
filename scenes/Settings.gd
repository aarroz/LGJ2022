extends Panel

onready var vsync_btn = $HSplitContainer/Buttons/Button_Vsync
onready var fullscreen_btn = $HSplitContainer/Buttons/Button_Fullscreen
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_Fullscreen_toggled(button_pressed):
	GlobalSettings.toggle_fullscreen(button_pressed)


func _on_Button_Vsync_toggled(button_pressed):
	GlobalSettings.toggle_vsync(button_pressed)
