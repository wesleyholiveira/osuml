class_name Player

extends Area2D

@onready var player: AttributeComponent = $CebolaoCharacter
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2.ZERO
	velocity = Input.get_vector(
		"move_right",
		"move_left",
		"move_up",
		"move_down",
		0.5
	) * player.speed

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
