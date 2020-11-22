extends TileMap

# Procedural Map Generation
export var grid = []
var size = 0
var blueBase = null
var redBase = null

# transfer (x, y) to array index 
func _coor_trans(v2: Vector2) -> Vector2:
	return Vector2(v2[1], v2[0])

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	# now we only support 15 * 15
	# maybe map editor in the next version
	size = 15	
	while blueBase == redBase:
		blueBase = Vector2(randi() % size, randi() % size)
		redBase = Vector2(randi() % size, randi() % size)
	grid.resize(size)
	for x in range(size):
			grid[x] = []
			grid[x].resize(size)

	# update grid information
	var tempCoor = _coor_trans(blueBase)
	grid[tempCoor[0]][tempCoor[1]] = 1
	tempCoor = _coor_trans(redBase)
	grid[tempCoor[0]][tempCoor[1]] = 2
	set_cellv(blueBase, 1)
	set_cellv(redBase, 2)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
