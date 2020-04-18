switch (room){
	case roomGame:
		draw_text(20, 20, "SCORE: "+string(score))
		draw_text(20, 40, "LIVES: "+string(lives))
		break
		
	case roomStart:
	draw_set_halign(fa_center)
		c = c_yellow
		draw_text_transformed_color( 
			room_width/2, 
			room_height/5,
			"SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		)
		draw_text(
			room_width/2,
			room_height*2/5,
			@"Score 500 points to win!
			
			
			UP: move forward
			LEFT/RIGHT: change direction
			DOWN: brake or move back
			SPACE: shoot
			
			>> PRESS ENTER TO START <<"
		)
			draw_set_halign(fa_left)
		break
		
	case roomWin:
		draw_set_halign(fa_center)
		c = c_green
		draw_text_transformed_color( 
			room_width/2, 
			room_height*2/5,
			"YOU WIN",
			3, 3, 0, c, c, c, c, 1
		)
		draw_text(
			room_width/2,
			room_height*3/5,
			"PRESS ENTER TO RESTART"
		)
		break
	case roomOver:
		draw_set_halign(fa_center)
		c = c_red
		draw_text_transformed_color( 
			room_width/2, 
			room_height*2/5,
			"GAME OVER",
			3, 3, 0, c, c, c, c, 1
		)
		draw_text(
			room_width/2,
			room_height*3/5,
			"FINAL SCORE: "+string(score)+@"
			
			PRESS ENTER TO RESTART"
		)
		break
}
