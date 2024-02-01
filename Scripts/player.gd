extends Node2D
class_name player

var hp = 0

func playerDamage(damage):
	hp -= damage
	print("Player HP:", hp)

	if (hp <= 0):
		print("RiP Player")

func getPlayerHP():
	return hp

func setPlayerHP(newhp):
	hp = newhp
