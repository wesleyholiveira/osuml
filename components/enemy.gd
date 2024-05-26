extends Area2D

@export var speed = 100
var playerPos: Vector2
var velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(playerPos, delta * speed)
	pass

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_timer_timeout():
	print("IN")
	playerPos = get_parent().get_node("Player").position
	set_process(true)
	
	pass # Replace with function body.
