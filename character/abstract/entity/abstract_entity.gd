extends RigidBody2D

class_name AbstractEntity

## The speed of the AbstractEntity.
@export_range(0, 500) var _speed: float = 250.0 : get = get_speed, set = set_speed

var _attr_component: AttrComponent : get = get_attr_component

func get_speed() -> float:
	return _speed

func set_speed(value: float) -> void:
	_speed = value
	_attr_component.set_speed(_speed)

func get_attr_component() -> AttrComponent:
	return _attr_component

func _init(movement_component: Variant) -> void:
	self._attr_component = AttrComponent.new(movement_component)
	
	self.gravity_scale = 0


func _enter_tree():
	add_child(get_attr_component())
