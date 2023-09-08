extends Area2D

const speed: float = 112.0
const maxlives: int = 5
const maxbomb: int = 5
const speedmultiplier: float = 2.0

var input: Vector2 = Vector2.ZERO

func ready():
	#it is  connecting bc it's complaining abt return value
	connect("area_entered", self, "_on_area_entered")

func _process(delta):
	#uncomment to verify it is, in fact, detecting the bullet
	print(get_overlapping_areas())
	
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	position += input.normalized() * delta * speed

func _on_area_entered(area):
	#never gets called
	print(area)

func die():
	pass
