StarX = ds_list_create()
StarY = ds_list_create()
StarSize = ds_list_create()

for (var i = 0; i < 400; i++) {
	ds_list_add(StarX, random_range(-1920, 1920))
	ds_list_add(StarY, random_range(-1080, 1080))
	ds_list_add(StarSize, random_range(1, 2))
}