extends Spatial

onready var gravity_area = $Gravity

func _ready():
	pass

func gravity_up():
	gravity_area.set_gravity_vector(Vector3(0, 1, 0))
	print("GRAVITY OFF")

func gravity_down():
	gravity_area.set_gravity_vector(Vector3(0, -1, 0))
	print("GRAVITY ON")

func gravity_left():
	gravity_area.set_gravity_vector(Vector3(1, 0, 0))
	print("GRAVITY STRANGE")

func gravity_right():
	gravity_area.set_gravity_vector(Vector3(-1, 0, 0))
	print("GRAVITY DIFFERENT STRANGE")
