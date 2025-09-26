extends Node2D

var one: String = "Welcome to message window"

func _ready():
	Globals.display_message.emit(one)


func _unhandled_input(event):
	if event.is_action_pressed("escape"):
			get_tree().quit()
