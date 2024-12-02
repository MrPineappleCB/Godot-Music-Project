extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _draw() -> void:
	var r = get_viewport_rect()
	r.size.x = r.size.x / 8
	r.size.y = r.size.y / 8
	var tile0 = Rect2(0,0, r.size.x, r.size.y)
	var tile1 = Rect2(r.size.x,0, r.size.x, r.size.y)
	var tile2 = Rect2(r.size.x, r.size.y, r.size.x, r.size.y)
	var tiles = [tile0, tile1, tile2]
	pass
