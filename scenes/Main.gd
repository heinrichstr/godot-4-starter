extends Node


var gameScene = preload("res://scenes/Game.tscn")


func _ready():
	References.main_node = self
	


func loadGame():
	var game = gameScene.instantiate()
	var children = get_children()
	
	for child in children:
		child.queue_free()
	
	add_child(game)
