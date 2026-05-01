extends Node3D
var timer = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.oney == true:
		if timer == false:
			$Timer.start()
			$AudioStreamPlayer.play()
			$AudioStreamPlayer2.play()
			$CSGBox3D/SpotLight3D.visible = false
			$"THE FINAL".visible = true
			timer = true

func _on_timer_timeout() -> void:
	if Global.oney == false:
		$AudioStreamPlayer.play()
		$CSGBox3D/SpotLight3D.visible = true
	else:
		$"THE FINAL".visible = false
		get_tree().change_scene_to_file("res://Levels/LevelTemplate.tscn")
	print("wow")
