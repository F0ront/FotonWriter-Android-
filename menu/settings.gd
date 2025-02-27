extends TabBar
var i = 0
func _ready() -> void:
	TranslationServer.set_locale("en")
	$"../../../main_tabs/&TEXTEDIT/VBoxContainer/TextEdit".add_theme_font_size_override("font_size", 50)
	$VBoxContainer/test_text.add_theme_font_size_override("font_size", 50)
func _on_h_slider_value_changed(value: float) -> void:
	$"../../../main_tabs/&TEXTEDIT/VBoxContainer/TextEdit".add_theme_font_size_override("font_size", value)
	$VBoxContainer/test_text.add_theme_font_size_override("font_size", value)
func _on_language_pressed() -> void:
	i += 1
	if i >= 4:
		i = 0
	if i == 0:
		$VBoxContainer/language.text = ("ENG")
		TranslationServer.set_locale("en")
	elif i == 1:
		$VBoxContainer/language.text = ("РУС")
		TranslationServer.set_locale("ru")
	elif i == 2:
		$VBoxContainer/language.text = ("УКР")
		TranslationServer.set_locale("uk")
	elif i == 3:
		$VBoxContainer/language.text = ("fot")
		TranslationServer.set_locale("fo")
