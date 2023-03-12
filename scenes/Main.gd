extends Node




func _on_menu_btn_pressed():
	if $MainMenu.shown:
		$MainMenu.hideMenu()
	else:
		$MainMenu.showMenu()
