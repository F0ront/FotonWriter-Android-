extends MarginContainer

func _ready():
	_handle_screen_resize()
	
func _notification(what):
	if what == NOTIFICATION_RESIZED:
		_handle_screen_resize()
	
func _handle_screen_resize():
	var os_name = OS.get_name()
	if os_name == "Android" or os_name == "iOS"  or true:
		var screen_size = get_viewport_rect().size
		var safe_area = DisplayServer.get_display_safe_area()
		var safe_area_top = safe_area.position.y
		var safe_area_sides = safe_area.position.x
		var margin = 15
		if os_name == "iOS":
			var screen_scale = DisplayServer.screen_get_scale()
			safe_area_top = (safe_area_top / screen_scale)
			safe_area_sides = (safe_area_sides / screen_scale)
		if screen_size.x > screen_size.y:
			add_theme_constant_override("margin_top", margin)
			add_theme_constant_override("margin_right", safe_area_sides + margin)
			add_theme_constant_override("margin_bottom", margin)
			add_theme_constant_override("margin_left", safe_area_sides + margin)
		else:
			add_theme_constant_override("margin_top", safe_area_top + margin)
			add_theme_constant_override("margin_right", margin)
			add_theme_constant_override("margin_bottom", margin)
			add_theme_constant_override("margin_left", margin)
