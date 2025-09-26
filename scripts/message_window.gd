extends Control

@onready var vbox: VBoxContainer = $MarginContainer/PanelContainer/MarginContainer/ScrollContainer/VBoxContainer


func _ready() -> void:
	Globals.display_message.connect(display)


func display(message: String):
	var newline = Label.new()
	newline.text = message
	vbox.add_child(newline)
	vbox.move_child(newline, 0)
