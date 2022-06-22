/// @function move_palette(scale)
function move_palette(scale)
{
	y += palette_move_speed * adelta_time * scale
	y = clamp(y, palette_actual_size_y *  palette_offset_y, room_height + palette_actual_size_y * (palette_offset_y - 1))
}

function reset_ball()
{
	x = room_width / 2
	y = room_height / 2
	ball_move_speed = ball_initial_move_speed
	ball_angle = ball_splits * random_range(0, 360 / ball_splits)
	while(abs(ball_angle - 90) < 360 / ball_splits || abs(ball_angle - 270) < 360 / ball_splits)
		ball_angle = 360 / ball_splits * random_range(0, ball_splits)
	if(obj_gamemanager.leftpoints == 10 || obj_gamemanager.rightpoints == 10)
	{
		obj_gamemanager.leftpoints = 0
		obj_gamemanager.rightpoints = 0
	}
	obj_gamemanager.text_alpha = 1
}