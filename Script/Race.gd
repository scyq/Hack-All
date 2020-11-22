extends Node

var blue = preload("res://Assets/blue.png")
var red = preload("res://Assets/red.png")
var purple = preload("res://Assets/purple.png")

var comm = Race.new(1, red, 1, 3, 1.5, 0)
var capi = Race.new(2, blue, 2, 3, 2, 0)
var cthu = Race.new(3, purple, 100, 1, 100, -0.5)

class Race:
	
	# Race Type
	# 1 : Communist
	# 2 : Capitalist
	# 3 : Cthulhu
	var type : int
	
	# race texture
	var raceTexture : Texture
	
	# base population
	# Communist : 1
	# Capitalist : 3
	# Cthulu : 100
	var basePop : int
	
	# action 
	# Communist : 3
	# Capitalist : 2
	# Cthulu : 1
	var action : int
	
	# pupolation increase per turn
	# Communist : 1.5 * population
	# Capitalist : 2 * population - 0.5 * blocks
	# Cthulu : 100
	var incPop : int
	
	# defend
	var defend : float
	
	func _init(_type, _raceTexture, _basePop, _action, _incPop, _defend):
		self.type = _type
		self.raceTexture = _raceTexture
		self.basePop = _basePop
		self.action = _action
		self.incPop = _incPop
		self.defend = _defend
		



