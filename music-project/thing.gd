extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
"""
func _draw() -> void:
	var r = get_viewport_rect()
	r.size.x = r.size.x / 8
	r.size.y = r.size.y / 8
	#print(r.size.x)
	#print(tiles)
	var tile0 = Rect2(0,0, r.size.x, r.size.y)
	#draw_rect(Rect2(tile0), Color.RED)
	if Input.is_action_pressed("Click button"):
		draw_rect(tile0, Color.RED)
	var tiles = [tile0]
	pass
"""

func _draw() -> void:
	print("ver")
	var r = get_viewport_rect()
	r.size.x = r.size.x / 8
	r.size.y = r.size.y / 8
	var tile0 = Rect2(0,0, r.size.x, r.size.y)
	var tile1 = Rect2(r.size.x,0, r.size.x, r.size.y)
	var tiles = [tile0, tile1]
	for tile in range(len(tiles)):
		print("hune")
		#await Input.is_action_just_pressed("test")
		if $Button.button_down:
			print("piss")
			draw_rect(tiles[tile], Color.RED)
		#print("reach here")
	#print("reach")
	pass

#func _process(delta: float) -> void:
	#if Input.is_action_just_pressed("test"):
		#print("piss")
		#_draw()
	#pass


func _on_timer_timeout() -> void:
	pass # Replace with function body.


func _on_button_button_down() -> void:
	_draw()
	pass # Replace with function body.
