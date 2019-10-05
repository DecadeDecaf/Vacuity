draw_set_circle_precision(64)
gpu_set_blendmode(bm_add)

draw_set_alpha(0.05)
draw_circle_color(x, y, 96, c_white, c_black, false)

gpu_set_blendmode(bm_normal)
draw_set_alpha(1)

draw_self()