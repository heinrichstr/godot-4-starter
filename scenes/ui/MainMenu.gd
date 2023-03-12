extends Control
#use showMenu() and hideMenu() to control whether the menu is active on screens
	#default menu state is set in _ready()

var animating = false
var shown = false


func _ready():
	$Menu.modulate = Color(1,1,1,0)
	$Menu.hide()


func showMenu():
	if animating == false:
		var tw = get_tree().create_tween().set_trans(Tween.TRANS_QUART).set_ease(Tween.EASE_IN_OUT).set_parallel()
		
		State.player_input = false
		$Menu.modulate = Color(1,1,1,0)
		$Menu.show()
		tw.tween_property($Menu, "modulate", Color(1,1,1,1), 0.5)
		
		await tw
		State.player_input = true
		animating = false
		shown = true


func hideMenu():
	if animating == false:
		var tw = get_tree().create_tween().set_trans(Tween.TRANS_QUART).set_ease(Tween.EASE_IN_OUT).set_parallel()
		
		State.player_input = false
		animating = true
		$Menu.modulate = Color(1,1,1,1)
		
		tw.tween_property($Menu, "modulate", Color(1,1,1,0), 0.5)
		
		await tw
		$Menu.hide()
		State.player_input = true
		animating = false
		shown = false
