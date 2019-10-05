draw_set_alpha(min(FrameCount / 50, 0.5))
draw_sprite(sprite_index, image_index, x, y)

var border = 8
var edgeX = 480 - border
var edgeY = 320 - border

var title = Title
var body = string_copy(Message, 1, Progress)

draw_set_font(fnt_Font)
draw_set_color(c_black)

draw_text(x - edgeX, y - edgeY, title)
draw_text_transformed(x - edgeX, y - edgeY + 64, body, 0.67, 0.67, 0)