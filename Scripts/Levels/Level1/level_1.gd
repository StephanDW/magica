extends Node2D

var GODOT
var PLAYER

func _ready():
	GODOT = bosses.new()
	PLAYER = player.new()
	
	GODOT.hp = 100
	PLAYER.hp = 100
	print(GODOT.hp)

func _on_button_pressed():
	GODOT.BossDamage("",10)
	if (GODOT.hp <= 0):
		get_tree().change_scene_to_file("res://scenes/level_end.tscn")
	
	PLAYER.playerDamage(5)
	if (PLAYER.hp <= 0):
		get_tree().change_scene_to_file("res://scenes/level_end.tscn")
