///scr_state_player_attack()

// Change player sprite to correct attack animation (only once)
if (!attacking)
{
    switch (attack_loc)
    {
        case LOC_MID:
            sprite_index = avatar_mid_attack;
            image_speed = 0.1;
            break;
        case LOC_LOW:
            sprite_index = avatar_low_attack;
            image_speed = 0.1;
            break;
    }
    attacking = true;
} 

// Otherwise check if the current attack is over
else
{
    switch (attack_loc)
    {
        case LOC_MID:
            if (image_index >= 4 && !hit_created)
            {
                var o = instance_create(x + (dir * 16 * PIXEL_CONST), y, obj_mid_hitbox);
                o.creator = id;
                hit_created = true;
                alarm[0] = room_speed * 0.15;
            }
            break;
        case LOC_LOW:
            if (image_index >= 2 && !hit_created)
            {
                var o = instance_create(x + (dir * 8 * PIXEL_CONST), y + (sprite_height / 2), obj_low_hitbox);
                o.creator = id;
                o.y -= (o.sprite_height / 2);
                hit_created = true;
                alarm[0] = room_speed * 0.12;
            }
            break;
    }
}
