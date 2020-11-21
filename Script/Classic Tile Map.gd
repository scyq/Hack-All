extends TileMap

# Procedural Map Generation
var grid = []
var size = 0
var blueBase = null
var redBase = null

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	size = 15
	while blueBase == redBase:
		blueBase = Vector2(randi() % size, randi() % size)
		redBase = Vector2(randi() % size, randi() % size)
	grid.resize(size)
	for x in range(size):
		grid[x] = []
		grid[x].resize(size)
		for y in range(size):
			grid[x][y] = 0

	for x in range(size):
		for y in range(size):
			set_cell(x, y, 0)
	set_cellv(blueBase, 1)
	set_cellv(redBase, 2)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
