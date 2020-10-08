/datum/map/cassandra // setting the map to use this list
	security_state = /decl/security_state/default/cassandradept

//Cassandra map alert levels. Refer to security_state.dm.
/decl/security_state/default/cassandradept
	all_security_levels = list(/decl/security_level/default/cassandradept/code_green, /decl/security_level/default/cassandradept/code_orange, /decl/security_level/default/cassandradept/code_blue, /decl/security_level/default/cassandradept/code_red, /decl/security_level/default/cassandradept/code_delta)

/decl/security_level/default/cassandradept
	icon = 'maps/cassandra/icons/security_state.dmi'

/decl/security_level/default/cassandradept/code_green
	name = "code green"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.25
	light_inner_range = 0.1
	light_outer_range = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/notice2.ogg'))

/decl/security_level/default/cassandradept/code_green/switching_down_to()
	security_announcement_green.Announce("The situation has been resolved, and all crew are to return to their regular duties.", "Attention! Alert level lowered to code green.")
	notify_station()

/decl/security_level/default/cassandradept/code_orange
	name = "code orange"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"

	up_description = "A significant unusual event has occured that poses a safety risk to crew. Personnel are required to evacuate any affected areas and obey relevant instructions from Command staff."
	down_description = "Code orange procedures are now in effect; A significant unusual event has occured that poses a safety risk to crew. Personnel are required to evacuate any affected areas and await further information."


/decl/security_level/default/cassandradept/code_blue
	name = "code blue"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"

	up_description = "A significant security emergency has developed. Security personnel are to report to their supervisor for orders, are permitted to search staff and facilities, and may have weapons visible on their person."
	down_description = "Code blue procedures are now in effect. Security personnel are to report to their supervisor for orders, are permitted to search staff and facilities, and may have weapons visible on their person."

/decl/security_level/default/cassandradept/code_red
	name = "code red"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.75
	light_inner_range = 1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"

	up_description = "A severe emergency has occurred. All crew should obey orders from relevant emergency personnel. Shelter in place and await further information."

	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/redalert1.ogg'))

/decl/security_level/default/cassandradept/code_red/switching_up_to()
	security_announcement_red.Announce(up_description, "Attention! Code red alert procedures now in effect!")
	notify_station()
	GLOB.using_map.unbolt_saferooms()

/decl/security_level/default/cassandradept/code_red/switching_down_to()
	security_announcement_red.Announce("Code Delta has been disengaged. All staff are to report to their supervisor for orders. All crew should obey orders from relevant emergency personnel. Security personnel are permitted to search staff and facilities, and may have weapons unholstered at any time.", "Attention! Code red alert procedures now in effect!")
	notify_station()

/decl/security_level/default/cassandradept/code_delta
	name = "code delta"

	light_max_bright = 0.75
	light_inner_range = 0.1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_NAVY_BLUE

	overlay_alarm = "alarm_delta"
	overlay_status_display = "status_display_delta"

	var/static/datum/announcement/priority/security/security_announcement_delta = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/cassandradept/code_delta/switching_up_to()
	security_announcement_delta.Announce("Code Delta procedures have been engaged. All crew are instructed to obey all instructions given by Command. Any violations of these orders can be punished by death. This is not a drill.", "Attention! Delta security level reached!")
	notify_station()