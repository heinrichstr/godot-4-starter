extends CenterContainer
#Menu component that handles the menu actions

var margin = int(20)


func _on_settings_btn_pressed():
	print("show settings")


func _on_quit_btn_pressed():
	get_tree().quit()


func _on_resume_btn_pressed():
	get_parent().hideMenu()
