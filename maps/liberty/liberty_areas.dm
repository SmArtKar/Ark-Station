/area/liberty
	icon = 'maps/liberty/icons/area.dmi'

/* sound_env options:
	STANDARD_STATION
	LARGE_ENCLOSED
	SMALL_ENCLOSED
	TUNNEL_ENCLOSED
	LARGE_SOFTFLOOR
	MEDIUM_SOFTFLOOR
	SMALL_SOFTFLOOR
	ASTEROID
	SPACE
	I have totally no idea what most of them sound like.
	Alternatively, sound ambience can be set directly in "ambience" variable. */

//////////////////////////////////// LEVEL ZERO ////////////////////////////////////

// BRIG

/area/liberty/sfp
	req_access = list("ACCESS_SOL_SFP")

/area/liberty/sfp/hallway/zero
	name = "\improper SFP Field Office - Level Zero Hallway"
	icon_state = "department_lvl0"

/area/liberty/sfp/cells
	name = "\improper SFP Field Office - Holding Cells"
	icon_state = "department_cell"

/area/liberty/sfp/prison
	name = "\improper SFP Field Office - Long Term Cell"
	icon_state = "department_prison"

/area/liberty/sfp/laboratory
	name = "\improper SFP Field Office - Forensic Laboratory"
	icon_state = "department_laboratory"

/area/liberty/sfp/morgue
	name = "\improper SFP Field Office - Morgue"
	icon_state = "department_morgue"
	sound_env = LARGE_ENCLOSED

/area/liberty/sfp/archive
	name = "\improper SFP Field Office - Archive"
	icon_state = "department_archive"


//////////////////////////////////// LEVEL ONE ////////////////////////////////////

// MEDBAY

/area/liberty/medbay/reception
	name = "\improper Medbay - Reception"
	icon_state = "medbay_reception"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/chemistry
	name = "\improper Medbay - Chemistry Lab"
	icon_state = "medbay_chemistry"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/exam
	name = "\improper Medbay - Examination Room"
	icon_state = "medbay_exam"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/emergency
	name = "\improper Medbay - Emergency Treatment Center"
	icon_state = "medbay_emergency"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/preop_ward
	name = "\improper Medbay - Preoperating Ward"
	icon_state = "medbay_preop_ward"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/operating
	name = "\improper Medbay - Operating Room"
	icon_state = "medbay_operating"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/operating_storage
	name = "\improper Medbay - Operating Room Storage"
	icon_state = "medbay_operating_storage"
	// req_access = WRITE ACCESSES
	sound_env = SMALL_ENCLOSED

/area/liberty/medbay/hallway/one
	name = "\improper Medbay - Level One Hallway"
	icon_state = "medbay_lvl1"
	// req_access = WRITE ACCESSES

// BRIG

/area/liberty/sfp/lobby
	name = "\improper SFP Field Office - Lobby"
	icon_state = "department_lobby"

/area/liberty/sfp/office
	name = "\improper SFP Field Office - Office"
	icon_state = "department_working_space"

/area/liberty/sfp/interrogation
	name = "\improper SFP Field Office - Interrogation"
	icon_state = "department_interrogation"
	sound_env = SMALL_ENCLOSED

/area/liberty/sfp/recreation
	name = "\improper SFP Field Office - Break Room"
	icon_state = "department_recreation"
	sound_env = SMALL_SOFTFLOOR

/area/liberty/sfp/chief
	name = "\improper SFP Field Office - Supervisor Office"
	icon_state = "department_chief"

/area/liberty/sfp/reception
	name = "\improper SFP Field Office - Reception"
	icon_state = "department_reception"

/area/liberty/sfp/armory
	name = "\improper SFP Field Office - Armory"
	icon_state = "department_armory"

/area/liberty/sfp/dorm
	name = "\improper SFP Field Office - Dormitory"
	icon_state = "department_dorm"

/area/liberty/sfp/hallway/one_north
	name = "\improper SFP Field Office - Level One North Hallway"
	icon_state = "department_lvl1n"

/area/liberty/sfp/hallway/one_south
	name = "\improper SFP Field Office - Level One South Hallway"
	icon_state = "department_lvl1s"

//////////////////////////////////// LEVEL TWO ////////////////////////////////////

// MEDBAY

/area/liberty/medbay/hallway/two
	name = "\improper Medbay - Level Two Hallway"
	icon_state = "medbay_lvl2"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/storage
	name = "\improper Medbay - Storage"
	icon_state = "medbay_storage"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/oncall_room
	name = "\improper Medbay - On-Call Room"
	icon_state = "medbay_oncall_room"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/locker_room
	name = "\improper Medbay - Locker Room"
	icon_state = "medbay_locker_room"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/cmo
	name = "\improper Medbay - Chief Medical Officer"
	icon_state = "medbay_cmo"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/ward
	sound_env = SMALL_SOFTFLOOR

/area/liberty/medbay/ward/one
	name = "\improper Medbay - Ward One"
	icon_state = "medbay_ward1"

/area/liberty/medbay/ward/two
	name = "\improper Medbay - Ward Two"
	icon_state = "medbay_ward2"

/area/liberty/medbay/ward/three
	name = "\improper Medbay - Ward Three"
	icon_state = "medbay_ward3"