func exportmap():
	var map = [""]
	var amountofblocks = 0
	for chunk in $TileMap.get_used_cells():
		amountofblocks = amountofblocks + 1

	map.append(amountofblocks)
	for chunk in $Tilemaps/Map.get_used_cells():
		map.append(chunk)
	return to_json(map)
