y -= Speed
Speed /= 1.08

if (Speed < 0.1 && !Spawned) {
	instance_create_depth(obj_Player.x, obj_Player.y - 1000, depth, obj_EarthOrb)
	instance_create_depth(obj_Player.x + 2000, obj_Player.y, depth, obj_WaterOrb)
	instance_create_depth(obj_Player.x, obj_Player.y + 3000, depth, obj_AirOrb)
	instance_create_depth(obj_Player.x - 4000, obj_Player.y, depth, obj_FireOrb)
	Spawned = true
	obj_Control.Shake = true
}