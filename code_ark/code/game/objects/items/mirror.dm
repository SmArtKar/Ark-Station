/obj/item/weapon/storage/mirror
	randpixel = 0

/obj/item/weapon/storage/mirror/advanced
	name = "smart mirror"
	desc = "An iMirror(TM) smart reflecting device by SalonPro Nano-Mirror(TM) creators! The leading brand utilizes nano-machinery to style your hair just right. You can see the local time displayed on the screen along with some other information."
	icon = 'code_ark/icons/obj/furniture.dmi'
	icon_state = "mirror"
	var/scanning = 1
	var/on = 0
	var/last_state = 1
	var/range = 1
//	var/last_code = "code green"

	startswith = list(
		/obj/item/weapon/haircomb/random,
		/obj/item/weapon/haircomb/brush,
		/obj/random/medical/lite,
		/obj/item/weapon/lipstick/random,
		/obj/random/soap,
		/obj/item/weapon/reagent_containers/spray/cleaner/deodorant,
		/obj/item/weapon/towel/random,
		/obj/item/weapon/tooth_gel,
		/obj/item/weapon/shampoo
		)

/obj/item/weapon/storage/mirror/advanced/on_update_icon()
	overlays.Cut()
	// Putting the base icon
	var/image/I
	if(!shattered)
		I = image(icon, on? "mirror_over" : "mirror_over_time")
		I.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		I.layer = ABOVE_LIGHTING_LAYER
		overlays |= I
		var/color = "#ffffff"
		/* var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
		if (security_state.current_security_level.name == "code blue")
			color = "#9db8ff"
			I = image(icon, "mirror_over_blue")
		if (security_state.current_security_level.name == "code red")
			color = "#ff7070"
			I = image(icon, "mirror_over_red")
		if (security_state.current_security_level.name == "code delta")
			color = "#ff7070"
			I = image(icon, "mirror_over_delta")
		I.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		I.layer = ABOVE_LIGHTING_LAYER
		overlays |= I */
		set_light(on? 1 : 0.1, 0.1, 1.5, 2, color)
	else
		set_light(0)

/obj/item/weapon/storage/mirror/advanced/MouseDrop(obj/over_object as obj)
	overlays.Cut()
	..()
	update_icon()

/obj/item/weapon/storage/mirror/advanced/attackby(obj/item/W as obj, mob/user as mob)
	overlays.Cut()
	..()
	update_icon()

/obj/item/weapon/storage/mirror/advanced/shatter()
	..()
	update_icon()
	desc = "On ho, seven years of bad luck! The iMirror(TM) is totally shattered and no longer usable!"

/obj/item/weapon/storage/mirror/advanced/examine(mob/user, distance)
	if(..() && !shattered)
		to_chat(user, "The local vessel time is [stationtime2text()].")
		var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
		to_chat(user, "The current alert level is [security_state.current_security_level.name].")

/obj/item/weapon/storage/mirror/advanced/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/weapon/storage/mirror/advanced/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/weapon/storage/mirror/advanced/HasProximity(atom/movable/AM as mob|obj)
	if(!istype(AM))
		log_debug("DEBUG: HasProximity called with [AM] on [src] ([usr]).")
		return
	if (istype(AM, /obj/effect/beam))	return
	if (AM.move_speed < 12)	sense()
	return

/obj/item/weapon/storage/mirror/advanced/Process()
	..()
	sense()
	/*var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
	if(last_code != security_state.current_security_level.name) // Ensuring updating the lights and overlays with respect to the current security code
		update_icon()
		last_code = security_state.current_security_level.name*/
	return

/obj/item/weapon/storage/mirror/advanced/proc/sense()
	if(shattered) return
	on = 0
	if(scanning)
		var/turf/mainloc = get_turf(src)
		for(var/mob/living/A in range(range,mainloc))
			if (A.move_speed < 12 )
				on = 1
	if(last_state != on)
		update_icon()
		last_state = on
	return

// JUST A WIDE MIRROR
/obj/item/weapon/storage/mirror/wide
	name = "wide mirror"
	desc = "A rectangular SalonPro Nano-Mirror(TM) mirror! Now in a much more ergonomic shape! The leading brand utilizes nano-machinery to style your hair just right."
	icon = 'code_ark/icons/obj/furniture.dmi'