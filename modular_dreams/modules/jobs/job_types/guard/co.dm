/datum/job/dreams/correctional_officer
	title = JOB_CORRECTIONAL_OFFICER
	description = "Protect, control, and abuse the prisoners."
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list(JOB_CHIEF_CO)
	total_positions = 8
	spawn_positions = 8
	supervisors = SUPERVISOR_CCO
	minimal_player_age = 7
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/dreams/correctional_officer

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER
	departments_list = list(
		/datum/job_department/guard,
		)

// security officer outfit, but with a little less shit
/datum/outfit/job/dreams/correctional_officer
	name = "Correctional Officer"
	jobtype = /datum/job/dreams/correctional_officer

	id_trim = /datum/id_trim/job/security_officer/correctional_officer
	uniform = /obj/item/clothing/under/rank/security/officer
	suit = /obj/item/clothing/suit/armor/vest/alt/sec
	suit_store = /obj/item/melee/baton/telescopic 	// keeping ranged shit to a minimum-- when shit hits the fan i want to see melee combat more than guns
													// I WANT TO SEE BODIES AGAINST BODIES. SWEAT, BLOOD, AND TEARS.
	belt = /obj/item/modular_computer/pda/security
	ears = /obj/item/radio/headset/headset_sec/alt
	gloves = /obj/item/clothing/gloves/color/black/security
	head = /obj/item/clothing/head/security_garrison
	shoes = /obj/item/clothing/shoes/jackboots/sec
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)
