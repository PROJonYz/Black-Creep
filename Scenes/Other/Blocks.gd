extends Area2D

func _on_Blocks_body_entered(body):
	if body.is_in_group("Player") and $Sprite.frame == 2:
		$TryAgain.playing = true
		$TryAgainTimer.start()

func _on_SwitchBad_timeout():
	$Sprite.frame = 2
	$SwitchGood.start()

func _on_SwitchGood_timeout():
	$Sprite.frame = 1
	$SwitchBad.start()

func _on_TryAgainTimer_timeout():
	get_tree().reload_current_scene()
