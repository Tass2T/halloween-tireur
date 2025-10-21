class_name Player extends CharacterBody2D

@onready var bullets_manager: BulletsManager = $BulletsManager

func _physics_process(delta: float) -> void:
	position = get_global_mouse_position()
	
	move_and_slide()
	
func _input(event: InputEvent) -> void:
	if (event.is_action("shoot")):
		bullets_manager.shootBullet(position)
