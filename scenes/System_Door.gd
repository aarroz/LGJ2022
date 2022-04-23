extends Spatial

var opened = false

func open():
	$AnimationPlayer.play("open")
	opened = true
	
func close():
	$AnimationPlayer.play_backwards("open")
	opened = false

func _on_Button_body_entered(body):
	if body.is_in_group("dynamic") and not opened:
		open()
	else:
		pass


func _on_Trigger_Close_body_entered(body):
	if body.is_in_group("dynamic") and opened:
		close()
	else:
		pass

