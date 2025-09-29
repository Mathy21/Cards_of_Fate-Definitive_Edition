var _x,_y,_w;
_x = view_xport[0];
_y = view_yport[0];
_w = view_wport[0];

if(ds_list_size(avaiable_cards) > 0){
    for(var i=0; i<ds_list_size(avaiable_cards); i++){
        draw_text(_x+32,_y+string_height("TEXT")*i,avaiable_cards[| i]);
    }
}
if(ds_list_size(cards_hand) > 0){
    for (var i = 0; i < ds_list_size(cards_hand); i++) {
    	draw_text(_x+_w/2,_y+string_height("TEXT")*i,cards_hand[| i]);
    }
}
