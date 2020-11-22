extends Node2D

var blockScene = preload("res://Scene/Block.tscn")
var _size = 15
var _blocksCnt = 15 * 15
var blockList = []

# return the position of blocks
func _getPos(index : int) -> Vector2:
	var baseVector = Vector2(64, 64)
	var x = index % _size
	var y = int(index / _size)
	return baseVector + Vector2(x * 64, y * 64)

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(_blocksCnt):
		var block = blockScene.instance()
		var pos = _getPos(i)
		block.position = pos
		add_child(block)
		blockList.append(block)
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
