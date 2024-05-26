extends RigidBody2D


@export var speed = 100
@export var Target: Node2D = null

var collision_radius = 16

var counter = 0

func _ready():
	pass

func _process(delta):
	counter += 1
	if counter >= 10:
		move_and_collide($MovementComponent.move(Target.position, speed * (delta * counter)) - position)
		counter = 0


func _on_body_entered(body):
	$CollisionShape2D.shape.radius = collision_radius * 1.1
	pass

func _on_body_exited(body):
	$CollisionShape2D.shape.radius = collision_radius
	pass # Replace with function body.

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.
