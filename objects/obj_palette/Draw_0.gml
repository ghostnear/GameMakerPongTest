/// @description Draw the pallete

draw_set_color(image_blend)

palette_actual_size_x = palette_size_x * image_xscale
palette_actual_size_y = palette_size_y * image_yscale

draw_rectangle(
	x - palette_actual_size_x *  palette_offset_x,
	y - palette_actual_size_y *  palette_offset_y,
	x - palette_actual_size_x * (palette_offset_x - 1),
	y - palette_actual_size_y * (palette_offset_y - 1),
	false)

draw_set_color(c_white)