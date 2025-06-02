class_name TestNode
extends Node3D

@export var weaknesses : Array[EffectType]

#func take_damage(source: SpellEffect):
	#if source.effectType in weaknesses:
		#print("ouchie")
