var map = 'insert map here'
var loadjson = JSON.parse(map)

func _ready():
 	var blockamt = loadjson.result[1]
	for block in range(int(blockamt + 2)):
		if block > 1:
			var mapcords = String(loadjson.result[block])
			mapcords = mapcords.replace("(", "")
			mapcords = mapcords.replace(")", "")
			mapcords = mapcords.replace(" ", "")
			mapcords = mapcords.split(",")
			var mapvector = Vector2(mapcords[0], mapcords[1])
			$TileMap.set_cellv(mapvector, 0)
