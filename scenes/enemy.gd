extends Area2D

@export var speed = 100
@export var Target: Node2D = null

var playerPos: Vector2
var velocity: Vector2

func _ready():
	pass

func _process(delta):
	playerPos = Target.position
	position = position.move_toward(playerPos, delta * speed)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
