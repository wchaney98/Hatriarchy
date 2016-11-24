///scr_state_player_hit()

scr_get_input();

life_last_step = life;
sprite_index = avatar_hit;
if (!been_hit)
{
    scr_hit_reset_vars();
    alarm[4] = room_speed * 0.15;
    been_hit = true;
}

