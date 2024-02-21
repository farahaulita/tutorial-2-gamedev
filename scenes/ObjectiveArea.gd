extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		get_tree().change_scene("res://scenes/Transition.tscn")
		
	else:
		print("Reached objective!")
		get_tree().change_scene("res://scenes/Finish.tscn")
		
