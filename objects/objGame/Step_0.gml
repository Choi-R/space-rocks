if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case roomStart:
			room_goto_next()
			break
		case roomWin:
		case roomOver:
			game_restart()
			break
	}
}

if (room == roomGame) {
	if (score >= 500) {
	room_goto(roomWin)
}

	if (lives <= 0) {
	room_goto(roomOver)
}
}
