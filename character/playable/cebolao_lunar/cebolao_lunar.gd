extends AbstractPlayable


var player: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	
	player = _get_attribute_component().get_movement_component().get_entity()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += _get_attribute_component().get_movement_component().move(player.position, _get_speed() * delta)
	pass
