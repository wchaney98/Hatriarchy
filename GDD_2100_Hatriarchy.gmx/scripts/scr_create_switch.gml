///scr_create_switch(x, y, mod, text)
// returns switch instance

var instance = instance_create(argument0, argument1, obj_avatar_switch);
instance.modifying = argument2;
instance.avatar_manager = id;
instance.text = argument3;
return instance;
