extends RigidBody2D

@onready var sprite := $Sprite
@onready var a := $Icon

const SPEED := 300.0

func _process(delta):
	var mouse_pos := get_viewport().get_mouse_position()
	sprite.look_at(mouse_pos + global_position - get_viewport().get_visible_rect().size/2)
	sprite.rotate(PI)

func _physics_process(delta):
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	apply_force(direction * SPEED)

