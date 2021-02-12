extends Spatial
onready var hand_gun = $"../../../"
onready var camera = $"../../../../Camera"

export var hand_int = Vector3()
export var hand_fin = Vector3()

func _ready():
	pass
	
func _process(delta):
	aim(delta)
	
	
	
	
func aim(delta):
	if Input.is_action_pressed("RMB"):
		hand_gun.transform.origin = lerp(hand_gun.transform.origin , hand_fin , 10* delta)
		camera.fov = lerp(camera.fov , 10 , 10*delta)
		camera.cull_mask = camera.cull_mask and 2
	if ! Input.is_action_pressed("RMB"):
		hand_gun.transform.origin = lerp(hand_gun.transform.origin , hand_int , 10*delta)
		camera.fov = lerp(camera.fov , 70 , 10*delta)
		camera.cull_mask = camera.cull_mask | 2
