extends Node2D

class_name AttrComponent

# Add the related attributes
var _max_hp : int = 100 : get = get_max_hp, set = set_max_hp
var _hp : int = _max_hp : get = get_hp, set = set_hp

var _speed : float = 250.0 : get = get_speed, set = set_speed

# Pointer to the father entity
var _root_entity : Variant : get = get_root_entity

# Pointers to child entities
var _movement_component : Variant

# Max HP - Get n Set
func get_max_hp() -> int:
	return _max_hp

func set_max_hp(value: int) -> void:
	_max_hp = value

# Current HP - Get n Set
func get_hp() -> int:
	return _hp

func set_hp(value: int) -> void:
	_hp = value

# Speed - Get n Set
func get_speed() -> float:
	return _speed

func set_speed(value: float) -> void:
	_speed = value
	
func get_root_entity() -> Variant:
	return _root_entity

func _init(movement_component: Variant) -> void:
	assert(movement_component is MovementComponent, "AttrComponent requires a valid MovementComponent node as a child")
	
	self._movement_component = movement_component

func _enter_tree():
	assert(get_parent() != null and (get_parent() is AbstractHostile or get_parent() is AbstractPlayable), "The owner of AttrComponent must be a Hostile or Playable entity")
	_root_entity = get_parent()
	add_child(_movement_component)
	
