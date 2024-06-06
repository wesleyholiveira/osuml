extends Node2D

class_name MovementComponent

var _delta_acc: float = 0
var _interval_skip: float = 0: get = get_interval_skip, set = set_interval_skip

func get_interval_skip() -> float:
	return _interval_skip

func set_interval_skip(value: float) -> void:
	_interval_skip = value

func _enter_tree():
	owner = get_parent()
