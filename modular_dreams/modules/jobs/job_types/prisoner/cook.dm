/datum/job/dreams/prisoner/cook
	title = JOB_PRISON_COOK
	total_positions = 2
	spawn_positions = 2
	description = "Waste your life away cooking food."
	config_tag = "PRISON_COOK"

	paycheck = PAYCHECK_LOWER

	display_order = JOB_DISPLAY_ORDER_COOK

/datum/outfit/job/dreams/prisoner/pre_equip(mob/living/carbon/human/user, visualsOnly = FALSE)
	. = ..()
	if(istype(user.mind?.assigned_role, /datum/job/dreams/prisoner/cook))
		id_trim = /datum/id_trim/job/dreams/prisoner/cook
