extends Area2D

const SPEED = 800
var velocity = Vector2()

func _ready():
	pass
	
	
func _physics_process(delta):
	velocity.x = SPEED * delta
	translate(velocity)
	$AnimatedSprite.play("Lazer")

func launch(direction):
	var temp = global_position
	global_position = Input.get_action_strength

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
