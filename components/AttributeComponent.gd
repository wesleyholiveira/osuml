extends Node2D

class_name AttributeComponent

@export var ch_name: String = ""
@export var dmg: int = 1
@export var def: int = 1
@export var endurance = 0
@export var hp: int = 20
@export var sp: int = 5
@export_range(1, 15) var speed: float:
	get:
		return 100 if !speed else speed
	set(speedo):
		speed = speedo * 100

func _ready():
	pass

func _process(delta):
	pass
