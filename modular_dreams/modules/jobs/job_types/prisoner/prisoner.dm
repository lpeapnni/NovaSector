/datum/job/dreams/prisoner
	title = JOB_INMATE
	total_positions = 5
	spawn_positions = 5
	supervisors = SUPERVISOR_CO
	description = "Waste your life away in prison."

	paycheck = PAYCHECK_ZERO
	paycheck_department = ACCOUNT_SRV
	outfit = /datum/outfit/job/dreams/prisoner

	display_order = JOB_DISPLAY_ORDER_ASSISTANT

	departments_list = list(
		/datum/job_department/prisoner,
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

	if(ishuman(crewmember))
		var/mob/living/carbon/human/target_human = crewmember

		var/crime_name = target_human.prisoner_crime
		if(!crime_name)
			stack_trace("[crewmember] joined as a Prisoner without having a prisoner crime set.")
			target_human.prisoner_crime = "Other"

		// add the crime to crewmember's memories
		/*
		var/datum/crime/past_crime = new(crime.name, crime.desc, "Central Command", "Indefinite.")
		var/datum/record/crew/target_record = find_record(crewmember.real_name)
		target_record.crimes += past_crime
		target_record.recreate_manifest_photos(add_height_chart = TRUE)
		*/
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

	var/crime_name = user.prisoner_crime
	if(!crime_name)
		return

	var/datum/prisoner_crime/crime = GLOB.prisoner_crimes[crime_name]

	// set uniform depending on crime
	if(crime.prison_wing == LILAC_WING)
		uniform = /obj/item/clothing/under/rank/prisoner/lilac
	else if(crime.prison_wing == RED_WING)
		uniform = /obj/item/clothing/under/rank/prisoner/red
	else
		uniform = /obj/item/clothing/under/rank/prisoner/orange

/datum/outfit/job/dreams/prisoner/post_equip(mob/living/carbon/human/new_prisoner, visualsOnly)
	. = ..()

	var/implants_removed = 0
	var/implants_total = 0

	for(var/obj/item/organ/internal/cyberimp/cybernetic in new_prisoner.organs)
		implants_total += 1
		if (cybernetic.cannot_confiscate)
			continue
		QDEL_NULL(cybernetic)
		implants_removed += 1

	if (implants_removed >= 1)
		to_chat(new_prisoner, span_warning("[(implants_total > implants_removed) ? "Some of your" : "Your"] implants have been confiscated as part of your sentence."))

/datum/outfit/job/dreams/prisoner/get_types_to_preload()
	. = ..()
	. += /obj/item/clothing/under/rank/prisoner/lilac
	. += /obj/item/clothing/under/rank/prisoner/red
