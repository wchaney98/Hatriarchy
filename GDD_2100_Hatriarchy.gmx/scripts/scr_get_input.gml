///scr_get_input()

if (object_index == obj_player || object_index == obj_player1_vs)
{
    switch(global.one_hand_mode)
    {
        case true:
            escape = keyboard_check_pressed(vk_escape);
    
            player_one_left_down = keyboard_check(ord('A'));
            player_one_right_down = keyboard_check(ord('G'));
            player_one_jump_prs = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord('3'));
            player_one_jump_down = keyboard_check(vk_space) || keyboard_check(ord('3'));
            player_one_jump_rls = keyboard_check_released(vk_space) || keyboard_check_released(ord('3'));
            player_one_crouch_prs = keyboard_check(ord('C'));
            player_one_crouch_rls = keyboard_check_released(ord('C'));
            
            player_one_low_attack_prs = keyboard_check_pressed(ord('S'));
            player_one_mid_attack_prs = keyboard_check_pressed(ord('D'));
            
            player_one_high_attack_prs = keyboard_check(ord('F'));
            player_one_high_attack_rls = keyboard_check_released(ord('F'));
            
            player_one_low_block_prs = keyboard_check(ord('W'));
            player_one_mid_block_prs = keyboard_check(ord('E'));
            player_one_high_block_prs = keyboard_check(ord('R'));
            
            player_one_low_block_rls = keyboard_check_released(ord('W'));
            player_one_mid_block_rls = keyboard_check_released(ord('E'));
            player_one_high_block_rls = keyboard_check_released(ord('R'));
            
            player_one_vats_prs = keyboard_check_pressed(vk_control);
            player_one_vats_shift_prs = keyboard_check_pressed(vk_shift);
            
            player_one_confirm_action = keyboard_check_pressed(ord('S'));
            break;
        case false:
            escape = keyboard_check_pressed(vk_escape);
    
            player_one_left_down = keyboard_check(vk_left);
            player_one_right_down = keyboard_check(vk_right);
            player_one_jump_prs = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
            player_one_jump_down = keyboard_check(vk_space) || keyboard_check(vk_up);
            player_one_jump_rls = keyboard_check_released(vk_space) || keyboard_check_released(vk_up);
            player_one_crouch_prs = keyboard_check(vk_down);
            player_one_crouch_rls = keyboard_check_released(vk_down);
            
            player_one_low_attack_prs = keyboard_check_pressed(ord('A'));
            player_one_mid_attack_prs = keyboard_check_pressed(ord('S'));
            
            player_one_high_attack_prs = keyboard_check(ord('D'));
            player_one_high_attack_rls = keyboard_check_released(ord('D'));
            
            player_one_low_block_prs = keyboard_check(ord('Z'));
            player_one_mid_block_prs = keyboard_check(ord('X'));
            player_one_high_block_prs = keyboard_check(ord('C'));
            
            player_one_low_block_rls = keyboard_check_released(ord('Z'));
            player_one_mid_block_rls = keyboard_check_released(ord('X'));
            player_one_high_block_rls = keyboard_check_released(ord('C'));
            
            player_one_vats_prs = keyboard_check_pressed(vk_control);
            player_one_vats_shift_prs = keyboard_check_pressed(vk_shift);
            
            player_one_confirm_action = keyboard_check_pressed(ord('A'));
            break;
    }
    
}
else if (object_index == obj_player2_vs)
{
    escape = gamepad_button_check_pressed(global.gp, gp_start);
    
    player_one_left_down = gamepad_axis_value(global.gp, gp_axislh) < 0;
    player_one_right_down = gamepad_axis_value(global.gp, gp_axislh) > 0;
    player_one_jump_prs = gamepad_button_check_pressed(global.gp, gp_face3);
    player_one_jump_down = gamepad_button_check(global.gp, gp_face3);
    player_one_jump_rls = gamepad_button_check_released(global.gp, gp_face3);
    player_one_crouch_prs = gamepad_axis_value(global.gp, gp_axislv) > 0;
    player_one_crouch_rls = gamepad_axis_value(global.gp, gp_axislv) < 0.5;
    
    player_one_low_attack_prs = not gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check_pressed(global.gp, gp_face1);
    player_one_mid_attack_prs = not gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check_pressed(global.gp, gp_face2);
    
    player_one_high_attack_prs = not gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check(global.gp, gp_face4);
    player_one_high_attack_rls = not gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check_released(global.gp, gp_face4);
    
    player_one_low_block_prs = gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check(global.gp, gp_face1);
    player_one_mid_block_prs = gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check(global.gp, gp_face2);
    player_one_high_block_prs = gamepad_button_check(global.gp, gp_shoulderlb) and gamepad_button_check(global.gp, gp_face4);
    
    player_one_low_block_rls = gamepad_button_check_released(global.gp, gp_shoulderlb) or gamepad_button_check_released(global.gp, gp_face1);
    player_one_mid_block_rls = gamepad_button_check_released(global.gp, gp_shoulderlb) or gamepad_button_check_released(global.gp, gp_face2);
    player_one_high_block_rls = gamepad_button_check_released(global.gp, gp_shoulderlb) or gamepad_button_check_released(global.gp, gp_face4);
    
    player_one_vats_prs = gamepad_button_check_pressed(global.gp, gp_shoulderrb);
    player_one_vats_shift_prs = gamepad_button_check_pressed(global.gp, gp_shoulderr);
    
    player_one_confirm_action = gamepad_button_check_pressed(global.gp, gp_face1);
}
