extends RayCast

var current_collider

func _input(event):
	var collider = get_collider()
	
	if is_colliding() and collider is Interactable:
		if current_collider != collider:
			current_collider = collider
		if event is InputEventKey:
			if event.pressed and event.scancode == KEY_E and not event.echo:
				collider.interact()
	elif current_collider:
		current_collider = null
		

