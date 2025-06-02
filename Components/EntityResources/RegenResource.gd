class_name RegenResource
extends Node

@export_range(0.0, 1.0, 0.01) var regen_rate: float

var parent_resource: EntityResource

func _ready() -> void:
	parent_resource = get_parent()

# NOTE: Built-in Functions
func _process(delta: float) -> void:
	if parent_resource.value < parent_resource.max_value:
		parent_resource.value += delta * (parent_resource.max_value * regen_rate)
		
