extends StaticBody2D

func _ready():
	$Anim.current_animation = "Key"

func _on_Hit_body_entered(body):
	if body.is_in_group("Player"):
		body.win()
		queue_free()
