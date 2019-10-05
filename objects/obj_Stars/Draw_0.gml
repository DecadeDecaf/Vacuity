draw_set_alpha(0.4)

var shineDir = point_direction(960, 540, obj_Player.x, obj_Player.y)
var shineDis = point_distance(960, 540, obj_Player.x, obj_Player.y) / 2
var shineX = 960 - lengthdir_x(shineDis, shineDir)
var shineY = 540 - lengthdir_y(shineDis, shineDir)

draw_circle_color(shineX + random_range(-8, 8), shineY + random_range(-8, 8), 2048, c_purple, c_black, false)

draw_set_color(c_white)
draw_set_alpha(0.5)

var stars = ds_list_size(StarX)

for (var i = 0; i < stars; i++) {
	draw_circle(shineX - StarX[| i], shineY - StarY[| i], StarSize[| i], false)
}

draw_set_alpha(1)