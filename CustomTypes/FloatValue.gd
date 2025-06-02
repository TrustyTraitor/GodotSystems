class_name FloatValue
extends Resource

signal on_zero

@export var value: float : set = _set_value, get = _get_value

func _get_value():
	return value
	
func _set_value(val):
	value = val
	changed.emit()
	
	if value <= 0:
		on_zero.emit()
		
