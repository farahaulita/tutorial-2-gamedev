extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
			
			
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
			get_tree().change_scene("res://scenes/MainLevel.tscn")

			
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
