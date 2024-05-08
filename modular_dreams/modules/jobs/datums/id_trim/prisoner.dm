/datum/id_trim/job/dreams/prisoner
	assignment = "Prison Inmate"
	trim_state = "trim_warden"
	department_color = COLOR_PRISONER_BLACK
	subdepartment_color = COLOR_PRISONER_BLACK
	sechud_icon_state = SECHUD_PRISONER
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		ACCESS_HOS,
		)
	job = /datum/job/dreams/prisoner
	threat_modifier = 1 // I'm watching you

/datum/id_trim/job/dreams/prisoner/janitor
	assignment = "Prison Janitor"
	minimal_access = list(
		ACCESS_JANITOR,
		ACCESS_SERVICE,
		)
	job = /datum/job/dreams/prisoner/janitor

/datum/id_trim/job/dreams/prisoner/botanist
	assignment = "Prison Botanist"
	minimal_access = list(
		ACCESS_HYDROPONICS,
		ACCESS_SERVICE,
		)
	extra_access = list(
		ACCESS_KITCHEN,
		)
	job = /datum/job/dreams/prisoner/botanist

/datum/id_trim/job/dreams/prisoner/cook
	assignment = "Prison Cook"
	minimal_access = list(
		ACCESS_KITCHEN,
		ACCESS_SERVICE,
		)
	extra_access = list(
		ACCESS_HYDROPONICS,
		)
	job = /datum/job/dreams/prisoner/cook
