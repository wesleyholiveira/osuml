extends RigidBody2D

class_name Enemy

@export var speed = 1
@export var Target: Node2D = null

var counter = 0

func _ready():
	pass

func _physics_process(delta):
	move_and_collide(Target.position * speed * delta)
	#if counter >= 40:
		#position = $MovementComponent.movse(Target.position, speed * (delta * counter))
		#counter = 0
		#
	#counter += 1
	pass
