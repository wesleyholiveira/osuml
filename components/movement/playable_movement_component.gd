extends MovementComponent

class_name PlayableMovementComponent

const _ACTION = {
	"MOVE_RIGHT": "move_right",
	"MOVE_LEFT": "move_left",
	"MOVE_UP": "move_up",
	"MOVE_DOWN": "move_down",
}


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	_delta_acc += delta
	
	if _delta_acc > get_interval_skip():
		owner.get_root_entity().move_and_collide(Input.get_vector(
			_ACTION.MOVE_RIGHT,
			_ACTION.MOVE_LEFT,
			_ACTION.MOVE_UP,
			_ACTION.MOVE_DOWN,
			0.5
		) * owner.get_speed() * (_delta_acc))
		
		_delta_acc = 0
