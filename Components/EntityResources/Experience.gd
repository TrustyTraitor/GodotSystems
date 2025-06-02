class_name Experience
extends EntityResource

@export var level: EntityResource

signal LeveledUp

func _set_value(val) -> void:
	super._set_value(val)
	_check_level_up()
	

func _check_level_up() -> void:
	if value >= max_value:
		level.value += 1
		value = 0
		_calculate_required_xp()
		LeveledUp.emit()
	

func _calculate_required_xp() -> void:
	max_value = level.value * 1000
	

func _get_configuration_warnings() -> PackedStringArray:
	return []
