///scr_get_input()

if (object_index == obj_player || object_index == obj_player1_vs)
{
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
    
    player_one_confirm_action = keyboard_check_pressed(vk_return);
}
else if (object_index == obj_player2_vs)
{
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
    
    player_one_confirm_action = keyboard_check_pressed(vk_return);
}
