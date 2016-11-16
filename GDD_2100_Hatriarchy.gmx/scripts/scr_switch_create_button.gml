///scr_switch_create_button(x, y, dir)
// returns switch instance

var instance = instance_create(argument0, argument1, obj_avatar_switch_arrow);
instance.image_xscale *= PIXEL_CONST;
instance.image_yscale *= PIXEL_CONST;
instance.dir = argument2;
instance.creator = id;

return instance;
