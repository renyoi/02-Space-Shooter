extends Control

onready var global = get_node("/root/Global")

func _on_play_pressed():
	global.score = 0
	get_tree().change_scene("res://Game.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _physics_process(_delta):
	$score.text = "Final Score:    " + str(Global.score)
