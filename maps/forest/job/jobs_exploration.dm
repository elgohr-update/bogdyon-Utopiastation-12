/datum/job/exploration_leader
	title = "Лидер Экспедиции"
	department = "Экспедиционный"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "Директору Исследований и Капитану"
	selection_color = "#68099e"
	minimal_player_age = 14
	economic_power = 9
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/exploration/el
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/nt)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC,
						SKILL_MEDICAL     = SKILL_BASIC)

	max_skill = list(	SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX,
						SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX)
	skill_points = 26

	access = list(access_el, access_explorer, access_eva, access_bridge, access_heads, access_emergency_storage, access_tech_storage, access_guppy_helm, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	good_genome_prob = 30

/datum/job/exploration_leader/get_description_blurb()
	return "Вы - выживший лидер экспедиции с борта ИКН Сиерра. \
	Теперь Ваше существование и существование Ваших коллег зависит не от межгалактической компании, а от Вас. Руководствуйтесь своей силой с умом.  \
	Донятие до следующего рассвета и радуйтесь, что Вас не сожрали во сне. Удачного отпуска на курорте Forgotten World."

/datum/job/explorer
	title = "Исследователь"
	department = "Экспедиционный"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	supervisors = "Лидеру Экспедиции и Директору Исследований"
	selection_color = "#68099e"
	minimal_player_age = 4
	ideal_character_age = 20
	economic_power = 6
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/exploration/explorer
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)
	min_skill = list(	SKILL_EVA     = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_BASIC)


	max_skill = list(	SKILL_SCIENCE = SKILL_MAX,
						SKILL_COMBAT  = SKILL_EXPERT,
						SKILL_WEAPONS = SKILL_EXPERT)
	//required_role = list("Exploration Leader", "Expeditionary Pilot")

	access = list(access_explorer, access_eva, access_emergency_storage, access_guppy_helm, access_expedition_shuttle, access_guppy, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer/get_description_blurb()
	return "Вы - выживший исследователь с борта ИКН Сиерра. \
	Теперь Ваше существование зависит не от межгалактической компании, а от приказов главы и от Вас. \
	Донятие до следующего рассвета и радуйтесь, что Вас не сожрали во сне. Удачного отпуска на курорте Forgotten World."


/datum/job/explorer_medic
	title = "Полевой Медик"
	department = "Экспедиционный"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	supervisors = "Лидеру Экспедиции и Директору Исследований"
	selection_color = "#68099e"
	ideal_character_age = 34
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/exploration/medic
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)

	minimal_player_age = 8
	skill_points = 26
	economic_power = 8


	min_skill = list(	SKILL_EVA     = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_EXPERT,
						SKILL_HAULING = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_ANATOMY = SKILL_EXPERT)

	max_skill = list(	SKILL_MEDICAL = SKILL_MAX,
						SKILL_ANATOMY = SKILL_MAX,
						SKILL_SCIENCE = SKILL_MAX,
						SKILL_COMBAT  = SKILL_EXPERT,
						SKILL_WEAPONS = SKILL_EXPERT)
	//required_role = list("Exploration Leader", "Expeditionary Pilot")

	access = list(	access_explorer, access_eva, access_emergency_storage, access_field_med,
					access_guppy_helm, access_expedition_shuttle, access_guppy, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer_medic/get_description_blurb()
	return "Вы - выживший медик-исследователь с борта ИКН Сиерра. \
	Теперь Ваше существование зависит не от межгалактической компании, а от приказов главы и от Вас. \
	Донятие до следующего рассвета и радуйтесь, что Вас не сожрали во сне. Удачного отпуска на курорте Forgotten World."

/datum/job/explorer_engineer
	title = "Полевой Инженер"
	department = "Экспедиционный"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	supervisors = "Лидеру Экспедиции и Директору Исследований"
	selection_color = "#68099e"
	minimal_player_age = 8
	ideal_character_age = 28
	economic_power = 7
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/exploration/engineer
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)
	skill_points = 22

	min_skill = list(	SKILL_EVA          = SKILL_BASIC,
						SKILL_CONSTRUCTION = SKILL_BASIC,
						SKILL_ELECTRICAL   = SKILL_BASIC,
						SKILL_HAULING      = SKILL_BASIC,
						SKILL_ATMOS        = SKILL_BASIC,
						SKILL_SCIENCE      = SKILL_BASIC,
						SKILL_COMPUTER     = SKILL_BASIC,
						SKILL_ENGINES      = SKILL_BASIC,
						SKILL_MEDICAL      = SKILL_BASIC)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX,
						SKILL_SCIENCE      = SKILL_MAX,
						SKILL_COMBAT       = SKILL_MAX,
						SKILL_WEAPONS      = SKILL_MAX)
	//required_role = list("Exploration Leader", "Expeditionary Pilot")

	access = list(	access_explorer, access_eva, access_emergency_storage, access_field_eng,
	 				access_guppy_helm, access_expedition_shuttle, access_guppy, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer_engineer/get_description_blurb()
	return "Вы - выживший инженер-исследователь с борта ИКН Сиерра. \
	Теперь Ваше существование зависит не от межгалактической компании, а от приказов главы и от Вас. \
	Донятие до следующего рассвета и радуйтесь, что Вас не сожрали во сне. Удачного отпуска на курорте Forgotten World."
