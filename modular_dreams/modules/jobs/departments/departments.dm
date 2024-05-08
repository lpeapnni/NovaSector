/datum/job_department/prisoner
	department_name = DEPARTMENT_PRISONER
	department_bitflags = DEPARTMENT_BITFLAG_PRISONER
	ui_color = "#e2932b"
	display_order = 5

/datum/job_department/guard
	department_name = DEPARTMENT_GUARD
	department_bitflags = DEPARTMENT_BITFLAG_GUARD
	department_head = /datum/job/dreams/chief_correctional_officer
	department_experience_type = EXP_TYPE_GUARD
	display_order = 2
	label_class = "security"
	ui_color = "#d46a78"
	head_of_staff_access = ACCESS_HOS
	department_access = REGION_ACCESS_SECURITY

/datum/job_department/maintenance
	department_name = DEPARTMENT_MAINT
	department_bitflags = DEPARTMENT_BITFLAG_MAINT
	department_head = /datum/job/dreams/head_of_maint
	department_experience_type = EXP_TYPE_MAINT
	display_order = 4
	label_class = "engineering"
	ui_color = "#dfb567"
	head_of_staff_access = ACCESS_CE
	department_access = REGION_ACCESS_ENGINEERING

/datum/job_department/health_care
	department_name = DEPARTMENT_HEALTH
	department_bitflags = DEPARTMENT_BITFLAG_HEALTH
	department_head = /datum/job/dreams/chief_physician
	department_experience_type = EXP_TYPE_HEALTH
	display_order = 3
	label_class = "medical"
	ui_color = "#65b2bd"
	head_of_staff_access = ACCESS_CMO
	department_access = REGION_ACCESS_MEDBAY

/datum/job_department/bureaucracy
	department_name = DEPARTMENT_BUREAU
	department_bitflags = DEPARTMENT_BITFLAG_BUREAU
	department_head = /datum/job/dreams/warden
	department_experience_type = EXP_TYPE_BUREAU
	display_order = 1
	label_class = "command"
	ui_color = "#6681a5"
