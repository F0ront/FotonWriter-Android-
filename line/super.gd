extends Button
var i = 0
func _on_pressed() -> void:
	$"../../../../../Audio_click".play()
	i += 1
	if i >= 2:
		i = 0
	if i == 0:
		$"../../../../../menu".hide()
		$"../../../..".show()
	if i == 1:
		$"../../../../../menu".show()
		$"../../../..".hide()
func _on_button_pressed() -> void:
	$"../../../../../menu".visible = false
	$"../../../..".visible = true
	i = 0

func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)
