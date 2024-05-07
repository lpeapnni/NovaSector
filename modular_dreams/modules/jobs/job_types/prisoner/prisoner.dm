/datum/job/dreams/prisoner
	title = "Prisoner"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Correctional Officers"
	description = "Waste your life away in prison."

	paycheck = PAYCHECK_ZERO
	paycheck_department = ACCOUNT_SRV
	outfit = /datum/outfit/job/dreams/prisoner

	display_order = JOB_DISPLAY_ORDER_ASSISTANT
	departments_list = list(
		/datum/job_department/assistant,
		)

	required_languages = null
	banned_quirks = list(PRISONER_RESTRICTED_QUIRKS)

/datum/job/dreams/prisoner/New()
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_CREWMEMBER_JOINED, PROC_REF(handle_prisoner_joining))

/datum/job/dreams/prisoner/proc/handle_prisoner_joining(datum/source, mob/living/crewmember, rank)
	SIGNAL_HANDLER
	if(rank != title)
		return //not a prisoner

	var/crime_name = crewmember.client?.prefs?.read_preference(/datum/preference/choiced/prisoner_crime)
	if(!crime_name)
		stack_trace("[crewmember] joined as a Prisoner without having a prisoner crime set.")
		crime_name = pick(assoc_to_keys(GLOB.prisoner_crimes))
	else if(crime_name == "Random")
		crime_name = pick(assoc_to_keys(GLOB.prisoner_crimes))

	var/datum/prisoner_crime/crime = GLOB.prisoner_crimes[crime_name]

	// set uniform depending on crime
	if(crime.prison_wing == LILAC_WING)
		outfit = /datum/outfit/job/dreams/prisoner/lilac
	else if(crime.prison_wing == RED_WING)
		outfit = /datum/outfit/job/dreams/prisoner/red

	// add the crime to crewmember's memories
	var/datum/crime/past_crime = new(crime.name, crime.desc, "Central Command", "Indefinite.")
	var/datum/record/crew/target_record = find_record(crewmember.real_name)
	target_record.crimes += past_crime
	target_record.recreate_manifest_photos(add_height_chart = TRUE)
	to_chat(crewmember, span_warning("You are imprisoned for \"[crime_name]\"."))
	crewmember.add_mob_memory(/datum/memory/key/permabrig_crimes, crimes = crime_name)


// outfits
/datum/outfit/job/dreams/prisoner
	name = "Orange Wing Prisoner"
	jobtype = /datum/job/dreams/prisoner

	id = /obj/item/card/id/advanced/prisoner
	id_trim = /datum/id_trim/job/dreams/prisoner
	uniform = /obj/item/clothing/under/rank/prisoner/orange
	belt = null
	ears = null
	shoes = /obj/item/clothing/shoes/sneakers/black

/datum/outfit/job/dreams/prisoner/pre_equip(mob/living/carbon/human/user, visualsOnly = FALSE)
	. = ..()

/datum/outfit/job/dreams/prisoner/lilac
	name = "Lilac Wing Prisoner"
	uniform = /obj/item/clothing/under/rank/prisoner/lilac

/datum/outfit/job/dreams/prisoner/red
	name = "Red Wing Prisoner"
	uniform = /obj/item/clothing/under/rank/prisoner/red
