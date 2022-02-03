extends Node2D

func _ready():
	$Final.playing = true
	$BG/ParallaxLayer/Anim.current_animation = "BG"
	$Anim.current_animation = "Level"
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
