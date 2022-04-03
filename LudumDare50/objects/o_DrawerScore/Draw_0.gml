draw_set_halign(hAlign);
draw_set_valign(fa_middle);

draw_set_font(fnt_PressStart2P_20p);


draw_set_color(black);
draw_text(x+4,y+2, preText + string(floor(currentTime)));

draw_set_color(pickedColor);
draw_text(x,y,preText + string(floor(currentTime)));

