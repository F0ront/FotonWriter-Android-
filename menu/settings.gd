extends TabBar
@onready var text_edit = $"../../../main_tabs/&TEXTEDIT/VBoxContainer/TextEdit"
@onready var test_text = $VBoxContainer/test_text
@onready var lang = $VBoxContainer/language
var i = 0
func _ready() -> void:
	TranslationServer.set_locale("en")
	text_edit.add_theme_font_size_override("font_size", 50)
	test_text.add_theme_font_size_override("font_size", 50)
func _on_h_slider_value_changed(value: float) -> void:
	text_edit.add_theme_font_size_override("font_size", value)
	test_text.add_theme_font_size_override("font_size", value)
func _on_language_pressed() -> void:
	i += 1
	if i >= 4:
		i = 0
	if i == 0:
		lang.text = ("ENG")
		TranslationServer.set_locale("en")
	elif i == 1:
		lang.text = ("РУС")
		TranslationServer.set_locale("ru")
	elif i == 2:
		lang.text = ("УКР")
		TranslationServer.set_locale("uk")
	elif i == 3:
		lang.text = ("fot")
		TranslationServer.set_locale("fo")
