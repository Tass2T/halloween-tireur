class_name BulletsManager extends Node

var bulletScene: PackedScene

func _init() -> void:
	bulletScene = preload("res://scenes/bullet.tscn")

func shootBullet(playerPos: Vector2) -> void:
	var bulletInstance = bulletScene.instantiate()
	add_child(bulletInstance)
	
