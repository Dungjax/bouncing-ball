extends RigidBody2D

class_name  Player
		
@export var baseSpeed : float = 300

@onready var sprite : Sprite2D = $Sprite2D
@onready var timer : Timer = $Timer
@onready var gpuParticles : GPUParticles2D = $GPUParticles2D
@onready var basePos

var currentState : String = "normal"

func _ready() -> void:
	linear_velocity = Vector2(baseSpeed, baseSpeed)
	basePos = position
	pass

func _physics_process(delta: float) -> void:
	gpuParticles.rotation = linear_velocity.angle()
	
	if currentState == "normal":
		if linear_velocity.length() > baseSpeed:
			linear_velocity *= 0.9
		
		if linear_velocity.length() < baseSpeed:
			linear_velocity *= 1.1
		
	pass

func _on_body_entered(body: Node) -> void:
	$"../../music".midiPlayer.playing = true
	pass


func _on_timer_timeout() -> void:
	currentState = "normal"
	pass # Replace with function body.


func _on_crushed_area_body_entered(body: Node2D) -> void:
	queue_free()
	pass
