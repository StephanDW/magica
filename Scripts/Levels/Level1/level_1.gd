extends Node2D

var GODOT
var PLAYER

var elem1
var elem2
var elem3

func _ready():
	GODOT = bosses.new()
	PLAYER = player.new()
	
	GODOT.hp = 100
	PLAYER.hp = 100
	
	$bosshp.value = GODOT.hp
	$playerhp.value = PLAYER.hp

func _on_button_pressed():
	var damage = 0
	
	if (elem1):
		damage += 10
		
	if (elem2):
		damage += 10
		
	if (elem3):
		damage += 10
	
	GODOT.BossDamage("",damage)
	$bosshp.value = GODOT.hp
	if (GODOT.hp <= 0):
		get_tree().change_scene_to_file("res://scenes/level_end.tscn")
	
	PLAYER.playerDamage(5)
	$playerhp.value = PLAYER.hp
	if (PLAYER.hp <= 0):
		get_tree().change_scene_to_file("res://scenes/level_end.tscn")

func _on_elem_1_toggled(button_pressed):
	elem1 = button_pressed


func _on_elem_2_toggled(button_pressed):
	elem2 = button_pressed


func _on_elem_3_toggled(button_pressed):
	elem3 = button_pressed
