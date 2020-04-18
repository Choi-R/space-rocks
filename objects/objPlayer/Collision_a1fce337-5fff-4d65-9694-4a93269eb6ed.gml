instance_destroy();
lives -= 1;
repeat(100){
	instance_create_layer(x, y, "Instances", objDebris)
}

room_goto(roomGame)
// alarm[0] = 120;

