draw_set_alpha(0.2)

var shineDir = point_direction(1920, 1080, obj_Player.x, obj_Player.y)
var shineDis = point_distance(1920, 1080, obj_Player.x, obj_Player.y) / 2
var shineX = 1920 - lengthdir_x(shineDis, shineDir)
var shineY = 1080 - lengthdir_y(shineDis, shineDir)

draw_circle_color(shineX + random_range(-8, 8), shineY + random_range(-8, 8), 4096, c_yellow, c_black, false)