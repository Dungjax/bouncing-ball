extends RigidBody2D

class_name Breakable

@export var health = 1

func _on_body_entered(body: Node) -> void:
	if body is Player:
		health -= 1
		
		if health <= 0:
			queue_free()
	pass # Replace with function body.
