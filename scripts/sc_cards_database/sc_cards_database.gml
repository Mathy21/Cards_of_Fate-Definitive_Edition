// Cards creation function
function card(_name,_role,_type,_sprite) constructor{
    name = _name;
    role = _role;
    type = _type;
    sprite = _sprite;
}

// Define the local clientside database
// Structure: card(name, role, type(group,personal,task,target),image)
// Roles: 0 - Honest, 1 - Medic, 2 - Corrupt, 3.0 - Honest and Medic Item, 3.1 - Corrupt Item
global.cards_database = ds_list_create();
ds_list_add(global.cards_database, new card("Test 1",1,0,spr_blank_square));
ds_list_add(global.cards_database, new card("Test 2",0,0,spr_red_square));
ds_list_add(global.cards_database, new card("Test 3",1,0,spr_pink_square));
ds_list_add(global.cards_database, new card("Test 4",0,0,spr_green_square));
ds_list_add(global.cards_database, new card("Test 5",2,0,spr_blank_square));
ds_list_add(global.cards_database, new card("Test 6",2,0,spr_red_square));
ds_list_add(global.cards_database, new card("Test 7",1,0,spr_pink_square));
ds_list_add(global.cards_database, new card("Test 8",0,0,spr_green_square));
