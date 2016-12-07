///scr_boss2_state_shooting()
if (steps_elapsed == 0)
{
    sprite_index = choose(spr_boss2_peaking_left, spr_boss2_peaking_right);
    delay = choose(room_speed * 1, room_speed * 2);
}
var tempo;
if global.hardmode tempo = room_speed / 5; else tempo = room_speed / 3;
if steps_elapsed % tempo == 0
{
    sprite_index = choose(spr_boss2_peaking_left, spr_boss2_peaking_right);
    switch (sprite_index)
    {
        case spr_boss2_peaking_left:
            scr_boss2_create_bullet(x - 8 * PIXEL_CONST, irandom_range(y - 6 * PIXEL_CONST, y + 2 * PIXEL_CONST), "left", "small");
            break;
            
        case spr_boss2_peaking_right:
            scr_boss2_create_bullet(x + 8 * PIXEL_CONST, irandom_range(y - 6 * PIXEL_CONST, y + 2 * PIXEL_CONST), "right", "small");
            break;
    }
}

if steps_elapsed >= delay
{
    state = choose(scr_boss2_state_idle, scr_boss2_state_sunburst);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
