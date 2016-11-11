///scr_sleep(ms)
ms = argument0;

var end_time = get_timer() + ((ms*1000));
do 
{
   room_speed = 1;
} until(get_timer() >= end_time);
if (get_timer() >= end_time) room_speed = 60;
