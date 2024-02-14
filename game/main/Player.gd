extends RigidBody2D

@onready var sprite := $Sprite
@onready var a := $Icon
@onready var kkk := preload("res://game/scenes/bullet.tscn")

const SPEED := 300.0

func _process(delta):
	pass

func _physics_process(delta):
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	apply_force(direction * SPEED)
	
	var mouse_pos := get_global_mouse_position()
	#look_at(mouse_pos)
	rotation = get_global_mouse_position().angle_to_point(position) - PI/2
	#rotate(PI)
	# ЗАМЕНИТЬ НА ФИЗ ВРАЩЕНИЕ
	if Input.is_action_just_pressed("ui_accept"):
		kkk.instantiate()

	
