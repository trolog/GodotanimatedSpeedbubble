extends Node2D

var bubble_text = "this is just a test"
var can_shrink = true
var bubble_text_length = 0
var bubble_text_index = 0
var current_text = ""

onready var lbltext = get_node("VBoxContainer/Label")
onready var ninerect = get_node("VBoxContainer/Label/NinePatchRect")

onready var timer = get_node("Timer")

var do_close = false

func _ready():
	bubble_text_length = bubble_text.length()
	timer.start(1)
	pass # Replace with function body.



func _on_Timer_timeout():
	if(!do_close):
		current_text += bubble_text[bubble_text_index]
		lbltext.text = current_text
		
		if(bubble_text_index < bubble_text_length -1):
			timer.start(0.04)
			bubble_text_index += 1
		else:
			if(!do_close):
				do_close = true
				timer.start(1)
	else:
		if(bubble_text_length > 0):
			current_text.erase(bubble_text_length -1,1)
			lbltext.text = current_text
			bubble_text_length -= 1
			if(can_shrink):
				ninerect.rect_size -= Vector2(6,0)
				ninerect.rect_position += Vector2(3,0)
			
			timer.start(0.04)
		else:
			queue_free()
	
	pass # Replace with function body.
