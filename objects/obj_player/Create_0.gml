// Main
randomize();
// Role System
avaiable_roles = 2; // 0,1,2 range
role = irandom_range(0,avaiable_roles);

// Cards Control
cards_hand = ds_list_create();
avaiable_cards = ds_list_create();

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

cards_create = function(){
    if(ds_list_size(cards_hand) > 0){
        for(var i=0; i<ds_list_size(cards_hand); i++){
            var _card = instance_create_depth(room_width/2,room_height-64,i*-1,obj_card);
            with (_card) {
            	
            }
        }
    }
}

#region Create Functions Execute
avaiable_cards_search(role);
game_start(3);
#endregion