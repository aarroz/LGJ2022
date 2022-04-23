extends Spatial

func open():
	$AnimationPlayer.play("open")
	$AudioStreamPlayer3D.play()

func close():
	$AnimationPlayer.play_backwards("open")
	$AudioStreamPlayer3D.play()

func activate():
	return null
