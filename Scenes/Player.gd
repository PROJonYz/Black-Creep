extends KinematicBody2D

var vel = Vector2()
var gravity = 900
var jumpforce = -190

func _ready():
	pass
	
func _physics_process(delta):
	if not $Sprite.visible:
		return
	
	vel.x = 0
	
	if Input.is_action_pressed("Left"):
		vel.x -= 60
		$Sprite.flip_h = true
		$Sprite.animation = "Walk"
	elif Input.is_action_pressed("Right"):
		vel.x += 60
		$Sprite.flip_h = false
		$Sprite.animation = "Walk"
	else:
		vel.x = 0
		$Sprite.animation = "Idle"
		
	if Input.is_action_pressed("Jump") and is_on_floor():
		vel.y += jumpforce
		$JumpSFX.play()
		
	if Input.is_action_pressed("Esc"):
		get_tree().change_scene("res://Scenes/Levels/MainMenu.tscn")
		
	vel.y += delta * gravity
	
	vel = move_and_slide(vel, Vector2.UP)

func _on_Hitbox_body_entered(body):
	if body.is_in_group("Key"):
		$KeySFX.play()
		$Switch.start()
	
func _on_Switch_timeout():
	Global.key_is_picked = true
	
func die():
	$Sprite.visible = false
	$DeathFX.emitting = true
	
