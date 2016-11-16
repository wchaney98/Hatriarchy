///scr_state_player_crouch()

scr_get_input();
scr_gravity();

h_speed = 0;
y += v_speed;

while (place_meeting(x, y, obj_ground))
{
    y -= 1;
}

if (player_one_crouch_rls) state = scr_state_player_moving;
