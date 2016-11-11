///scr_vats_get_targets(exception)
var exception = argument0;

var j = 0;
for (i = 0; i < instance_count; i++)
{
    if (object_get_parent(instance_id[i].object_index) == obj_enemy || instance_id[i].object_index == exception)
    {
        vats_possible_select[j]= instance_id[i];
        j++;
    }
}
