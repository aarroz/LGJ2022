extends Spatial

var opened = false
onready var door_indic = $Door_00_Indicator
onready var sound = $Sound_Door

var dial_complete = false

func _ready():
	door_indic.material.set_albedo(Color(255, 0, 0, 0))
	yield(get_tree().create_timer(23.0), "timeout")
	print("end")
	door_indic.material.set_albedo(Color(0, 255, 0, 0))
	dial_complete = true

func open():
	$AnimationPlayer.play("open")
	sound.play()
	opened = true
	
func close():
	$AnimationPlayer.play_backwards("open")
	sound.play()
	opened = false

func _on_Button_body_entered(body):
	if body.is_in_group("dynamic") and dial_complete and not opened:
		open()
	else:
		pass


func _on_Trigger_Close_body_entered(body):
	if body.is_in_group("dynamic") and dial_complete and opened:
		close()
	else:
		pass

