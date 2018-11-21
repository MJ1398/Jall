extends Node2D

var mouse_down = 0 #Flag to check if mouse if pressed
var loc	#location of mouse pressed
var loc2	#location of mouse relased
var vec1 = Vector2() #will store vector of position loc
var vec2 = Vector2() #will store vector of postion loc2
var vec3 = Vector2() #will store vector which will be used for motion
var moving = false #flag used for smooth motion

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

	if Input.is_action_just_pressed("ui_lmb"):
		mouse_down = 1
		loc = get_viewport().get_mouse_position()
	if Input.is_action_just_released("ui_lmb"):
		mouse_down = 0
		loc2= get_viewport().get_mouse_position()
		print(loc,loc2)
		vec1 = Vector2(loc)
		vec2 = Vector2(loc2)
		vec3 = vec2-vec1
		position+=vec3
		
