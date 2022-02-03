extends Node2D

func _ready():
	Global.key_is_picked = false
	$BG/ParallaxLayer/Anim.current_animation = "BG"
	$Anim.current_animation = "Level"

func _process(delta):
	if Global.key_is_picked == true:
		get_tree().change_scene("res://Scenes/Levels/Level3.tscn")
