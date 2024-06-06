extends MovementComponent

class_name HostileMovementComponent

func _physics_process(delta):
	
	_delta_acc += delta
	
	if _delta_acc > get_interval_skip():
		owner.get_root_entity().move_and_collide(
			owner.get_root_entity().position.move_toward(
				owner.get_root_entity().get_target().position, owner.get_speed() * (_delta_acc)
				) - owner.get_root_entity().position
			)
		
		_delta_acc = 0
