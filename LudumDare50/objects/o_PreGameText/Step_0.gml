

if(opacity + opacityChange <= 0){
	opacity = 0;	
	opacityChange = opacityChangeRate;
}else if(opacity + opacityChange >= 1){
	opacity = 1;
	opacityChange = -opacityChangeRate;
}else{
	opacity += opacityChange;
}
