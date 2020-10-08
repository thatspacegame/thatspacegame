/area/ship/cassandra
	name = "\improper Generic Ship"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')

// Access Shafts - Not Maint Shafts or Pipe Chases

/area/ship/cassandra/shafts
	name = "\improper Access Shaft"
	icon_state = "yellow"
	turf_initializer = /decl/turf_initializer/maintenance

/area/ship/cassandra/shafts/D1
	name = "\improper Deck 1 Access Shaft"
	icon_state = "hallC1"

/area/ship/cassandra/shafts/D2
	name = "\improper Deck 2 Access Shaft"
	icon_state = "hallC2"

/area/ship/cassandra/shafts/D3
	name = "\improper Deck 3 Access Shaft"
	icon_state = "hallC3"

// Common Areas

/area/ship/cassandra/crew
	name = "\improper Crew Compartements"
	icon_state = "crew_quarters"

/area/ship/cassandra/crew/bunk
	name = "\improper Crew Quarters"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/cassandra/crew/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/ship/cassandra/crew/canteen
	name = "\improper Canteen"
	icon_state = "conference"

/area/ship/cassandra/crew/toilets
	name = "\improper Bathrooms"
	icon_state = "toilet"
	turf_initializer = /decl/turf_initializer/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/cassandra/crew/laundry
	name = "\improper Laundry"
	icon_state = "locker"

/area/ship/cassandra/crew/hydroponics
	name = "\improper Hydroponics"
	icon_state = "green"

// Medical

/area/ship/cassandra/medbay
	name = "\improper Infirmary"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/ship/cassandra/medbay/lockers
	name = "\improper Medical Storage"
	icon_state = "locker"
	req_access = list(access_medical_equip)
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/cassandra/medbay/chemistry
	name = "\improper Chemistry Bay"
	icon_state = "cave"
	req_access = list(access_medical_equip)

/area/ship/cassandra/medbay/surgery
	name = "\improper Operating Theater"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/ship/cassandra/medbay/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	req_access = list(access_medical,access_brig)
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')

// Security

/area/ship/cassandra/security
	name = "\improper Security Wing"
	icon_state = "security"
	req_access = list(access_brig)

/area/ship/cassandra/security/cells
	name = "\improper Holding Cells"
	icon_state = "brig"

/area/ship/cassandra/security/armory
	name = "\improper Armory"
	icon_state = "Warden"
	req_access = list(access_armory)
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/cassandra/security/forensics
	name = "\improper Forensics Lab"
	icon_state = "detective"

/area/ship/cassandra/security/evidence
	name = "\improper Evidence Storage"

// Command

/area/ship/cassandra/command
	name = "\improper ITV Cassandra Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/ship/cassandra/command/cobed
	name = "\improper Captain's Quarters"
	icon_state = "heads_cap"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/ship/cassandra/command/comms
	name = "\improper Communications Relay"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/area/ship/cassandra/command/comms/d1ntnet
	name = "\improper Deck 1 Wireless Relay"

/area/ship/cassandra/command/comms/d3ntnet
	name = "\improper Deck 3 Wireless Relay"

// Engneering

/area/ship/cassandra/engineering
	name = "\improper Engineering Bay"
	icon_state = "engineering_supply"
	req_access = list(access_engine)

/area/ship/cassandra/engineering/atmos
	name = "\improper Atmospherics Comparment"
	icon_state = "atmos"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambiatm1.ogg')

/area/ship/cassandra/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos"

/area/ship/cassandra/engineering/power
	name = "\improper Power Compartment"
	icon_state = "engine_smes"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/cassandra/engineering/engine
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/cassandra/engineering/disposal
	name = "\improper Disposals Outlet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/ship/cassandra/engineering/solars/d1scontrol
	name = "\improper Solars Control"
	icon_state = "substation"

/area/ship/cassandra/engineering/solars/d1sarray
	name = "\improper Solars Array"
	icon_state = "yellow"

// Maint & Pipe Chases

/area/ship/cassandra/maintenance
	name = "\improper Maintenance"
	icon_state = "yellow"
	req_access = list(access_maint_tunnels)
	turf_initializer = /decl/turf_initializer/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/cassandra/maintenance/d1
	name = "\improper Deck 1 Maintenence"
	icon_state = "maintcentral"

/area/ship/cassandra/maintenance/d2
	name = "\improper Deck 2 Maintenence"
	icon_state = "amaint"

/area/ship/cassandra/maintenance/d3
	name = "\improper Deck 3 Aft Maintenence"
	icon_state = "amaint"

/area/ship/cassandra/maintenance/d3f
	name = "\improper Deck 3 Fore Maintenence"
	icon_state = "fmaint"

/area/ship/cassandra/maintenance/d1sub
	name = "\improper Deck 1 Substation"
	icon_state = "substation"
	req_access = list(access_engine)

/area/ship/cassandra/maintenance/d2sub
	name = "\improper Deck 2 Substation"
	icon_state = "substation"
	req_access = list(access_engine)

/area/ship/cassandra/maintenance/d3sub
	name = "\improper Deck 3 Substation"
	icon_state = "substation"
	req_access = list(access_engine)

// Science

/area/ship/cassandra/science
	name = "\improper Learning Commons"
	icon_state = "green"

/area/ship/cassandra/science/lab
	name = "\improper Research & Development Lab"
	icon_state = "devlab"
	req_access = list(access_research)

// Supply

/area/ship/cassandra/cargo
	name = "\improper Cargo Hold"
	icon_state = "quartstorage"
	area_flags = AREA_FLAG_RAD_SHIELDED

// Docks & Airlocks

/area/ship/cassandra/dock
	name = "\improper Docking Bay"
	icon_state = "yellow"

/area/ship/cassandra/dock/d1
	name = "\improper Deck 1 Dock"
	icon_state = "entry_1"
	req_access = list(access_external_airlocks)

/area/ship/cassandra/dock/d3
	name = "\improper Deck 3 Dock"
	icon_state = "entry_3"
	req_access = list(access_external_airlocks)

/area/ship/cassandra/dock/d3bay
	name = "\improper Deck 3 Docking Bay"
	icon_state = "eva"
	req_access = list(access_eva)

// Turbolifts

/area/turbolift
	name = "\improper Cargo Elevator"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	sound_env = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	arrival_sound = null
	lift_announce_str = null

/area/turbolift/alert_on_fall(var/mob/living/carbon/human/H)
	if(H.client && SSpersistence.elevator_fall_shifts > 0)
		SSwebhooks.send(WEBHOOK_ELEVATOR_FALL, list("text" = "We managed to make it [SSpersistence.elevator_fall_shifts] shift\s without someone falling down an elevator shaft."))
		SSpersistence.elevator_fall_shifts = -1

/area/turbolift/cassandra1
	name = "First Deck"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Top Deck"

/area/turbolift/cassandra2
	name = "Second Deck"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Middle Deck"

/area/turbolift/cassandra3
	name = "\improper Third Deck"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Bottom Deck"
	base_turf = /turf/simulated/floor

/area/turbolift/engineering_lift
	name = "\improper Engineering Freight Lift"
	base_turf = /turf/simulated/open