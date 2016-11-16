///scr_tween(base, moveto, rate)
var base = argument0;
var moveto = argument1;
var rate = argument2;
base += (moveto - base) * rate;
return base;
