extends MeshInstance



# Declare member variables here. Examples:
# var a = 2
# var b = "text
var Leg = "down"
var rng = RandomNumberGenerator.new()
var t = 0.0


# Check which leg is which
export var deploySpeed = 1 
var rotVector = Vector3(0,0,1)

	

# Called when the node enters the scene tree for the first time.
func _ready():
	# Get a random speed for which the legs will deploy between 3 to 5 seconds
	#rng.randomize()
	#var deploySpeed = rng.randi_range(3, 5)
	#print(deploySpeed)
	
	name = self.get_name()
	if name == "leg":
		rotVector = Vector3(0,0,-1)
	elif name == "leg2":
		rotVector = Vector3(0,0,-1)
	elif name == "leg3":
		rotVector = Vector3(0,0,1)
	elif name == "leg4":
		rotVector = Vector3(0,0,1)
	else:
		print("unkown_leg")
		
		rotVector = Vector3(0,0,1)#
	rotate_object_local(rotVector, deg2rad(50))



	
	
	
	 # Replace with function body.


var hold_time = 0.0
var objectRotation = 0
var targetRotation = 2.3
var current_rot = 0
var target_rot = 2.2
var upVector = Vector3.UP  
var direction = rotVector * 20
var rotSpeed = 1


func _physics_process(delta):

#	current_rot = self.rotate
	#var smoothrot = current_rot.slerp(target_rot, 0.5, delta)
	#transform.basis = Basis(smoothrot)
	#rot_speed = 2 - ()
	#rotate_object_local(rotVector, 50)
	#rotate_me(delta)

func rotate_me(deltaVal):
	if name == "leg":
		self.rotation = lerp(self.rotation, Vector3(0,0,1), deltaVal)
	elif name == "leg2":
		self.rotation = lerp(self.rotation,Vector3(0,0,1), deltaVal)
	elif name == "leg3":
		self.rotation = lerp(self.rotation, Vector3(0,1,0), deltaVal)
	elif name == "leg4":
		self.rotation = lerp(self.rotation, Vector3(0,1,0), deltaVal)
	
		


	
