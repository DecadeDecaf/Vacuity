var mouseX = device_mouse_x_to_gui(0)
var mouseY = device_mouse_y_to_gui(0)

var offsetX = 1
var offsetY = 2
var size = 92

for (var i = 0; i < 20; i++) {
	draw_set_color(c_white)
	draw_set_alpha(0.5)
	draw_rectangle(offsetX, offsetY, offsetX + size, offsetY + size, false)
	draw_set_alpha(1)
	var orb = ds_list_find_value(obj_Player.Orbs, i)
	if (!is_undefined(orb)) {
		var sprite = asset_get_index("spr_" + orb + "Orb")
		if (orb == global.Orb) {
			var dir = 0
			gpu_set_fog(true, c_white, 0, 0)
			repeat (8) {
				draw_sprite(sprite, 0, offsetX + (size / 2) + lengthdir_x(4, dir), offsetY + (size / 2) + lengthdir_y(4, dir))
				dir += 45
			}
			gpu_set_fog(false, c_black, 0, 0)
		}
		draw_sprite(sprite, 0, offsetX + (size / 2), offsetY + (size / 2))
	}
	offsetX += 96
	if (offsetX + size > 1920) {
		offsetX = 1
		offsetY += 96
	}
}

offsetX = 1
offsetY = 2
size = 92

var cursor = false

for (var i = 0; i < 20; i++) {
	var orb = ds_list_find_value(obj_Player.Orbs, i)
	if (!is_undefined(orb)) {
		if (point_distance(mouseX, mouseY, offsetX + (size / 2), offsetY + (size / 2)) < size / 2) {
			cursor = true
			draw_set_color(c_white)
			draw_set_alpha(0.75)
			draw_rectangle(mouseX, mouseY, mouseX + 128, mouseY + 40, false)
			draw_set_font(fnt_Font)
			draw_set_color(c_black)
			draw_text_transformed(mouseX, mouseY, orb, 0.67, 0.67, 0)
			draw_set_alpha(1)
			var click = mouse_check_button_pressed(mb_left)
			if (click) {
				if (global.Orb != "") {
					if (orb == global.Orb) {
						scr_StopDialogue()
					} else {
						scr_Combine(orb, global.Orb)
					}
				} else {
					global.Orb = orb
				}
			}
		}
	}
	offsetX += 96
	if (offsetX + size > 1920) {
		offsetX = 1
		offsetY += 96
	}
}

if (cursor) {
	window_set_cursor(cr_none)
} else {
	window_set_cursor(cr_default)
}