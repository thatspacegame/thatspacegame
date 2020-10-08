/datum/map/cassandra
	default_assistant_title = "Deck Hand"
	allowed_jobs = list(
		/datum/job/cassandra_captain,
		/datum/job/cassandra_engineer/head,
		/datum/job/cassandra_doctor,
		/datum/job/cassandra_emt,
		/datum/job/cassandra_researcher,
		/datum/job/cassandra_first_mate,
		/datum/job/assistant,
		/datum/job/cassandra_engineer,
		/datum/job/cassandra_law
	)

/obj/machinery/suit_cycler/tradeship
	boots = /obj/item/clothing/shoes/magboots
	req_access = list()

/obj/machinery/suit_cycler/tradeship/Initialize()
	if(prob(75))
		suit = pick(list(
			/obj/item/clothing/suit/space/void/mining,
			/obj/item/clothing/suit/space/void/engineering,
			/obj/item/clothing/suit/space/void/pilot,
			/obj/item/clothing/suit/space/void/excavation,
			/obj/item/clothing/suit/space/void/engineering/salvage
		))
	if(prob(75))
		helmet = pick(list(
			/obj/item/clothing/head/helmet/space/void/mining,
			/obj/item/clothing/head/helmet/space/void/engineering,
			/obj/item/clothing/head/helmet/space/void/pilot,
			/obj/item/clothing/head/helmet/space/void/excavation,
			/obj/item/clothing/head/helmet/space/void/engineering/salvage
		))
	. = ..()