extends Node

var action = load("res://Music/GameMusic.mp3")

func play_music():
	$Action.stream = action
	$Action.play()
	
func stop_music():
	$Action.stop()
