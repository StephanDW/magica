extends Node2D

var GODOT
func _ready():
	GODOT = bosses.new()
	
	GODOT.hp = 100
	print(GODOT.hp)

func _on_button_pressed():
	GODOT.BossDamage("",10)
