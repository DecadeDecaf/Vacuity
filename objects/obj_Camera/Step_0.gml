var shake = 0

if (global.Screenshake > 0) {
	shake = (random_range(-global.Screenshake / 100, global.Screenshake / 100))
}

var playerX = median(960, obj_Player.x, room_width - 960)

var camX = playerX + shake
var camY = 540 + shake

var width = room_width / 1920

camera_set_view_size(Camera, 1920 - (global.Screenshake * width), 1080 - global.Screenshake)

var vm = matrix_build_lookat(camX, camY, -10, camX, camY, 0, 0, 1, 0)
camera_set_view_mat(Camera, vm)