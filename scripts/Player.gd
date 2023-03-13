extends KinematicBody2D

onready var path = get_tree().get_nodes_in_group("path")
export var speed = Vector2(300,0)
var x_pos = null
var direction_vector
func _ready():
	GLOBAL.player = self

func _input(event):
	if event.is_action_pressed("click"):
		x_pos =get_viewport().get_mouse_position()
#		x_pos = stepify(x_pos,1 )
#		Flip_sprite()

func _physics_process(delta):  
	if x_pos:
		direction_vector = (x_pos - global_position).normalized()
		move_and_slide(direction_vector * speed)
		print(x_pos)


#func Flip_sprite():
#	var flip = Vector2(x_pos - global_position.x, 0).normalized()
#	if flip==-1:
#		$Sprite.scale.x = -0.15
#	else:
#		$Sprite.scale.x = 0.15
#	pass

func OldMove_by_x(delta):
	var g_pos = global_position.x
	if x_pos and not( g_pos in range(x_pos-10, x_pos+10) ):
		$AnimationPlayer.play("walk")
		print(g_pos," ", x_pos)
		direction_vector = Vector2(x_pos - global_position.x, 0).normalized()
		move_and_slide(direction_vector * speed)
	else:
		$AnimationPlayer.play("stay")
