extends Area2D


@export var boostDuration : float = 1
@export var boostAmount : float = 2


func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Player) -> void:
	if body is Player:
		if body.currentState == "normal":
			
			body.currentState = "boost"
		body.timer.start(boostDuration)
	pass
