extends CharacterBody2D

signal unit_selected

func _ready():
	pass
	
func _physics_process(delta):
	move_and_slide()

func _on_button_pressed():
	print("Swordsman Pressed")
