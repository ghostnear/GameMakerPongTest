/// @description Move the ball and check for collisions

with(obj_palette)
{
	if(point_in_rectangle(
		other.x + (adelta_time * other.ball_move_speed + other.ball_size / 2) * dcos(other.ball_angle),
		other.y + (adelta_time * other.ball_move_speed + other.ball_size / 2) * dsin(other.ball_angle),
		x - palette_actual_size_x *  palette_offset_x,
		y - palette_actual_size_y *  palette_offset_y,
		x - palette_actual_size_x * (palette_offset_x - 1),
		y - palette_actual_size_y * (palette_offset_y - 1)))
	{
		other.ball_angle = 180 - other.ball_angle
		other.ball_move_speed *= other.ball_modifier
	}
}

x += adelta_time * ball_move_speed * dcos(ball_angle)
y += adelta_time * ball_move_speed * dsin(ball_angle)

if(y < other.ball_size / 2 || y > room_height - other.ball_size / 2)
{
	ball_move_speed *= ball_modifier
	ball_angle = -ball_angle
}

// Left side win
if(x < 0)
{
	reset_ball()
	obj_gamemanager.rightpoints++
}

// Right side win
if(x > room_width)
{
	obj_gamemanager.leftpoints++
	reset_ball()
}