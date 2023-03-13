extends Node


func _ready():
	References.game_node = self


func _on_menu_btn_pressed():
	if $MainMenu.shown:
		$MainMenu.hideMenu()
	else:
		$MainMenu.showMenu()
