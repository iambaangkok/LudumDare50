
red = $3945e6;
white = $e8fff5;
greyWhite = $e8e0df;
black = $2e1814;

text = "W / Space - Jump";

font = fnt_PressStart2P_20p;

hAlign = fa_center;

pickedColor = white

currentTime = 0;


opacity = 1;
opacityChangeRate = 0.00;
opacityChange = -opacityChangeRate;

function drawText(text, offsetX, offsetY){
	
	draw_set_color(black);
	draw_text(x+4+offsetX,y+2+offsetY, text);

	draw_set_color(pickedColor);
	draw_text(x+offsetX,y+offsetY,text);

	
}
