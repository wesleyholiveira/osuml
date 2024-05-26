extends Area2D

class_name Enemy

@export var speed = 100
@export var Target: Node2D = null

var counter = 0

func _ready():
	pass

func _process(delta):
	if counter >= 40:
		position = $MovementComponent.move(Target.position, speed * (delta * counter))
		counter = 0
		
	counter += 1
