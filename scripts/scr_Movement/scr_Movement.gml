var up = keyboard_check(ord("W")) || keyboard_check(vk_up)
var down = keyboard_check(ord("S")) || keyboard_check(vk_down)
var left = keyboard_check(ord("A")) || keyboard_check(vk_left)
var right = keyboard_check(ord("D")) || keyboard_check(vk_right)

var h = 0
var v = 0

if (up) {
	v -= 1
}

if (down) {
	v += 1
}

if (left) {
	h -= 1
}

if (right) {
	h += 1
}

var dir = point_direction(0, 0, h, v)

if (abs(h) + abs(v) > 0) {
	h = lengthdir_x(1, dir)
	v = lengthdir_y(1, dir)
}

XV += h * Speed
YV += v * Speed

XV /= 1.4
YV /= 1.4

var border = 96

x += XV

if (x < border || x > room_width - border) {
	x -= XV
}

y += YV

if (y < border || y > room_height - border) {
	y -= YV
}