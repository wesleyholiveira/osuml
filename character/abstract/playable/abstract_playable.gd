extends AbstractEntity

class_name AbstractPlayable

func _init():
	super(true)
	
	var movement_component: InputComponent = self._attribute_component.get_movement_component()
	self._attribute_component.set_movement_component(movement_component as InputComponent)
	
	pass
