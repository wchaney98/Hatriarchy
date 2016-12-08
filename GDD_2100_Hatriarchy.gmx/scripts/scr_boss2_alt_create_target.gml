///scr_boss2_alt_create_target()

if random(1) <= good_chance
{
    instance_create(random_range(64, room_width - 64), random_range(64, room_height - 64), obj_boss2_alt_target_good);
} else 
{
    instance_create(random_range(64, room_width - 64), random_range(64, room_height - 64), obj_boss2_alt_target_bad);
}
