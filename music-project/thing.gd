extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var r = get_viewport_rect()
	#r.size.x = r.size.x / 8
	r.size.y = r.size.y / 8
	print(r.size.x)
	pass
