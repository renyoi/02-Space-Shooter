extends Node2D

var max_enemies = 3
var enemy = load("res://Enemy/enemy.tscn")

func _ready():
	randomize()

func _physics_process(delta): 
	if get_child_count() < max_enemies:
		if randf() < 0.05:
			var Enemy = enemy.instance()
			Enemy.position.y = -100
			Enemy.position.x = randi() % 1024
			add_child(Enemy)
		
