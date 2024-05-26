class_name Player

extends Area2D

@onready var player: AttributeComponent = $CebolaoCharacter
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	position += $InputComponent.move(player.position, player.speed * delta)
	
