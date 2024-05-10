/datum/job/dreams/physician
	title = JOB_CORRECTIONAL_PHYSICIAN
	description = "Save lives, run around the prison looking for victims, \
		scan everyone in sight"
	department_head = list(JOB_CHIEF_CP)
	total_positions = 6
	spawn_positions = 4
	supervisors = SUPERVISOR_CCP
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "CORRECTIONAL_PHYSICIAN"

	outfit = /datum/outfit/job/dreams/physician

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_MEDICAL_DOCTOR
	departments_list = list(
		/datum/job_department/health_care,
		)


/datum/outfit/job/dreams/physician
	name = "Correctional Physician"
	jobtype = /datum/job/dreams/physician

	id_trim = /datum/id_trim/job/medical_doctor/physician
	uniform = /obj/item/clothing/under/rank/medical/scrubs/blue
	suit = /obj/item/clothing/suit/toggle/labcoat
	suit_store = /obj/item/flashlight/pen
	belt = /obj/item/modular_computer/pda/medical
	ears = /obj/item/radio/headset/headset_med
	head = /obj/item/clothing/head/utility/surgerycap
	shoes = /obj/item/clothing/shoes/sneakers/white
	l_hand = /obj/item/storage/medkit/surgery

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	messenger = /obj/item/storage/backpack/messenger/med

	box = /obj/item/storage/box/survival/medical
	chameleon_extras = /obj/item/gun/syringe
	skillchips = list(/obj/item/skillchip/entrails_reader)
