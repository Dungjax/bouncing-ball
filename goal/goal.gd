extends Area2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Player) -> void:
	if body is Player:
		body.linear_damp = 10
		body.collision_mask = 2
		body.gpuParticles.emitting = false
	pass

func _on_body_exited(body: Player) -> void:
	if body is Player:
		body.linear_damp = 0
	pass
