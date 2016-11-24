///scr_state_player_moving()

scr_get_input();

dir = sign(image_xscale); // get direction player is facing

// Check if hit
if (life_last_step > life)
{
    state = scr_state_player_hit;
    exit;
}
life_last_step = life;
been_hit = false;

// Check for vats key (enable/disable)
if (player_one_vats_prs and action_pts >= 20)
{
    vats = true;
    scr_set_vats_for_right_player(true);
    scr_vats_get_targets(); 
    state = scr_state_player_vats;
    exit;
}

// TODO: Rest of attacks
if (player_one_high_attack_prs)
{
    state = scr_state_player_attack;
    attack_loc = LOC_HIGH;
    exit;
}
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

// Crouching
if (player_one_crouch_prs)
{
    state = scr_state_player_crouch;
    sprite_index = avatar_crouch;
    exit;
}

// Idle vs walking animations
if (h_speed != 0) 
{
    sprite_index = avatar_walk;
    image_speed = 0.1;
    image_xscale = sign(h_speed) * PIXEL_CONST;
} else sprite_index = avatar_idle;

// Add gravity
if (!place_meeting(x, y + 1, obj_ground)){
    v_speed += grav;
    
    // Down key
    if (player_one_crouch_prs) {
        v_speed += stomp_force;
    }
} 
else {
    // Jump
    v_speed = 0;
    if (player_one_jump_prs) v_speed = -jump_height;
}


x += h_speed;
y += v_speed;

while (place_meeting(x, y, obj_ground))
{
    y -= 1;
}

if x < -10
    x = room_width
if x > room_width + 10
    x = 0;

