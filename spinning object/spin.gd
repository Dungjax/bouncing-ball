extends StaticBody2D


func _physics_process(delta: float) -> void:
	
	$SpinningObject.rotate(0.01)