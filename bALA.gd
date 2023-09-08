extends Area2D

var speed: float = 1.0
var direction: Vector2 = Vector2.DOWN

func _process(delta):
	position += direction * delta * speed

func die():
	self.modulate = Color(0,0,0,0)
