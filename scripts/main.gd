extends Node2D

var count: int = 1

func _ready():
	Globals.display_message.emit("Welcome to message window")


func _unhandled_input(event):
	if event.is_action_pressed("escape"):
			get_tree().quit()


func _on_button_pressed() -> void:
	Globals.display_message.emit("Button Click " + str(count))
	count += 1
