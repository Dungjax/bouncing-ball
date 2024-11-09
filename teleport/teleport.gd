extends Area2D

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		#body.set_physics_process(false)
		body.global_transform.origin = body.basePos
	pass
