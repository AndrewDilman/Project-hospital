extends Node2D


export var file : StreamTexture


func _ready():
	$Button_Anim.play("Anim")
	
	GLOBAL.sprite.texture=file

func Body_entered(body):
	if body.is_in_group("player"):
		Show_Button()
		

func Body_exited(body):
	if body.is_in_group("player"):
		Hide_Button()

func Hide_Button():
	$ShowHide_Anim.play("Hide_Button")
	pass

func Show_Button():
	#$Tween.interpolate_property($Button2, "/rect/position/y", -10, -88, 1.0, Tween.TRANS_BACK, Tween.EASE_IN)
	$ShowHide_Anim.play("Show_Button")


