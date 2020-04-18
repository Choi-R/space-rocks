instance_destroy();
score += 10;

with(other){
	instance_destroy()
	
	if(sprite_index == sprAsteroinHuge) {
		var new_asteroid = instance_create_layer(x, y, "Instances", objAsteroid)
		new_asteroid.sprite_index = sprAsteroinMed
	}
	if(sprite_index == sprAsteroinMed) {
		var new_asteroid = instance_create_layer(x, y, "Instances", objAsteroid)
		new_asteroid.sprite_index = sprAsteroinSmall
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", objDebris)}

}