extends Button
@onready var audio = $"../../../../../Audio_click"
@onready var menu = $"../../../../../menu"
@onready var main_tabs = $"../../../.."
var i = 0
func _on_pressed() -> void:
	audio.play()
	i += 1
	if i >= 2:
		i = 0
	if i == 0:
		menu.hide()
		main_tabs.show()
	if i == 1:
		menu.show()
		main_tabs.hide()
func _on_button_pressed() -> void:
	menu.visible = false
	main_tabs.visible = true
	i = 0

func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)
