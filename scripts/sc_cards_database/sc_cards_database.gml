// Cards creation function
function card(_name,_role,_type,_sprite) constructor{
    name = _name;
    role = _role;
    type = _type;
    sprite = _sprite;
}

// Define the local clientside database
// Structure: card(name, role, type(group,personal,task,target),image)
cards_database = ds_list_create();
ds_list_add(cards_database, new card("Test 1",0,0,spr_blank_square));
ds_list_add(cards_database, new card("Test 2",0,0,spr_red_square));
ds_list_add(cards_database, new card("Test 3",1,0,spr_pink_square));
ds_list_add(cards_database, new card("Test 4",0,0,spr_green_square));
