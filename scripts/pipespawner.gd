extends Node

class_name PipeSpawner

signal crashed
signal scored

var pipe_scene = preload("res://scenes/pipes.tscn")

var pipe_speed = -150
@onready var spawn_timer = $Timer


func _ready():
	spawn_timer.timeout.connect(spawn_pipe)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func spawn_pipe():
	var pipe = pipe_scene.instantiate() as pipes
