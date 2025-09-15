// Main
role = noone;

// Cards
cards_hand = ds_stack_create();

game_start = function(_initial_hand){
    while(ds_stack_size(cards_hand) < _initial_hand){
        var _avaiable_cards = ds_list_create();
        for(var i=0; i<ds_list_size(cards_database); i++){
            var _card=  cards_database[| i];
            var _card_role = _card.role;
            if(_card_role == role){
                ds_list_add(_avaiable_cards,_card);
            }
        }
        var _index = irandom(ds_list_size(_avaiable_cards))-1;
        var _card = cards_database[| _index];
        ds_stack_push(cards_hand,_card);
    }
    
    ds_list_destroy(_avaiable_cards);
}