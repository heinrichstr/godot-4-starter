extends Control
#use showMenu() and hideMenu() to control whether the menu is active on screens
	#default menu state is set in _ready()

var animating = false
var shown = false
var settingsShown = false
var creditsShown = false


func _ready():
	$Menu.hide()
	$SettingsMenu.menu_node = self
	$SettingsMenu.hide()
	$Credits.menu_node = self
	$Credits.hide()


func showMenu():
	get_tree().paused = true
	$Menu.show()
	shown = true


func hideMenu():
	if settingsShown:
		hide_settings()
	
	if creditsShown:
		hide_credits()
	
	$Menu.hide()
	shown = false
	get_tree().paused = false


func show_settings():
	$SettingsMenu.show()
	settingsShown = true


func hide_settings():
	$SettingsMenu.hide()
	settingsShown = false


func show_credits():
	$Credits.show()
	creditsShown = true


func hide_credits():
	$Credits.hide()
	creditsShown = false
