extends RigidBody2D

class_name AbstractEntity

## The speed of the AbstractEntity.
@export_range(0, 500) var _speed: float = 250.0 : set = set_speed, get = get_speed

var _attribute_component = load("res://components/attr_component.tscn")

func set_speed(value: float) -> void:
	_speed = value
	_attribute_component.set_speed(_speed)
	pass

func get_speed() -> float:
	return _speed

func _init() -> void:
	self.gravity_scale = 0
	pass

func _enter_tree():
	_attribute_component = _attribute_component.instantiate()
	
	_attribute_component.name = "AttributeComponent"
	add_child(_attribute_component)
	
	pass

func _ready():
	pass
