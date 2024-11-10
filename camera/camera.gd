extends Camera2D

var currentTarget = null
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_UP):
		currentTarget = $"../players".get_child(index)
		index += 1
		
		if index > $"../players".get_child_count():
			index = 0
			
	elif Input.is_key_pressed(KEY_ENTER):
		currentTarget = null
		
	if currentTarget != null:
		global_position = currentTarget.global_position
	else:
		global_position = Vector2.ZERO
	pass