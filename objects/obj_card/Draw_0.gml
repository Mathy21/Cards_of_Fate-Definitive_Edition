draw_self();

// Draw card name
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y-(sprite_height-10),card_name);

draw_set_valign(fa_top);
draw_set_halign(fa_left);