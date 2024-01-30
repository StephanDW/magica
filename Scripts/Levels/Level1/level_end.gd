extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	if ($level_1.GODOT.getBossHP() <= 0):
		print("you win")
	else:
		print("you lose")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")
