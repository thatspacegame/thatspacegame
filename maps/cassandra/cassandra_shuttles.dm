/obj/machinery/computer/shuttle_control/explore/tradeship
	name = "exploration shuttle console"
	shuttle_tag = "Exploration Shuttle"


//In case multiple shuttles can dock at a location,
//subtypes can be used to hold the shuttle-specific data
/obj/effect/shuttle_landmark/docking_arm_starboard
	name = "Tradeship Starboard-side Docking Arm"
	docking_controller = "tradeship_starboard_dock"

/obj/effect/shuttle_landmark/docking_arm_starboard/pod
	landmark_tag = "nav_tradeship_starboard_dock_pod"

/obj/effect/shuttle_landmark/docking_arm_port
	name = "Tradeship Port-side Docking Arm"
	docking_controller = "tradeship_dock_port"

/obj/effect/shuttle_landmark/docking_arm_port/shuttle
	landmark_tag = "nav_tradeship_port_dock_shuttle"

/obj/effect/shuttle_landmark/below_deck_bow
	name = "Near CSV Tradeship Bow"
	landmark_tag = "nav_tradeship_below_bow"

/obj/effect/shuttle_landmark/below_deck_starboardastern
	name = "Near CSV Tradeship Starboard Astern"
	landmark_tag = "nav_tradeship_below_starboardastern"

// Engineering Lift

/obj/machinery/computer/shuttle_control/lift/engineering
	name = "Engineering Freight Lift"
	shuttle_tag = "Engineering Freight Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/datum/shuttle/autodock/ferry/engineering_lift
	name = "Engineering Freight Lift"
	shuttle_area = /area/turbolift/engineering_lift
	warmup_time = 3
	waypoint_station = "nav_eng_lift_top"
	waypoint_offsite = "nav_eng_lift_bottom"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0

/obj/effect/shuttle_landmark/lift/engineering_top
	name = "Top Deck"
	landmark_tag = "nav_eng_lift_top"
	base_area = /area/ship/cassandra/engineering
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/engineering_bottom
	name = "Lower Deck"
	landmark_tag = "nav_eng_lift_bottom"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/ship/cassandra/engineering/atmos
	base_turf = /turf/simulated/floor/plating

// Big Turbolift
/obj/turbolift_map_holder/tradeship
	name = "Cassandra cargo elevator placeholder"
	depth = 3
	lift_size_x = 1
	lift_size_y = 2
	door_type =     null
	wall_type =     null
	firedoor_type = null
	light_type =    null
	floor_type =  /turf/simulated/floor/tiled/steel_grid
	button_type = /obj/structure/lift/button/standalone
	panel_type =  /obj/structure/lift/panel/standalone
	areas_to_use = list(
		/area/turbolift/cassandra3,
		/area/turbolift/cassandra2,
		/area/turbolift/cassandra1
	)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound =   'sound/effects/lift_heavy_stop.ogg'