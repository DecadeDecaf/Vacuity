x = obj_Player.x + lengthdir_x(Distance, Direction)
y = obj_Player.y + lengthdir_y(Distance, Direction)

var size = (1 - (Distance / 64)) / 2

image_xscale = size
image_yscale = size

Distance -= 1

if (Distance <= 0) {
	instance_destroy()
}