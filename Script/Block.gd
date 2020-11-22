extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Block_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			print("Left button was clicked at ", event.position)
		if event.button_index == BUTTON_RIGHT and event.pressed:
			print("Right button was clicked at ", event.position)
		if event.button_index == BUTTON_WHEEL_UP and event.pressed:
			print("Wheel up")
