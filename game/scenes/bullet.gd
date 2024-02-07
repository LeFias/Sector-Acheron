extends CharacterBody2D


const SPEED := 300.0
var direction := Vector2()


func _physics_process(delta):
	velocity = direction * SPEED
	move_and_slide()
