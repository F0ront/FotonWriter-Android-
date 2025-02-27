extends Button
var void_theme = load("res://themes/void_button.theme")
var sharp_st = load("res://themes/sharp_key.tres")
var round_st = load("res://themes/round_key.tres")
func _ready() -> void:
	text = name
func _on_pressed() -> void:
	var caret_col = int($"../../TextEdit".get_caret_column())
	var caret_mi = caret_col - 1
	var caret_pl = caret_col + 1
	var caret_lin = int($"../../TextEdit".get_caret_line())
	if name != "+" and name != "-" and name != "=":
		$"../../../../../Audio_click".play()
		$"../../TextEdit".insert_text_at_caret(text)
	elif name == "=":
		$"../../../../../Audio_click".play()
		$"../../TextEdit".remove_text(caret_lin, caret_mi, caret_lin, caret_col)
	elif name == "+":
		$"../../../../../Audio_click".play()
		$"../../TextEdit".set_caret_column(caret_mi)
	elif name == "-":
		$"../../../../../Audio_click".play()
		$"../../TextEdit".set_caret_column(caret_pl)

func _on_button_down() -> void:
	set_z_index(1)

func _on_button_up() -> void:
	set_z_index(0)

func _process(_delta: float) -> void:
	if $"../../line/font".i == 0:
		self.set_theme(round_st)
	elif $"../../line/font".i == 1:
		self.set_theme(sharp_st)
	if name == "void_1" or name == "void_2":
		text = ""
		self.set_theme(void_theme)
