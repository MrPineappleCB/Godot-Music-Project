#extends Node2D
extends Button
var s = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _draw() -> void:
	#print("ver")
	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	r.size.y = r.size.y / 2
	var tile0 = Rect2(0,0, r.size.x, r.size.y)
	var tile1 = Rect2(r.size.x,0, r.size.x, r.size.y)
	var tile2 = Rect2(r.size.x, r.size.y, r.size.x, r.size.y)
	var tile3 = Rect2(0, r.size.y, r.size.x, r.size.y)
	var tiles = [tile0, tile1, tile2, tile3]
	#print("hune")
		#await Input.is_action_just_pressed("test")
	if Input.is_action_just_pressed("Click button"):
		print(s)
		draw_rect(tiles[s], Color.RED)
		$AudioStreamPlayer2D2.play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		#print(s)
		queue_redraw()
	elif Input.is_action_pressed("test"):
		draw_rect(tiles[s], Color.BLUE)
		$"../hihat".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		#print(s)
		queue_redraw()
	elif Input.is_action_pressed("clap"):
		draw_rect(tiles[s], Color.YELLOW)
		$"../clap".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		#print(s)
		queue_redraw()
	elif Input.is_action_pressed("crash"):
		draw_rect(tiles[s], Color.GREEN)
		$"../crash".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("openhat"):
		draw_rect(tiles[s], Color.PURPLE)
		$"../openhat".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("perc"):
		draw_rect(tiles[s], Color.PINK)
		$"../perc".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("ride"):
		draw_rect(tiles[s], Color.ORANGE)
		$"../ride".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("shaker"):
		draw_rect(tiles[s], Color.CYAN)
		$"../shaker".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("snare"):
		draw_rect(tiles[s], Color.DARK_GREEN)
		$"../snare".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
	elif Input.is_action_pressed("tom"):
		draw_rect(tiles[s], Color.LIGHT_YELLOW)
		$"../tom".play()
		s+=1
		if s > len(tiles)-1:
			s = 0
		queue_redraw()
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


#func _on_button_button_down() -> void:
	#_draw()
	#pass # Replace with function body.


func _on_audio_stream_player_2d_finished() -> void:
	pass # Replace with function body.


func _on_button_down() -> void:
	pass # Replace with function body.


func _on_h_scroll_bar_scrolling() -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db($"../HScrollBar".value))
	pass # Replace with function body.
