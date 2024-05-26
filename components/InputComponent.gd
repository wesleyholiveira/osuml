extends MovementComponent

class_name InputComponent

const ACTION = {
	"MOVE_RIGHT": "move_right",
	"MOVE_LEFT": "move_left",
	"MOVE_UP": "move_up",
	"MOVE_DOWN": "move_down",
}

func _process(delta: float) -> void:
	for action in ACTION.values():
		if Input.is_action_pressed(action):
			get_parent().position += (
				Input.get_vector(
					ACTION.MOVE_RIGHT,
					ACTION.MOVE_LEFT,
					ACTION.MOVE_UP,
					ACTION.MOVE_DOWN,
					0.5
				) 
				* speed) * delta
			break
	pass

func _unhandled_key_input(event: InputEvent) -> void:
	pass
