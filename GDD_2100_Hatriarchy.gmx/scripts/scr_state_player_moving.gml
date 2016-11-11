///scr_state_player_moving()

scr_get_input();

dir = sign(image_xscale); // get direction player is facing

// Check for vats key (enable/disable)
if (player_one_vats_prs)
{
    vats = true;
    scr_vats_get_targets(obj_player2); // obj_player2 is exception to targets that aren't enemies
    state = scr_state_player_vats;
    exit;
}

// TODO: Rest of attacks
if (player_one_mid_attack_prs) 
{
    state = scr_state_player_attack;
    attack_loc = LOC_MID;
    exit;
}
if (player_one_low_attack_prs)
{
    state = scr_state_player_attack;
    attack_loc = LOC_LOW;
    exit;
}

// TODO: Blocking (same implementation as above)
if (!on_block_cd)
{
    if (player_one_low_block_prs)
    {
        block_loc = LOC_LOW;
        state = scr_state_player_blocking;
        exit;
    }
    if (player_one_mid_block_prs)
    {
        block_loc = LOC_MID;
        state = scr_state_player_blocking;
        exit;
    }
    if (player_one_high_block_prs)
    {
        block_loc = LOC_HIGH;
        state = scr_state_player_blocking;
        exit;
    }
}

h_speed = (player_one_right_down - player_one_left_down) * spd; // easy way to get movement

// Idle vs walking animations
if (h_speed != 0) 
{
    sprite_index = avatar_walk;
    image_speed = 0.1;
    image_xscale = sign(h_speed) * PIXEL_CONST;
} else sprite_index = avatar_idle;

x += h_speed;
y += v_speed;
