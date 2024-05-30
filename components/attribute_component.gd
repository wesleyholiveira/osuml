extends Node2D

## AttributeComponent class.
class_name AttributeComponent

signal target_changed

## The owner entity.
var _entity: RigidBody2D : set = set_entity, get = get_entity

## The target entity (only hostile entities must have a target)
var _target: RigidBody2D : set = set_target, get = get_target

var _speed: float : get = get_speed, set = set_speed

## Create a movement callable to trigger the entity movement.
var _movement: Callable

## AttributeComponent constructor.
func _init(entity: AbstractEntity, speed:float, target: AbstractEntity):
	
	self._entity = entity
	self._speed = speed
	self._target = target
	
	self._movement = _config_movement()
	
	target_changed.connect(_on_abstract_hostile_targed_changed)

	pass

func get_entity() -> RigidBody2D:
	return _entity

func set_entity(entity: RigidBody2D) -> void:
	_entity = entity
	pass

func get_speed() -> float:
	return _speed

func set_speed(speed: float) -> void:
	_speed = speed
	pass

func set_target(target: RigidBody2D) -> void:
	_target = target
	target_changed.emit()
	pass

func get_target() -> RigidBody2D:
	return _target

func move(delta: float, counter: float = 1.0) -> Vector2:
	return _movement.call(delta, counter)

func _config_movement() -> Callable:

	const _ACTION = {
		"MOVE_RIGHT": "move_right",
		"MOVE_LEFT": "move_left",
		"MOVE_UP": "move_up",
		"MOVE_DOWN": "move_down",
	}

	if not get_target():
		return func(delta: float, counter: float): 
			return Input.get_vector(
				_ACTION.MOVE_RIGHT,
				_ACTION.MOVE_LEFT,
				_ACTION.MOVE_UP,
				_ACTION.MOVE_DOWN,
				0.5
			) * get_speed() * (delta * counter)
	else:
		return func(delta: float, counter: float): 
			return get_entity().position.move_toward(get_target().position, get_speed() * (delta * counter))

func _on_abstract_hostile_targed_changed():
	self._movement = _config_movement()

func _ready():
	pass
