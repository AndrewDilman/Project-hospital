#extends KinematicBody2D
#
#onready var path = get_tree().get_nodes_in_group("path")
#var speed = 300
#var x_pos = null
#var direction
#func _ready():
#	GLOBAL.player = self
#
#func _input(event):
#	if event.is_action_pressed("click"):
#		x_pos = event.position.x
#		x_pos = stepify(x_pos, 1)
#		Flip_sprite()
#
#func _physics_process(delta):
#	OldMove_by_x(delta)
#
#func Move_by_x(delta):
#	var g_pos = global_position.x
#	print(g_pos," ", x_pos)
#	direction = Vector2(x_pos - global_position.x, 0).normalized() 
#
#	move_and_slide(direction * speed)
#
#func Flip_sprite():
#	var flip = Vector2(x_pos - global_position.x, 0).normalized().x
#	if flip==-1:
#		$Sprite.scale.x = -0.15
#	else:
#		$Sprite.scale.x = 0.15
#	pass
#
#func OldMove_by_x(delta):
#	var g_pos = global_position.x
#	if x_pos and not( g_pos in range(x_pos-10, x_pos+10) ):
#		$AnimationPlayer.play("walk")
#		print(g_pos," ", x_pos)
#		direction = Vector2(x_pos - global_position.x, 0).normalized()
#		move_and_slide(direction * speed)
#	else:
#		$AnimationPlayer.play("stay")
