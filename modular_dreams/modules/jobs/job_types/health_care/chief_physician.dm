/datum/job/dreams/chief_physician
	title = JOB_CHIEF_CP
	description = "Coordinate doctors and other medbay employees, ensure they \
		know how to save lives, check for injuries on the crew monitor."
	department_head = list(JOB_PRISON_WARDEN)
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	head_announce = list(RADIO_CHANNEL_MEDICAL)
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_WARDEN
	req_admin_notify = 1
	minimal_player_age = 7
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_HEALTH
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "CHIEF_CP"

	outfit = /datum/outfit/job/dreams/chief_physician

	departments_list = list(
		/datum/job_department/health_care,
		/datum/job_department/bureaucracy,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_MED

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	liver_traits = list(TRAIT_MEDICAL_METABOLISM, TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER

	voice_of_god_power = 1.4 //Command staff has authority

/datum/job/dreams/chief_physician/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Warden [captain.real_name] on deck!"


/datum/outfit/job/dreams/chief_physician
	name = "Chief Correctional Physician"
	jobtype = /datum/job/dreams/chief_physician

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/chief_medical_officer/chief_physician
	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer/scrubs
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	suit_store = /obj/item/flashlight/pen/paramedic
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		)
	belt = /obj/item/modular_computer/pda/heads/cmo
	ears = /obj/item/radio/headset/heads/cmo
	head = /obj/item/clothing/head/utility/surgerycap/cmo
	shoes = /obj/item/clothing/shoes/sneakers/blue
	l_pocket = /obj/item/laser_pointer/blue
	r_pocket = /obj/item/pinpointer/crew
	l_hand = /obj/item/storage/medkit/surgery

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	messenger = /obj/item/storage/backpack/messenger/med

	box = /obj/item/storage/box/survival/medical
	chameleon_extras = list(
		/obj/item/gun/syringe,
		/obj/item/stamp/head/cmo,
		)
	skillchips = list(/obj/item/skillchip/entrails_reader)
