timer--;

if (timer <= 0){
	global.highScore = global.totalScore;
	room_goto_next();
	exit;
}

