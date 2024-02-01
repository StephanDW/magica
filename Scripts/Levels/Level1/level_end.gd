extends Node2D

func _ready():

	if (Global.GAME_WON):
		print("You win")
	else:
		print("You lose")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")
