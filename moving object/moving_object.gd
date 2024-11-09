extends Path2D

@export var speed : float = 1
@onready var pathFollow : PathFollow2D = $PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pathFollow.progress_ratio += speed * delta
	pass
