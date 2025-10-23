class_name BulletsManager extends Node

var bulletScene: PackedScene
var canShoot: bool = true
var bulletDelay: float = 0.3
@onready var bullet_timer: Timer = $BulletTimer

func _init() -> void:
	bulletScene = preload("res://scenes/bullet.tscn")

func shootBullet(playerPos: Vector2) -> void:
	if canShoot:
		canShoot = false
		var bulletInstance = bulletScene.instantiate()
		bulletInstance.position = Vector2(playerPos.x + 100, playerPos.y + 50)
		add_child(bulletInstance)
		bullet_timer.start(bulletDelay)
	


func _on_bullet_timer_timeout() -> void:
	canShoot = true
