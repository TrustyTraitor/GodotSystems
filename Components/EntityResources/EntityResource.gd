class_name EntityResource
extends Node

@export var value: float : set = _set_value, get = _get_value
@export var max_value: float : set = _set_max_value, get = _get_max_value

# NOTE: Signals
signal changed
signal zeroed


# NOTE: Value Functions
func _set_value(val: float) -> void:
	value = val

	if value <= 0:
		zeroed.emit()	
	if value > max_value:
		value = max_value

	changed.emit()


func _get_value() -> float:
	return value


# NOTE: Max Value Functions
func _set_max_value(val) -> void:
	max_value = val
	# This'll cause value to update to back below the new max if it is lowered
	value = value 


func _get_max_value() -> float:
	return max_value
