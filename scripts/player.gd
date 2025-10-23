class_name Player extends CharacterBody2D

@onready var bullets_manager: BulletsManager = $BulletsManager

func _physics_process(delta: float) -> void:
	position = get_global_mouse_position()
	
	if Input.is_action_pressed("shoot"):
		bullets_manager.shootBullet(position)
	
	move_and_slide()
	
