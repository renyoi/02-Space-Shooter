extends Area2D

var speed = 1.4
var velocity = Vector2.ZERO

func _physics_process(_delta):
	position += velocity 
	velocity.y += speed
	if position.y > 600:
		queue_free()

func _on_enemy_bullet_body_entered(body):
	body.die(0)
	queue_free()