extends Node2D

class_name MovementComponent

var _speed : float : set = set_speed, get = get_speed
var _entity : Node2D: set = _set_entity, get = get_entity

func _asserts(entity: Node2D, speed: float) -> void:
	_entity_assert(entity)
	_speed_assert(speed)
	pass

func _entity_assert(entity: Node2D) -> void:
	assert(entity != null, "entity must not be null")
	#assert(entity is AbstractEntity, "entity must be an instance of AbstractEntity")
	pass

func _speed_assert(speed: float) -> void:
	assert(speed > 0, "Speed must be greater than 0")
	pass

func _init(entity: Node2D, speed: float) -> void:

	_asserts(entity, speed)
	self._entity = entity
	self._speed = speed
	pass

func _set_entity(entity: Node2D) -> void:
	_entity = entity
	pass

func get_entity() -> Node2D:
	return _entity

func set_speed(speed: float) -> void:
	_speed = speed
	pass

func get_speed() -> float:
	return _speed

func _ready():
	pass

func move(target_pos: Vector2, speed: float) -> Vector2:
	return get_parent().position.move_toward(target_pos, speed)
