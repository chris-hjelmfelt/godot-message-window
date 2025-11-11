extends Label


func _ready():
	$".".add_theme_color_override("font_color", Color(0.0, 0.8, 0.0))
	$Timer1.start()


func _on_timer_timeout() -> void:
	$".".add_theme_color_override("font_color", Color(1.0,1.0,0.0))
	$Timer2.start()


func _on_timer_2_timeout() -> void:
	$".".add_theme_color_override("font_color", Color(1.0,1.0,1.0))
