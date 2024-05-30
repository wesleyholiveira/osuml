extends RigidBody2D

class_name AbstractEntity

## The speed of the AbstractEntity.
@export_range(0, 500) var _speed: float = 250.0 : set = set_speed, get = get_speed

var attribute: AttributeComponent

func _init(target: AbstractEntity = null) -> void:

	# TODO: Find a way to overwrite in the editor
	self.gravity_scale = 0
	self._speed = get_speed()

	self.attribute = AttributeComponent.new(self, _speed, target)
	pass

func set_speed(value: float) -> void:
	_speed = value
	pass

func get_speed() -> float:
	return _speed

func _ready():

	attribute.name = "AttributeNode"
	add_child(attribute)

	pass
