/datum/job/dreams/head_of_maint
	title = JOB_MAINT_HEAD
	description = "Coordinate the maintenance crew and ensure nothing gets stolen."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list(JOB_PRISON_WARDEN)
	head_announce = list("Engineering")
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_WARDEN
	req_admin_notify = 1
	minimal_player_age = 7
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_MAINT
	exp_granted_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/dreams/head_of_maint
	departments_list = list(
		/datum/job_department/maintenance,
		/datum/job_department/bureaucracy,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	liver_traits = list(TRAIT_ENGINEER_METABOLISM, TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_ENGINEER

	voice_of_god_power = 1.4 //Command staff has authority

/*
/datum/job/dreams/head_of_maint/after_spawn(mob/living/spawned, client/player_client)
	. = ..()
	spawned.add_mob_memory(/datum/memory/key/message_server_key, decrypt_key = GLOB.preset_station_message_server_key)
*/

/datum/job/dreams/head_of_maint/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Warden [captain.real_name] on deck!"


/datum/outfit/job/dreams/head_of_maint
	name = "Head of Maintenance"
	jobtype = /datum/job/dreams/head_of_maint

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/chief_engineer/head_of_maint
	uniform = /obj/item/clothing/under/rank/engineering/chief_engineer
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/construction/rcd/ce = 1,
	)
	belt = /obj/item/storage/belt/utility/chief/full
	ears = /obj/item/radio/headset/heads/ce
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/utility/hardhat/white
	shoes = /obj/item/clothing/shoes/sneakers/brown
	l_pocket = /obj/item/modular_computer/pda/heads/ce

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	messenger = /obj/item/storage/backpack/messenger/eng

	box = /obj/item/storage/box/survival/engineer
	chameleon_extras = /obj/item/stamp/head/ce
	skillchips = list(/obj/item/skillchip/job/engineer)
	pda_slot = ITEM_SLOT_LPOCKET
