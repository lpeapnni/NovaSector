/datum/job/dreams/prisoner/janitor
	title = JOB_PRISON_JANITOR
	total_positions = 3
	spawn_positions = 3
	description = "Waste your life away cleaning up after others."
	config_tag = "PRISON_JANITOR"

	paycheck = PAYCHECK_LOWER

	display_order = JOB_DISPLAY_ORDER_JANITOR

/datum/outfit/job/dreams/prisoner/pre_equip(mob/living/carbon/human/user, visualsOnly = FALSE)
	. = ..()
	if(istype(user.mind?.assigned_role, /datum/job/dreams/prisoner/janitor))
		id_trim = /datum/id_trim/job/dreams/prisoner/janitor
