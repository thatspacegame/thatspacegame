/datum/map/cassandra
	name = "Cassandra"
	full_name = "ITV Cassandra"
	path = "cassandra"
	ground_noun = "deck"

	station_levels = list(1, 2, 3)
	contact_levels = list(1, 2, 3)
	player_levels = list(1, 2, 3)

	station_name  = "ITV Cassandra"
	station_short = "Cass"

	dock_name     = "FTS Capitalist's Rest"
	boss_name     = "FTU Merchant Navy"
	boss_short    = "Merchant Admiral"
	company_name  = "Legit Cargo Ltd."
	company_short = "LC"
	overmap_event_areas = 11
	default_law_type = /datum/ai_laws/corporate
	lobby_screens = list('maps/cassandra/lobby/da.png')
	use_overmap = 1
	num_exoplanets = 3
	welcome_sound = 'sound/effects/bells.ogg'
	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Please move to a shielded area until the radiation has passed. These areas are marked with signs."

/datum/map/cassandra/get_map_info()
	return "You're aboard the <b>[station_name],</b> a survey and mercantile vessel affiliated with the Free Trade Union. \
	No meaningful authorities can claim the planets and resources in this uncharted sector, so their exploitation is entirely up to you - mine, poach and deforest all you want."
