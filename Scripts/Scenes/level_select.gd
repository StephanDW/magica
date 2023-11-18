extends Node2D

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
