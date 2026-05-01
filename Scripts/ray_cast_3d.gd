extends RayCast3D

func _process(delta):
	if is_colliding():
		Global.get = get_collider()
		Global.yup = true
		#print(Global.get.name)
		$"../../../EKeyInteract".visible = true
	else:
		Global.yup = false
		$"../../../EKeyInteract".visible = false
