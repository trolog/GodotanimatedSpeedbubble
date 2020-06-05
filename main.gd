extends Node2D

export var bubble : PackedScene

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("ui_accept")):
		var new_bubble = bubble.instance()
		new_bubble.bubble_text = "Hey! Animated Speech \n Bubble"
		new_bubble.global_position = Vector2(300,100)
		new_bubble.can_shrink = false
		add_child(new_bubble)
	pass
