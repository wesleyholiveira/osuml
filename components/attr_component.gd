extends Node2D

class_name AttrComponent

# Add the related attributes
@export_range(0, 500, 1) var _speed : float = 250.0 : get = get_speed, set = set_speed

# Pointer to the father entity
var _root_entity : Variant : get = get_root_entity

# Pointers to child entities
var _movement_component : MovementComponent : get = get_movement_component

func get_speed() -> float:
	return _speed

func set_speed(value: float) -> void:
	_speed = value
	pass

func get_root_entity() -> Variant:
	return _root_entity

func get_movement_component() -> MovementComponent:
	return _movement_component

func _enter_tree():
	_root_entity = get_parent()
	assert($MovementComponent != null and $MovementComponent is MovementComponent, "AttrComponent requires a valid MovementComponent node as a child")
	assert(get_parent() != null and (get_parent() is AbstractHostile or get_parent() is AbstractPlayable), "The owner of AttrComponent must be a Hostile or Playable entity")
	_movement_component = $MovementComponent
	pass

func _ready():
	#assert(_root_entity != null and (_root_entity is AbstractPlayable), "The owner of AttrComponent must be a Hostile or Playable entity")
	pass
