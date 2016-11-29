///scr_init_cutscene_manager(dur, dest, scene1, text1, scene2, text2, ...)
dur = argument[0] * room_speed;
dest = argument[1];

duration = dur;
destination_rm = dest;

var curr = 0;
for (i = 2; i < argument_count; i += 2)
{
    if argument[i] != undefined
    {
        scenes[curr] = argument[i];
        texts[curr] = argument[i + 1];
        curr++;
    }
}

