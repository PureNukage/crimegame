//Picking up more product from the bank

var amount

if o_controller.bank.resource_product > 0 {
	if o_controller.bank.resource_product >= 100 {
		amount = 100
	} else {
		amount = o_controller.bank.resource_product	
	}
	o_controller.bank.resource_product -= amount
	resource_product += amount
} else {
	
	// out of product! what do i do ??	
	
}

if resource_money > 0 {				//Turn in all money
	o_controller.bank.resource_money += resource_money
	resource_money = 0
}

scr_resource_count()

//Set goal back to our zone

var goal_array = scr_goon_zonespace()

goalX = goal_array[0]
goalY = goal_array[1]

if scr_mp_grid_define_path(x,y,goalX,goalY,goon_path,mp_grid,true) {
	current_action = 0
	skip = false
	
	pos = 1
	x_goto = path_get_point_x(goon_path,pos)
	y_goto = path_get_point_y(goon_path,pos)
	goonstates = goonstates.move
	goontasks = goontasks.deal
}
