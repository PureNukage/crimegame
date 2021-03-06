scr_getinputs()

scr_camera()

switch(initial_resource_count)
{
	case initial_resource_count.building_load:
		initial_resource_count = initial_resource_count.count_resources
	break;
	case initial_resource_count.count_resources:
		scr_resource_count()
		scr_civilian_spawn()
		scr_civilian_spawn()
		initial_resource_count = initial_resource_count.stop_counting
	break;
	case initial_resource_count.stop_counting:
		
	break;
}

switch(playerstates)
{
	case playerstates.free: scr_player_free() break;
	case playerstates.placement: scr_player_placement() break;	
}

if (debug_focus + (arrowright-arrowleft)) == -1 or debug_focus + (arrowright-arrowleft) == ds_list_size(list_debug_objects)  {
	debug_focus = debug_focus
} else {
	debug_focus += (arrowright-arrowleft)	
}

if (debug_scroll + (arrowdown_down-arrowup_down)) == -100 {
	debug_scroll = debug_scroll
} else {
	debug_scroll += (arrowdown_down-arrowup_down)*5	
}

if debugtoggle {
	debug = !debug
}

//Day restart
if current_minute != day_current {	// It's a new day!
	day_previous = day_current
	day_current = current_minute
	if instance_exists(o_civilian) {
		with o_civilian {
			recently_purchased = false
		}
	}
}