extends Node3D
var once = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.heartmusic == 3:
		if once == 0:
			$AnimationPlayer.play_section("Heart_Beat",0,0.1)
			once = 1
		$AnimationPlayer.play("shrivel")
