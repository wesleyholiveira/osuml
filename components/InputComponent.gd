extends MovementComponent

class_name InputComponent

const ACTION = {
	"MOVE_RIGHT": "move_right",
	"MOVE_LEFT": "move_left",
	"MOVE_UP": "move_up",
	"MOVE_DOWN": "move_down",
}

func _init(entity: Node2D, speed: float) -> void:
	super(entity, speed)
	pass

func move(target_pos: Vector2, speed: float) -> Vector2:
	var pos = Input.get_vector(
			ACTION.MOVE_RIGHT,
			ACTION.MOVE_LEFT,
			ACTION.MOVE_UP,
			ACTION.MOVE_DOWN,
			0.5
		) * speed
	return pos
