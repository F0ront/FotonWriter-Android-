extends Button
@onready var audio = $"../../../../../Audio_click"
@onready var panel = $"../../../.."
@onready var text_edit = $"../../TextEdit"
@onready var keyboard = $"../keyboard"
@onready var but_super = $"../super"
@onready var menu = $"../../../../../menu/TabContainer"
@onready var test_text = $"../../../../../menu/TabContainer/&SETTINGS/VBoxContainer/test_text"
@onready var key = $"../../../../&TEXTCHIPHER/VBoxContainer/HBoxContainer/LineEdit"
@onready var scroll_cont = $"../../../../&TEXTCHIPHER/VBoxContainer/ScrollContainer"
@onready var chipher_mode = $"../../../../&TEXTCHIPHER/VBoxContainer/HBoxContainer/chipher_mode"
@onready var chipher_text = $"../../../../&TEXTCHIPHER/VBoxContainer/ScrollContainer/chipher_text"
var sharp_st = load("res://themes/sharp_key.tres")
var round_st = load("res://themes/round_key.tres")
var sharp_font = load("res://fonts/FOTON_sharp.ttf")
var round_font = load("res://fonts/FOTON_round.ttf")
var panel_sh = load("res://themes/panel_sharp.tres")
var panel_ro = load("res://themes/panel_round.tres")
var i = 0
func _on_pressed() -> void:
	audio.play()
	i += 1
	if i >= 2:
		i = 0
	if i == 0:
		self.set_theme(round_st)
		size.x = size.y
		panel.set_theme(panel_ro)
		text_edit.set_theme(round_st)
		keyboard.set_theme(round_st)
		but_super.set_theme(round_st)
		menu.set_theme(round_st)
		test_text.remove_theme_font_override("font")
		test_text.add_theme_font_override("font", round_font)
		key.set_theme(round_st)
		scroll_cont.set_theme(round_st)
		chipher_mode.set_theme(round_st)
		chipher_text.set_theme(round_st)
	elif i == 1:
		self.set_theme(sharp_st)
		size.x = size.y
		panel.set_theme(panel_sh)
		text_edit.set_theme(sharp_st)
		keyboard.set_theme(sharp_st)
		but_super.set_theme(sharp_st)
		menu.set_theme(sharp_st)
		test_text.remove_theme_font_override("font")
		test_text.add_theme_font_override("font", sharp_font)
		key.set_theme(sharp_st)
		scroll_cont.set_theme(sharp_st)
		chipher_mode.set_theme(sharp_st)
		chipher_text.set_theme(sharp_st)
func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)
