/datum/job/cassandra_researcher
	title = "Researcher"
	supervisors = "the Chief Officer and the Captain"
	spawn_positions = 1
	total_positions = 2
	department_refs = list(DEPT_SCIENCE)
	alt_titles = list("Fabrications Technician", "Mechanist")
	outfit_type = /decl/hierarchy/outfit/job/cassandra/hand/researcher
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES  = SKILL_BASIC,
		SKILL_SCIENCE  = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_ANATOMY  = SKILL_MAX,
		SKILL_DEVICES  = SKILL_MAX,
		SKILL_SCIENCE  = SKILL_MAX
	)
	skill_points = 24
	access = list(
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch
	)
	minimal_access = list(
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch
	)
	selection_color = "#633d63"
	economic_power = 7
	minimal_player_age = 7