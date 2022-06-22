/// @description Variable declarations

// Make sure to get a new random seed
randomize()

ball_initial_move_speed = room_width / 3
ball_move_speed = ball_initial_move_speed


ball_splits = 15
ball_modifier = 1.01
ball_angle = 360 / ball_splits * random_range(0, ball_splits)

while(abs(ball_angle - 90) < 360 / ball_splits || abs(ball_angle - 270) < 360 / ball_splits)
	ball_angle = 360 / ball_splits * random_range(0, ball_splits)

ball_size = 20