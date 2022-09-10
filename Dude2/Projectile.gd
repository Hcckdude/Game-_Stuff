extends KinematicBody2D

var velocity = Vector2()
var Speed = 10


func _physics_process(delta):
	velocity.x = Speed * delta
	translate(velocity)
	var collision_info = move_and_collide(velocity * delta * Speed)
