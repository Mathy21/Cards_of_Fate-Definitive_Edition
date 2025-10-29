// Main
randomize();
// Role System
avaiable_roles = 2; // 0,1,2 range
role = irandom_range(0,avaiable_roles);

// Cards Control
cards_hand = ds_list_create();
cards_object_hand = [];
avaiable_cards = ds_list_create();
card_hand_size = 0;
can_centrilize = true;

// Player Cards Hand Control
cards_hand_initial = 3;
cards_hand_limit = 10;

// Cards search: Will filter all role cards for all game usage
avaiable_cards_search = function(_role){
    for(var i=0; i<ds_list_size(global.cards_database); i++){
        var _card=  global.cards_database[| i];
        var _card_role = _card.role;
        if(_card_role == _role){
            ds_list_add(avaiable_cards,_card);
        }
    }
}

game_start = function(_initial_hand){
    while(ds_list_size(cards_hand) < _initial_hand){
        var _index = irandom(ds_list_size(avaiable_cards)-1);
        var _card = avaiable_cards[| _index];
        ds_list_add(cards_hand,_card);
    }
}

centrilize_cards = function(_cards_hand,_cards_number){
    var _xsizes_count = 0;
    if(array_length(_cards_hand) > 0){
        for(var i=0; i<_cards_number; i++){
            var _card = _cards_hand[i];
            _xsizes_count += _card.sprite_width;
            card_hand_size = _xsizes_count;
        }
        for(var j=0; j<_cards_number; j++){
            var _card = _cards_hand[j];
            var _posx = ((room_width/2-card_hand_size/2)+_card.sprite_width/2)+_card.sprite_width/3*j;
            with(_card){
                x = _posx;
            }
        }
    }
    card_hand_size = 0;
}

cards_create = function(){
    if(ds_list_size(cards_hand) > 0 && ds_list_size(cards_hand) > instance_number(obj_card)){
        var i = instance_number(obj_card)-1;
        while(ds_list_size(cards_hand) > instance_number(obj_card)){
            i = instance_number(obj_card);
            var _card = instance_create_depth(room_width/2+(32*i),room_height-64,i,obj_card);
            with (_card) {
                var _origin_card = other.cards_hand[| i];
            	_card.card_name = _origin_card.name;
                _card.card_image = _origin_card.sprite;
                _card.card_role = _origin_card.role;
                _card.card_type = _origin_card.type;
            }
            array_push(cards_object_hand,_card);
        }
        can_centrilize = true;
    }
}

add_new_card = function(_hand_limit){
    if(ds_list_size(cards_hand) < _hand_limit){
        var _index = irandom(ds_list_size(avaiable_cards)-1);
        var _card = avaiable_cards[| _index];
        ds_list_add(cards_hand,_card);
    }
}

#region Create Functions Execute
avaiable_cards_search(role);
game_start(3);
cards_create();
#endregion