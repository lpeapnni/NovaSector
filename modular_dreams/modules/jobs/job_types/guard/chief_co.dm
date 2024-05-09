/datum/job/dreams/chief_correctional_officer
	title = JOB_CHIEF_CO
	supervisors = SUPERVISOR_WARDEN
	description = "Coordinate guards and ensure everything is safe and sound."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list(JOB_PRISON_WARDEN)
	head_announce = list(RADIO_CHANNEL_SECURITY)

	total_positions = 1
	spawn_positions = 1

	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_GUARD
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "CHIEF_CO"

	outfit = /datum/outfit/job/dreams/chief_correctional_officer

	departments_list = list(
		/datum/job_department/guard,
		/datum/job_department/bureaucracy,
		)

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM, TRAIT_ROYAL_METABOLISM)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_SECURITY

	voice_of_god_power = 1.4 //Command staff has authority

/datum/job/dreams/chief_correctional_officer/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Warden [captain.real_name] on deck!"


/datum/outfit/job/dreams/chief_correctional_officer
	name = "Chief Correctional Officer"
	jobtype = /datum/job/dreams/chief_correctional_officer

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/head_of_security/chief_correctional_officer
	uniform = /obj/item/clothing/under/rank/security/head_of_security
	suit = /obj/item/clothing/suit/armor/hos/trenchcoat
	suit_store = /obj/item/melee/baton/telescopic

	belt = /obj/item/modular_computer/pda/heads/hos
	ears = /obj/item/radio/headset/heads/hos/alt
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	gloves = /obj/item/clothing/gloves/color/black/security
	head = /obj/item/clothing/head/hats/hos/beret
	shoes = /obj/item/clothing/shoes/jackboots/sec
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)
