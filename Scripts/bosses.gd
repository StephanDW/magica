extends Node2D
class_name bosses

var hp = 0
var element = ""

func BossDamage(type, damage):
	hp -= damage
	print("Boss HP:", hp)

	# Optionally, you can add logic to check if the boss is defeated.
	if (hp <= 0):
		print("BOSS IS DEAD HEHEHEHE")
