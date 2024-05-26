extends Node2D

class_name MovementComponent

@export var speed : float = 250.0

func move(target_pos: Vector2, speed: float) -> Vector2:
	return get_parent().position.move_toward(target_pos, speed)
