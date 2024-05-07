/datum/job/dreams/prisoner/botanist
	title = "Prison Botanist"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Correctional Officers"
	description = "Waste your life away growing plants."

	paycheck = PAYCHECK_LOWER

	display_order = JOB_DISPLAY_ORDER_BOTANIST

/datum/outfit/job/dreams/prisoner/pre_equip(mob/living/carbon/human/user, visualsOnly = FALSE)
	. = ..()
	if(istype(user.mind?.assigned_role, /datum/job/dreams/prisoner/botanist))
		id_trim = /datum/id_trim/job/dreams/prisoner/botanist
