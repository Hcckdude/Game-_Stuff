extends KinematicBody2D

const ACCELERATION = 500
const MAX_SPEED = 100
const ROLL_SPEED = 200
const FRICTION = 500

enum {
	MOVE,
	ROLL,
	}


var state = MOVE
var velocity = Vector2.ZERO
var roll_vector = Vector2.LEFT
var KeyHeld = false

func _ready():
	$AnimationPlayer.play("IdleFront");
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_down"):
		$AnimationPlayer.play("WalkForward");
	
	elif Input.is_action_pressed("ui_right"):
		$AnimationPlayer.play("WalkRight");
		
	elif Input.is_action_pressed("ui_left"):
		$AnimationPlayer.play("WalkLeft")
		
	if Input.is_action_pressed("ui_up"):
		$AnimationPlayer.play("WalkAway");
	
