extends Node2D
class_name bosses

var hp = 0
var element = ""

func BossDamage(type, damage):
	hp -= damage
	print("Boss HP:", hp)

	if (hp <= 0):
		print("BOSS IS DEAD HEHEHEHE")

func getBossHP():
	return hp

func setBossHP(newhp):
	hp = newhp
