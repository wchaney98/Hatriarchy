///scr_gravity()

scr_get_input();

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
}
