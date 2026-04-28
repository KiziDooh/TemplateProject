extends Node3D
var headbob = true
var nom = true
var leftfoot = false
var rightfoot = true
var timer = false
var wasright = false
var wasleft = false
var spitspeed = 2
var idle = true
func _process(delta):
	$inefficient/AnimationPlayer7.speed_scale = spitspeed
	$inefficient/AnimationPlayer8.speed_scale = spitspeed
	$inefficient/AnimationPlayer9.speed_scale = spitspeed
	$inefficient/AnimationPlayer10.speed_scale = spitspeed
	$inefficient/AnimationPlayer11.speed_scale = spitspeed
	$inefficient/AnimationPlayer12.speed_scale = spitspeed
	$inefficient/AnimationPlayer13.speed_scale = spitspeed
	
	
	if headbob == true:
		$inefficient/AnimationPlayer.play("BrimAction")
		$inefficient/AnimationPlayer2.play("EyeAction")
		$inefficient/AnimationPlayer3.play("HatBaseAction")
		$inefficient/AnimationPlayer4.play("HornsAction")
		$inefficient/AnimationPlayer5.play("Key_001Action_003")
		$inefficient/AnimationPlayer6.play("RibbonAction")
		headbob = false
	if Input.is_action_pressed("P2_Seed_Tag"):
		$inefficient/AudioStreamPlayer.play()
		spitspeed = 2
		nom = true
		
	if Input.is_action_pressed("rawr"):
		$inefficient/AudioStreamPlayer2.play()
		spitspeed = 1
		nom = true
		
	if nom == true:
		$inefficient/AnimationPlayer7.play("KeyAction_004")
		$inefficient/AnimationPlayer8.play("Cylinder_009Action")
		$inefficient/AnimationPlayer9.play("Cylinder_010Action")
		$inefficient/AnimationPlayer10.play("Cylinder_011Action")
		$inefficient/AnimationPlayer12.play("Cylinder_013Action")
		$inefficient/AnimationPlayer13.play("Cylinder_014Action")
		$inefficient/AnimationPlayer11.play("Cylinder_015Action")
		nom = false
	

	
	if Global.jumpey == true:
		idle = false
		$inefficient/AnimationPlayer14.play("LeftLegArmatureAction")
		$inefficient/AnimationPlayer15.play("RightLegArmatureAction")
		headbob = true

	elif Global.run == true:
		idle = false

		if rightfoot == true and timer == false:
			$inefficient/AnimationPlayer15.play("RightLegArmatureAction")
			rightfoot = false
			wasright = true
			$inefficient/Timer.start()
			timer = true
			$inefficient/AnimationPlayer16.play("bounce")




		if leftfoot == true and timer == false:
			$inefficient/AnimationPlayer14.play("LeftLegArmatureAction")
			leftfoot = false
			wasleft = true
			$inefficient/Timer.start()
			timer = true
			$inefficient/AnimationPlayer16.play("bounce")

	else:
		idle = true
		headbob = true
	if idle == true:
		$inefficient/AnimationPlayer16.play("idle")

	


func _on_timer_timeout() -> void:
	#if idle != true:
	if wasleft == true:
		rightfoot = true
		wasleft = false
		timer = false
	if wasright == true:
		leftfoot = true
		wasright = false
		timer = false
	headbob = true
