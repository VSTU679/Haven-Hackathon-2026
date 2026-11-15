extends Node

@onready var timer_label: Label = %TimerLabel
@onready var countdown: Timer = $Countdown

var count = 0

func add_count():
	count += 1
	print("count: ", count)

func _process(delta):
	timer_label.text = str(int(countdown.time_left))
	
func _on_countdown_timeout() -> void:
	get_tree().reload_current_scene()
		
#hello 
