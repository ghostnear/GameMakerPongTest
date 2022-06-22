/// @description Chase the ball

if(y != obj_ball.y && abs(y - obj_ball.y) > obj_ball.ball_size)
	move_palette(sign(obj_ball.y - y))