extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			pass

func is_point_inside_collision_shape(point: Vector2, collision_shape:CollisionShape2D):
	var r = RectangleShape2D.new()
	r.extents = Vector2(1,1)
	var cam = get_viewport().get_camera()
	return collision_shape.shape.collide(collision_shape.get_global_transform(), r,
	Transform2D(0, point + cam.get_global_transform().get_origin()))
