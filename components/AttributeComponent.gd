extends Node2D

## AttributeComponent class.
class_name AttributeComponent

## The MovementComponent associated with this AttributeComponent.
var _movement_component: Variant : set = set_movement_component, get = get_movement_component

## AttributeComponent constructor.
func _init(entity:Node2D, speed:float, playable: bool):

	if playable:
		self._movement_component = InputComponent.new(entity, speed)
	else:
		self._movement_component = MovementComponent.new(entity, speed)

	pass

## Returns the MovementComponent associated with this AttributeComponent.
func get_movement_component() -> Variant:
	return _movement_component

## Sets the MovementComponent associated with this AttributeComponent.
func set_movement_component(movement_component: Variant) -> void:
	_movement_component = movement_component
	pass

func _ready():
	get_movement_component().name = "MovementComponent" 

	add_child(get_movement_component())
	pass
