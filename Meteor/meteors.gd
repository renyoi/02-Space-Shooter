extends Node2D

var max_meteors = 3
var meteor = load("res://Meteor/meteor.tscn")

func _ready():
	randomize()

func _physics_process(delta): 
	if get_child_count() < max_meteors:
		if randf() < 0.01:
			var Meteor = meteor.instance()
			Meteor.position.y = -100
			Meteor.position.x = randi() % 1024
			add_child(Meteor)
		
