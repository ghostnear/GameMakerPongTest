/// @description Draw some elements

draw_set_color(c_gray)

draw_rectangle(
	room_width * (0.5 - bar_relative_width / 2),
	0,
	room_width * (0.5 + bar_relative_width / 2),
	room_height,
	false
)

draw_set_alpha(text_alpha)

draw_set_color(c_white)

draw_set_font(font_score)

draw_text(2 * room_width / 8 - room_width / 16, room_height / 3 - room_height / 4, leftpoints)
draw_text(6 * room_width / 8 - room_width / 16, room_height / 3 - room_height / 4, rightpoints)

draw_set_font(-1)

draw_set_alpha(1)

draw_set_color(c_white)