GLOBAL_LIST_EMPTY(latejoin_cryo_captain)

/obj/effect/landmark/Initialize()
	if(name == "JoinLateCryoCaptain")
		GLOB.latejoin_cryo_captain += loc
		delete_me = 1
	. = ..()

/datum/map/cassandra
	allowed_spawns = list("Deck Three Cryogenic Storage", "Robot Storage", "Captain Compartment")
	default_spawn = "Deck Three Cryogenic Storage"

/datum/spawnpoint/cryo
	display_name = "Deck Three Cryogenic Storage"
	msg = "has completed revival in the deck three cryogenics bay"
	disallow_job = list("Robot")

/datum/spawnpoint/cryo/captain
	display_name = "Captain Compartment"
	msg = "has completed revival in the captain compartment"
	restrict_job = list("Captain")

/datum/spawnpoint/cryo/captain/New()
	..()
	turfs = GLOB.latejoin_cryo_captain
