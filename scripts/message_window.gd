extends Control


func _ready() -> void:
	Globals.display_message.connect(display)


func display(message: String):
	$MarginContainer/PanelContainer/MarginContainer/VBoxContainer/Label.text = message
