extends Node2D

func _ready():
	MusicController.stop_music()
	$BG.current_animation = "BG"

func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")
func _on_Play_mouse_entered():
	$Anim.current_animation = "Play"
func _on_Play_mouse_exited():
	$Anim.current_animation = "Stop"

func _on_Exit_pressed():
	get_tree().quit()
func _on_Exit_mouse_entered():
	$Anim.current_animation = "Exit"
func _on_Exit_mouse_exited():
	$Anim.current_animation = "Stop"
