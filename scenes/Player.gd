class_name Player

extends Area2D


@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Input.get_connected_joypads())
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	velocity = Input.get_vector(
		"move_right",
		"move_left",
		"move_up",
		"move_down",
		0.5
	) * 100
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	pass
