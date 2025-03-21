extends Button
var sharp_st = load("res://themes/sharp_key.tres")
var round_st = load("res://themes/round_key.tres")
var sharp_font = load("res://fonts/FOTON_sharp.ttf")
var round_font = load("res://fonts/FOTON_round.ttf")
var panel_sh = load("res://themes/panel_sharp.tres")
var panel_ro = load("res://themes/panel_round.tres")
var i = 0
func _on_pressed() -> void:
	$"../../../../../Audio_click".play()
	i += 1
	if i >= 2:
		i = 0
	if i == 0:
		self.set_theme(round_st)
		size.x = size.y
		$"../../../..".set_theme(panel_ro)
		$"../../TextEdit".set_theme(round_st)
		$"../../../../&TEXTCHIPHER/VBoxContainer/LineEdit".set_theme(round_st)
		$"../keyboard".set_theme(round_st)
		$"../super".set_theme(round_st)
		$"../../../../../menu/TabContainer".set_theme(round_st)
		$"../../../../../menu/TabContainer/&SETTINGS/VBoxContainer/test_text".remove_theme_font_override("font")
		$"../../../../../menu/TabContainer/&SETTINGS/VBoxContainer/test_text".add_theme_font_override("font", round_font)
	elif i == 1:
		self.set_theme(sharp_st)
		size.x = size.y
		$"../../../..".set_theme(panel_sh)
		$"../../TextEdit".set_theme(sharp_st)
		$"../../../../&TEXTCHIPHER/VBoxContainer/LineEdit".set_theme(sharp_st)
		$"../keyboard".set_theme(sharp_st)
		$"../super".set_theme(sharp_st)
		$"../../../../../menu/TabContainer".set_theme(sharp_st)
		$"../../../../../menu/TabContainer/&SETTINGS/VBoxContainer/test_text".remove_theme_font_override("font")
		$"../../../../../menu/TabContainer/&SETTINGS/VBoxContainer/test_text".add_theme_font_override("font", sharp_font)
func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)
