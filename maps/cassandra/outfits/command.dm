/decl/hierarchy/outfit/job/cassandra/captain
	name = CASSANDRA_OUTFIT_JOB_NAME("Tradehouse Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda/heads/captain
	r_pocket = /obj/item/radio
	id_type = /obj/item/card/id/gold/cassandra

/decl/hierarchy/outfit/job/cassandra/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/cassandra/mate
	name = CASSANDRA_OUTFIT_JOB_NAME("Tradehouse First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/dress
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
	l_hand = /obj/item/clipboard
	id_type = /obj/item/card/id/silver/cassandra
	pda_type = /obj/item/modular_computer/pda/heads/hop

//id cards
/obj/item/card/id/gold/cassandra
	job_access_type = /datum/job/cassandra_captain

/obj/item/card/id/silver/cassandra
	job_access_type = /datum/job/cassandra_first_mate