extends Node2D

onready var map = get_node("Classic Map")

var grid = []
var size = null
var blockCnts = null
var blueBase = null
var redBase = null
var _white = preload("res://Assets/white.png")

var currntChosenBlock

# return the sprite of index node
func _classicSpriteSelector(index : int) -> String:
	return "Classic Map/Node/Block" + str(index) + "/Color"

# transfer (x, y) to array index 
func _coor_trans(v2: Vector2) -> Vector2:
	return Vector2(v2[1], v2[0])

# Called when the node enters the scene tree for the first time.
func _ready():
	size = map._size
	blockCnts = map._blocksCnt
	randomize()
	while blueBase == redBase:
		blueBase = (randi() % blockCnts) + 1
		redBase = (randi() % blockCnts) + 1
	
	# blueBase = _classicSpriteSelector(blueBase)
	# redBase = _classicSpriteSelector(redBase)
	
	# get_node(blueBase).set_texture(Race.capi.raceTexture)
	# get_node(redBase).set_texture(Race.comm.raceTexture)
	

	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
