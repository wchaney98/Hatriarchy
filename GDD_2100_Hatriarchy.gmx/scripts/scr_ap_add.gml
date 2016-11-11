///scr_ap_add(rec, amnt)
var rec = argument0;
var amnt = argument1;

if (rec.action_pts <= MAX_AP)
    rec.action_pts += amnt;
if (rec.action_pts > MAX_AP)
    rec.action_pts = 100;
