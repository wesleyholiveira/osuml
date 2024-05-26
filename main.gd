extends Node2D

const enemy = preload("res://scenes/Enemy.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(1, 20):
		var e = enemy.instantiate()
		e.position = Vector2(randi() % 300, randi() % 300)
		e.Target = $Player
		#e.set_script(null)
		add_child(e)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
