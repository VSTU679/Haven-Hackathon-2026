extends Area2D

@onready var game_manager = %GameManager
@onready var respawn = %respawn

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_count()
	body.global_position = respawn.global_position
	queue_free()
