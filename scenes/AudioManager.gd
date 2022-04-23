extends Spatial


func _ready():
	$Faders.play("fade_out")


func _on_Trigger_01_Complete_body_entered(body):
	if body.is_in_group("dynamic") and $Music.playing == false:
		$Music.play()
		$Faders.play("fade_in")
