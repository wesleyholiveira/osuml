extends Node2D

class_name AbstractEntity

var _attribute_component: AttributeComponent : set = _set_attribute_component, get = _get_attribute_component
var _playable: bool : set = _set_playable, get = get_playable

## The speed of the AbstractEntity.
@export_range(0, 500) var _speed: float = 250.0: set = _set_speed, get = _get_speed

func _init(playable: bool):
	self._playable = playable
	
	self._attribute_component = AttributeComponent.new(self, _get_speed(), playable)
	pass

func _get_attribute_component() -> AttributeComponent:
	return _attribute_component

func _set_attribute_component(value: AttributeComponent) -> void:
	_attribute_component = value
	pass

func get_playable() -> bool:
	return _playable

func _set_playable(value: bool) -> void:
	_playable = value
	pass

func _get_speed() -> float:
	return _speed

func _set_speed(value: float) -> void:
	_speed = value
	pass

func _ready():
	_get_attribute_component().name = "PlayableAttributeComponent" if get_playable() else "HostileAttributeComponent"
	
	add_child(_get_attribute_component())
	pass
