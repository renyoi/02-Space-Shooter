extends Node2D


func _physics_process(_delta):
	var player = get_node_or_null("player")
	if player == null:
		get_tree().change_scene("res://HUD/End.tscn")
