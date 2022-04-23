extends Interactable

onready var solve_light = $Puzzle_01_Indicator_01

var connected = false

func _ready():
	connected = false
	$AnimationPlayer.play_backwards("state_active")
	solve_light.material.set_albedo(Color(255, 0, 0, 0))

func interact():
	if not connected:
		connected = true
		print("connected")
		$AnimationPlayer.play("state_active")
		solve_light.material.set_albedo(Color(0, 255, 0, 0))
	elif connected:
		connected = false
		print("disconnected")
		$AnimationPlayer.play_backwards("state_active")
		solve_light.material.set_albedo(Color(255, 0, 0, 0))
