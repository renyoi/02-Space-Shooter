extends KinematicBody2D

var enemy_bullet = load("res://Enemy/enemy_bullet.tscn")
onready var bullets = get_node("/root/Game/bullets")
var speed = 2
var ready_to_move = true

func _ready():
	randomize()

func _physics_process(_delta):
	pass
	
func die(s):
	Global.score += s
	queue_free()


func _on_shoot_timeout():
	if randf() < 0.2 and position.y > 0:
		var Enemy_Bullet = enemy_bullet.instance()
		Enemy_Bullet.position = position 
		bullets.add_child(Enemy_Bullet)


func _on_move_timeout():
	if randf() < 0.2 and ready_to_move:
		var new_position = Vector2(randi() % 1024,randi() % 450)
		$Tween.interpolate_property(self, "position", position, new_position, speed, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		position = new_position
		$Tween.start()
		ready_to_move = false


func _on_Tween_tween_all_completed():
	ready_to_move = true
