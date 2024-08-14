extends Control

var score : int = 0
var time_left : int = 30

func _ready():
	$TimeLeftLabel.text = "TIME LEFT: " + str(time_left) + " s"
	
func _on_increase_score_button_pressed():
	score += 1
	$ScoreLabel.text = "SCORE: " + str(score)
	Input.vibrate_handheld(125)

func _on_time_left_timer_timeout():
	time_left -= 1
	$TimeLeftLabel.text = "TIME LEFT: " + str(time_left) + " s"
