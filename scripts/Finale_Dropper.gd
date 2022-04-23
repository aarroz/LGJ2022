extends "res://scripts/entity_dropper.gd"

onready var Puzzle_Box = $Dropper_Box
var In_Dropper

# I spent hours trying to make this an interesting "changing gravity" puzzle and all I had to do was fake it into something different that is more fun to play.

func _ready():
	gravity_down()
	In_Dropper = true

func _on_Control_Up_body_entered(body):
	if body.is_in_group("dynamic") and In_Dropper:
		#gravity_up()
		Puzzle_Box.apply_central_impulse(Vector3(0, 15, 0))


func _on_Control_Left_body_entered(body):
	if body.is_in_group("dynamic") and In_Dropper:
		#gravity_left()
		Puzzle_Box.apply_central_impulse(Vector3(10, 0, 0))

func _on_Control_Right_body_entered(body):
	if body.is_in_group("dynamic") and In_Dropper:
		#gravity_right()
		Puzzle_Box.apply_central_impulse(Vector3(-10, 0, 0))

func _on_Control_Down_body_entered(body):
	if body.is_in_group("dynamic") and In_Dropper:
		#gravity_down()
		Puzzle_Box.apply_central_impulse(Vector3(0, -10, 0))

# We stop controlling the rigid body once it hits this trigger. We don't want it to fly away because you stepped on a button.

func _on_Normalize_body_entered(body):
	if body.is_in_group("dynamic") and In_Dropper:
		In_Dropper = false
		print("OUT")
