extends Label
var mode = true # true = crypt, false = decrypt
func _on_chipher_mode_pressed() -> void:
	if mode == true:
		mode = false
		$"../../HBoxContainer/chipher_mode".text = "["
	elif mode == false:
		mode = true
		$"../../HBoxContainer/chipher_mode".text = "]"

	var key = $"../../HBoxContainer/LineEdit".text
	var text_to_chi = $"../../../../&TEXTEDIT/VBoxContainer/TextEdit".text
	var alphabet = "oauvrdientch fg0123456789"
	var result = ""
	var key_index = 0
	for i in text_to_chi.length():
		var chara = text_to_chi[i]
		if alphabet.find(chara) != -1:
			var shift = alphabet.find(key[key_index])
			if mode == true:
				shift = -shift
			var new_index = (alphabet.find(chara) + shift) % 25
			result += alphabet[new_index]
			key_index = (key_index + 1) % key.length()
		else:
			result += chara
		if key == "":
			pass
	text = result
