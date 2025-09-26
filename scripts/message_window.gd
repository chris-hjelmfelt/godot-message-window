extends Control

@onready var wide: PanelContainer = $MarginContainer/WidePanel
@onready var thin: PanelContainer = $MarginContainer/ThinPanel
@onready var widebox: VBoxContainer = $MarginContainer/WidePanel/MarginContainer/ScrollContainer/VBoxContainer
@onready var thinlabel: Label = $MarginContainer/ThinPanel/MarginContainer/Label
@onready var button: TextureButton = $ButtonContainer/TextureButton


func _ready() -> void:
	thin.visible = false
	button.flip_v = true
	Globals.display_message.connect(display)


func display(message: String):
	var newline = Label.new()
	newline.text = message
	widebox.add_child(newline)
	widebox.move_child(newline, 0)
	thinlabel.text = message  # copy new message to the thin panel


func _on_texture_button_pressed() -> void:
	thin.visible = !thin.visible
	wide.visible = !wide.visible
	button.flip_v = !button.flip_v
