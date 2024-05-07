/datum/prisoner_crime
	/// which prison wing the crime corresponds to
	var/prison_wing = ORANGE_WING

//
// new crimes
//

/datum/prisoner_crime/prostitution
	name = "Prostitution"
	desc = "Engaged in sexual activity in exchange for money."
	tattoos = 0 // i mean i *could* imagine a hooker with tattoos
	prison_wing = LILAC_WING

// i should make prisoners spawn with a pimp hat if they choose this
/datum/prisoner_crime/pimping
	name = "Pimping"
	desc = "Helped to facilitate the act of prostitution."
	tattoos = 2
	prison_wing = LILAC_WING

/datum/prisoner_crime/indecency
	name = "Public Indecency"
	desc = "Publically engaged in deviant activity."
	tattoos = 0
	prison_wing = LILAC_WING


//
// crimes already in code\modules\client\preferences\prisoner_crime.dm
//

/datum/prisoner_crime/negligence
	prison_wing = ORANGE_WING

/datum/prisoner_crime/cloning
	prison_wing = ORANGE_WING

/datum/prisoner_crime/attempted_murder
	prison_wing = RED_WING

/datum/prisoner_crime/bio_terrorism
	prison_wing = RED_WING

/datum/prisoner_crime/classified
	prison_wing = ORANGE_WING

/datum/prisoner_crime/espionage
	prison_wing = ORANGE_WING

/datum/prisoner_crime/counterfeiting
	prison_wing = ORANGE_WING

/datum/prisoner_crime/enemy_of_the_corp
	prison_wing = RED_WING

/datum/prisoner_crime/grand_sabo
	prison_wing = RED_WING

/datum/prisoner_crime/grand_theft
	prison_wing = ORANGE_WING

/datum/prisoner_crime/identity_theft
	prison_wing = ORANGE_WING

/datum/prisoner_crime/jaywalker
	prison_wing = ORANGE_WING

/datum/prisoner_crime/kidnapping
	prison_wing = RED_WING

/datum/prisoner_crime/mass_murder
	prison_wing = RED_WING

/datum/prisoner_crime/malpractice
	prison_wing = RED_WING

/datum/prisoner_crime/murder
	prison_wing = RED_WING

/datum/prisoner_crime/mutiny
	prison_wing = RED_WING

/datum/prisoner_crime/other
	prison_wing = ORANGE_WING

/datum/prisoner_crime/ai_tampering
	prison_wing = ORANGE_WING

/datum/prisoner_crime/tax_evasion
	prison_wing = ORANGE_WING

/datum/prisoner_crime/cultist
	prison_wing = ORANGE_WING
