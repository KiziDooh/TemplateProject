extends Node3D
	
func _process(delta):
	if Global.WhichSceme == "Seal1":
		if Global.buttoff == 1:
			$MeshInstance3D2.visible = true
			if Global.grab1.name == "button1" and Input.is_action_pressed("grab"):
				$MeshInstance3D2/AnimationPlayer.play("PUSH")
				$AudioStreamPlayer.play()
				Global.buttoff = 2
	if Global.WhichSceme == "Seal2":
		pass
