extends Area2D

class_name Goal

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	

func _on_body_entered(body: Player) -> void:
	if body is Player:
		body.collision_layer = 4
		body.collision_mask = 2
		body.linear_damp = 10
		body.gpuParticles.emitting = false
	pass

func _on_body_exited(body: Player) -> void:
	if body is Player:
		body.linear_damp = 0
		body.collision_layer = 1
		body.collision_mask = 3
	pass
