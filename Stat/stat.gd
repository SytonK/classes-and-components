class_name Stat
extends Node


@export var base_value: float : set = _set_base_value
@export var multiplier: float = 1 : set = _set_multiplier
var value: float


func _update_value() -> void:
	value = base_value * multiplier

func _set_base_value(new_base_value: float) -> void:
	base_value = new_base_value
	_update_value()

func _set_multiplier(new_multiplier: float) -> void:
	multiplier = new_multiplier
	_update_value()
