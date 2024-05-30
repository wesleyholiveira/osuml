extends AbstractPlayable

class_name CebolaoLunar

func _init():
	super()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += attribute.move(delta)
	pass
