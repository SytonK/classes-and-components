class_name BoundedValue


@export var max_value: float = 0 : set = _set_max_value
@export var min_value: float = 0 : set = _set_min_value
@export var value: float = 0 : set = _set_value


func _init(max_value_arg: float = 0, min_value_arg: float = 0, value_arg: float = 0):
	max_value = max_value_arg
	min_value = min_value_arg
	value = value_arg


func _set_value(new_value: float) -> void:
	value = clamp(new_value, min_value, max_value)

func _set_min_value(new_min_value: float) -> void:
	min_value = new_min_value
	if max_value < min_value:
		max_value = min_value
	_set_value(value)

func _set_max_value(new_max_value: float) -> void:
	max_value = new_max_value
	if min_value > max_value:
		min_value = max_value
	_set_value(value)
