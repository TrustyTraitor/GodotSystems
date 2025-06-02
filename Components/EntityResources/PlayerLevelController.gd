@tool
class_name PlayerLevelController
extends Node

# Make logic for updating the player's level based on signal from Experience
# or this is overly complicated and needs to be simplified lmao

func _find_child(type) -> bool:
	for child in get_children():
		if is_instance_of(child, type):
			return true
	return false


func _get_configuration_warnings() -> PackedStringArray:
	var level_res := _find_child(EntityResource)
	var experience_res := _find_child(Experience)
	
	var errors = []
	
	if not level_res:
		errors.append("Must contain an EntityResource node to hold the player's Level")
	if not experience_res:
		errors.append("Must contain an Experience node to hold the current experience amount")
		
	return errors
