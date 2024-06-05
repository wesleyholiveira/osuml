extends AbstractEntity

class_name AbstractHostile

@export var _target : RigidBody2D : get = get_target, set = set_target

func get_target() -> RigidBody2D:
	return _target

func set_target(value: RigidBody2D) -> void:
	_target = value
	pass

func _init() -> void:
	super()
	pass

func _ready() -> void:
	pass
