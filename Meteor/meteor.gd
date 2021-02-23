extends Area2D

var speed = 5

func _physics_process(_delta):
	position.y += speed
	if position.y >= 600:
		queue_free()
func _on_meteor_body_entered(body):
	body.die(0)
