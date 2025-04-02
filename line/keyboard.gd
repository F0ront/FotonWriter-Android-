extends Button
@onready var audio = $"../../../../../Audio_click"
@onready var keyboard = $"../../keyboard"
var i = 0
func _on_pressed() -> void:
	audio.play()
	i += 1
	if i >= 2:
		i = 0
	if i == 0:
		keyboard.show()
	elif i == 1:
		keyboard.hide()

func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)
