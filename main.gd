extends Node2D

var enemy = preload("res://character/hostile/mob.tscn")

var counter: float = 0.0
var enemy_limit: int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	counter += delta
	if counter > 0.1 and enemy_limit > 0:
		var e = enemy.instantiate()
		e.position = Vector2(randi() % 300, randi() % 300)
		e.attribute.set_target($CebolaoLunar)

		add_child(e)
		
		enemy_limit -= 1
		counter = 0
	pass
