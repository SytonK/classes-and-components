class_name BoundedStat


var max_stat: Stat = Stat.new(0)
var min_stat: Stat = Stat.new(0)
var value: float = 0 : set = _set_value


func _init(max_stat_arg: Stat = Stat.new(0), min_stat_arg: Stat = Stat.new(0), value_arg: float = 0):
	max_stat = max_stat_arg
	min_stat = min_stat_arg
	value = value_arg
	max_stat.value_changed.connect(_on_stats_chaneg)
	min_stat.value_changed.connect(_on_stats_chaneg)


func _set_value(new_value: float) -> void:
	value = clamp(new_value, min_stat.value, max_stat.value)

func _on_stats_chaneg(_new_value: float) -> void:
	_correct()

func _correct() -> void:
	if max_stat.value < min_stat.value:
		var temp = max_stat
		max_stat = min_stat
		min_stat = temp
	
	_set_value(value)
