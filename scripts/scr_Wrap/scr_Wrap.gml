var border = 8
var edgeX = 480 - border
var edgeY = 320 - border

var n = 1

for (var i = 1; i <= string_length(Message); i++) {
	if (string_width(string_copy(Message, n, i - (n - 1))) > edgeX * 3) {
		while (string_char_at(Message, i) != " " && i > 0) {
			i -= 1
		}
		if (i > 1) {
			Message = string_delete(Message, i, 1)
			Message = string_insert("#", Message, i)
			Message = string_hash_to_newline(Message)
			n = i
			if (string_height(Message) > edgeY) {
				ds_list_insert(Messages, 1, string_copy(Message, n + 2, string_length(Message)))
				Message = string_copy(Message, 1, i)
				break
			}
		} else {
			break
		}
	}
}