extends Spatial


func _ready():
	$Faders.play("fade_out")


func _on_Trigger_01_Complete_body_entered(body):
	if body.is_in_group("dynamic") and $Music.playing == false:
		$Music.play()
		$Faders.play("fade_in")


func _on_Trigger_05_Complete_body_entered(body):
	# Put a line here / First Box Maze Puzzle
	pass # Replace with function body.


func _on_Trigger_FINALE_body_entered(body):
	# Put final dialogue and end game here
	pass # Replace with function body.
