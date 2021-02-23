extends Control

func _physics_process(_delta):
	$score.text = "Score: " + str(Global.score)
