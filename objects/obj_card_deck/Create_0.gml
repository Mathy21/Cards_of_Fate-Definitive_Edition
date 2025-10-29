// Check if clicked
click_check = function(){
    if(position_meeting(mouse_x,mouse_y,id) && instance_exists(obj_player)){
        if(mouse_check_button_released(mb_left)){
            with (obj_player) {
            	add_new_card(cards_hand_limit);
            }
        }
    }
}

