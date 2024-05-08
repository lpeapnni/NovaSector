// broken dreams base job class

/datum/job/dreams
	title = "IMPLEMENT THE FUCKING TITLE"
	supervisors = "IMPLEMENT THE FUCKING SUPERVISORS"
	description = "I DON'T FUCKING KNOW-- IMPLEMENT THE DESCRIPTION BEFORE I SET YOU ON FIRE"
	faction = FACTION_STATION // this has to be faction station for it to work properly with the prefs menu.
	exp_granted_type = EXP_TYPE_CREW
	paycheck = null
	paycheck_department = null
	job_flags = JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS

/datum/outfit/job/dreams
	name = "Default"
	jobtype = /datum/job/dreams

	uniform = null
	id = null
	ears = null
	belt = null
	shoes = null
	box = null

	backpack = null
	satchel  = null
	duffelbag = null

	pda_slot = null

//These are base jobs, we don't want them appearing at all
/datum/job/dreams/config_check()
	if(type == /datum/job/dreams)
		return FALSE
	return ..()

/datum/job/dreams/map_check()
	if(type == /datum/job/dreams)
		return FALSE
	return ..()
