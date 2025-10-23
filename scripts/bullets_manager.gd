class_name BulletsManager extends Node

var bulletScene: PackedScene
@onready var bullet_timer: Timer = $BulletTimer

func _init() -> void:
	bulletScene = preload("res://scenes/bullet.tscn")

func shootBullet(playerPos: Vector2) -> void:
	var bulletInstance = bulletScene.instantiate()
	bulletInstance.position = Vector2(playerPos.x + 100, playerPos.y + 50)
	add_child(bulletInstance)
	
