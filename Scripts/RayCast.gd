extends RayCast3D
var colliding

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_colliding():
		Global.GetColliding = get_collider()
		Global.RayColliding = true
	
		print(Global.GetColliding.name)
	else:
		Global.RayColliding = false
