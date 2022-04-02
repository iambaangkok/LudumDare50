draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_PressStart2P_30p);

draw_set_color(black);
draw_text(x+4,y+2,floor(wallChamber.currentHeat));

draw_set_color(red);
draw_text(x,y,floor(wallChamber.currentHeat));
