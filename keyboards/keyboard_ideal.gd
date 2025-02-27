extends GridContainer
var letters = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "g", "f", "o", "a", "u", "v", "r", "d", "i", "e", "n", "t", "c", "h", "void_1", "+", " ", "=", "-", "void_2"]
func copy_keys():
	for i in letters:
		var new_node = $key.duplicate()
		new_node.name = str(i)
		add_child(new_node)

func _ready() -> void:
	copy_keys()
	$key.queue_free()
