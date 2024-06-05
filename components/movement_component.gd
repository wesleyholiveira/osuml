extends Node2D

class_name MovementComponent

const _ACTION = {
	"MOVE_RIGHT": "move_right",
	"MOVE_LEFT": "move_left",
	"MOVE_UP": "move_up",
	"MOVE_DOWN": "move_down",
}

var _move: Callable

func _move_playable(delta: float, counter:float) -> void:
	owner.get_root_entity().move_and_collide(Input.get_vector(
		_ACTION.MOVE_RIGHT,
		_ACTION.MOVE_LEFT,
		_ACTION.MOVE_UP,
		_ACTION.MOVE_DOWN,
		0.5
	) * owner.get_speed() * (delta * counter))
	pass

func _move_hostile(delta: float, counter: float) -> void:
	owner.get_root_entity().move_and_collide(owner.get_root_entity().position.move_toward(owner.get_root_entity().get_target().position, owner.get_speed() * (delta * counter)) - owner.get_root_entity().position)
	pass

func _ready():
	print(owner.get_root_entity())
	if true:
		_move = Callable(self, "_move_playable")
	else:
		_move = Callable(self, "_move_hostile")
	pass

func _physics_process(delta):
	_move.call(delta, 1)
	pass
