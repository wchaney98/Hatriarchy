///scr_vats_get_targets()

var j = 0;
for (i = 0; i < instance_count; i++)
{
    if ((instance_id[i] != id) && (object_get_parent(instance_id[i].object_index) == obj_alive))
    {
        vats_possible_select[j]= instance_id[i];
        j++;
    }
}
