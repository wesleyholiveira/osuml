class_name Player

extends Area2D


@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x -= 100
	if Input.is_action_pressed("move_left"):
		velocity.x += 100
	if Input.is_action_pressed("move_down"):
		velocity.y += 100
	if Input.is_action_pressed("move_up"):
		velocity.y -= 100
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	pass
