class_name Stat


signal value_changed(new_value: float)


var base_value: float : set = _set_base_value
var multiplier: float = 1 : set = _set_multiplier
var value: float


func _init(base_value_arg: float, multiplier_arg: float = 1):
	base_value = base_value_arg
	multiplier = multiplier_arg

func _update_value() -> void:
	var old_value = value
	value = base_value * multiplier
	if old_value != value:
		value_changed.emit(value)
	

func _set_base_value(new_base_value: float) -> void:
	base_value = new_base_value
	_update_value()

func _set_multiplier(new_multiplier: float) -> void:
	multiplier = new_multiplier
	_update_value()
