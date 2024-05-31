extends AbstractHostile

class_name Mob

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(position)
	self.move_and_collide(attribute.move(delta, 1) - position)
	pass
