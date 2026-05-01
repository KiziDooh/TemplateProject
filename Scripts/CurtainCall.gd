extends Node
var open = false
@export var raynam: Curtain
#@export var Song: Curtain

func _process(delta: float) -> void:
		if Global.yup == true:
			if raynam.RayName == Global.get.name and Input.is_action_pressed("LightUp"):
					$AnimationPlayer.play("Cylinder_001Action")
					$AnimationPlayer2.play("Cylinder_001Action_001")
					$AnimationPlayer3.play("Cylinder_002Action")
					$AnimationPlayer4.play("Cylinder_002Action_001")
					$AnimationPlayer5.play("Cylinder_003Action")
					$AnimationPlayer6.play("Cylinder_003Action_001")
					$AnimationPlayer7.play("Cylinder_004Action")
					$AnimationPlayer8.play("Cylinder_004Action_001")
					$AnimationPlayer9.play("PlaneAction")
					$AnimationPlayer10.play("PlaneAction_001")
					if $AnimationPlayer10.animation_finished:
						$AudioStreamPlayer3D.play()
						$Cube/SpotLight3D.visible = true
						open = true
						$AudioStreamPlayer.set_stream(raynam.Song)
						$AudioStreamPlayer.play()
