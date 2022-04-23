extends RayCast

var object_grabbed = null
var mass_limit = 50
var throw_force = 10

var can_use = true

func _process(delta):
	if Input.is_key_pressed(KEY_E):
		if can_use:
			can_use = false
			if not object_grabbed:
				if get_collider() is RigidBody and not get_collider() is VehicleBody and get_collider().mass <= mass_limit:
					object_grabbed = get_collider()
			else:
				release()
	else:
		can_use = true

	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		if object_grabbed:
			object_grabbed.linear_velocity = global_transform.basis.z * throw_force
			release()

	if object_grabbed:
		var vector = $GrabPosition3D.global_transform.origin - object_grabbed.global_transform.origin
		object_grabbed.linear_velocity = vector * 20
		object_grabbed.axis_lock_angular_x = true
		object_grabbed.axis_lock_angular_y = true
		object_grabbed.axis_lock_angular_z = true
		if vector.length() >= 3:
			release()

func release():
	object_grabbed.axis_lock_angular_x = false
	object_grabbed.axis_lock_angular_y = false
	object_grabbed.axis_lock_angular_z = false
	object_grabbed = null

