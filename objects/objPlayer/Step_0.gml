tiltLeft = keyboard_check(vk_left)
tiltRight = keyboard_check(vk_right)
forward = keyboard_check(vk_up)
back = keyboard_check(vk_down)

tilt = (tiltLeft - tiltRight) * 5
moving = (forward - back) * 0.05

image_angle += tilt
motion_add(image_angle, moving)

cooldown -= 0.5
if (keyboard_check(vk_space) && cooldown <= 0) {
	var bullet = instance_create_layer(x, y, "Instances", objBullet)
	bullet.direction = image_angle;
	cooldown = 5
}

move_wrap(true, true, sprite_width/2)


