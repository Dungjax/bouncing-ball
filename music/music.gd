extends Node2D

@onready var midiPlayer : MidiPlayer = $MidiPlayer

func _ready() -> void:
	pass


func _on_midi_player_midi_event(channel: Variant, event: Variant) -> void:
	
	midiPlayer.playing = false
	
	pass
