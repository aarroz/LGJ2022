extends RayCast

var current_collider

func _input(event):
	var collider = get_collider()
	
	if is_colliding() and collider is Interactable:
		if current_collider != collider:
			current_collider = collider
		
		if Input.is_key_pressed(KEY_E):
			collider.interact()
	elif current_collider:
		current_collider = null
		

