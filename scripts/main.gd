extends Node2D

var count: int = 1

func _ready():
	Globals.display_message.emit("Welcome to message window")


func send_message():
	Globals.display_message.emit("Message number " + str(count))
	count += 1


func _unhandled_input(event):
	if event.is_action_pressed("escape"):
			get_tree().quit()


func _on_timer_timeout() -> void:
	send_message()
