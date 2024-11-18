extends Button

@onready var window_scene = preload("res://Scenes/window.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fish_garden_pressed() -> void:
	var window = window_scene.instantiate()
	add_child(window)
	window.load_scene("res://Scenes/fish_garden.tscn", "Fish Garden")

	get_tree().call_group("window_buttons", "release_focus")
