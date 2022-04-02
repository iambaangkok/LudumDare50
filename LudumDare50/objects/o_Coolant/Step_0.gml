if(player != noone){	var playerDistance = distance_to_object(player);
	var playerDirection = point_direction(x,y,player.x,player.y);
	
	if(playerDistance <= coolantPullRadius){
		var multiplier = max(15,(coolantPullRadius - playerDistance))/coolantPullRadius
		
		var xvec = lengthdir_x(coolantPullForceX*multiplier,playerDirection);
		var yvec = lengthdir_y(coolantPullForceY*multiplier,playerDirection); 
		physics_apply_force( x, y, xvec, yvec );
	}
}
// Check Out of bounds
if(phy_position_x > room_width){
	phy_position_x = 1;
}else if(phy_position_x < 0){
	phy_position_x = room_width - 1;
}

if(phy_position_y > room_height + 20){
	phy_position_y = 1;
}
