/datum/job/dreams/maint_crew
	title = JOB_MAINT_CREW
	description = "Repair anything that goes wrong with the prison and maybe build something, too."
	department_head = list(JOB_MAINT_HEAD)
	total_positions = 5
	spawn_positions = 5
	supervisors = SUPERVISOR_HOM
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "MAINT_CREW"

	outfit = /datum/outfit/job/dreams/maint_crew

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_STATION_ENGINEER
	departments_list = list(
		/datum/job_department/maintenance,
		)

/datum/outfit/job/dreams/maint_crew
	name = "Maintenance Crew"
	jobtype = /datum/job/dreams/maint_crew

	id_trim = /datum/id_trim/job/station_engineer/maint_crew
	uniform = /obj/item/clothing/under/rank/engineering/engineer
	belt = /obj/item/storage/belt/utility/full/engi
	ears = /obj/item/radio/headset/headset_eng
	head = /obj/item/clothing/head/utility/hardhat
	shoes = /obj/item/clothing/shoes/workboots
	l_pocket = /obj/item/modular_computer/pda/engineering
	r_pocket = /obj/item/t_scanner

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	messenger = /obj/item/storage/backpack/messenger/eng

	backpack_contents = list(
		/obj/item/construction/rcd/loaded,
	)

	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	skillchips = list(/obj/item/skillchip/job/engineer)
