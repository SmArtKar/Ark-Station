// SOFA

/obj/structure/bed/sofa
	name = "leather sofa"
	desc = "A wide and comfy sofa - no one assistant was ate by it due production! It's made of steel and covered with synthetic leather."
	icon = 'code_ark/icons/obj/furniture.dmi'
	icon_state = "sofa_right"
	buckle_dir = 0
	buckle_lying = 0

/obj/structure/bed/sofa/left
	icon_state = "sofa_left"

/obj/structure/bed/sofa/New(var/newloc)
	base_icon = icon_state
	..(newloc,MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/sofa/post_buckle_mob()
	update_icon()
	return ..()

/obj/structure/bed/sofa/on_update_icon()
	overlays.Cut()
	var/image/I = image('code_ark/icons/obj/furniture.dmi', "[base_icon]_over")
	I.plane = DEFAULT_PLANE
	I.layer = ABOVE_HUMAN_LAYER
	overlays |= I
	if(buckled_mob)
		var/image/D = image('code_ark/icons/obj/furniture.dmi', "[base_icon]_armrest")
		D.plane = DEFAULT_PLANE
		D.layer = ABOVE_HUMAN_LAYER
		overlays |= D

/obj/structure/bed/sofa/black
	icon_state = "couchblack_middle"

/obj/structure/bed/sofa/black/left
	icon_state = "couchblack_left"

/obj/structure/bed/sofa/black/right
	icon_state = "couchblack_right"

/obj/structure/bed/sofa/beige
	icon_state = "couchbeige_middle"

/obj/structure/bed/sofa/beige/left
	icon_state = "couchbeige_left"

/obj/structure/bed/sofa/beige/right
	icon_state = "couchbeige_right"

/obj/structure/bed/sofa/brown
	icon_state = "couchbrown_middle"

/obj/structure/bed/sofa/brown/left
	icon_state = "couchbrown_left"

/obj/structure/bed/sofa/brown/right
	icon_state = "couchbrown_right"

/obj/structure/bed/sofa/teal
	icon_state = "couchteal_middle"

/obj/structure/bed/sofa/teal/left
	icon_state = "couchteal_left"

/obj/structure/bed/sofa/teal/right
	icon_state = "couchteal_right"

// PEW SPRITE

/obj/structure/bed/chair/pew
	icon = 'code_ark/icons/obj/furniture.dmi'

// BENCHES

/obj/structure/bed/chair/bench
	name = "bench"
	desc = "You sit in this, either by will or force. In either case, it's a nice thing to spend some time waiting on."
	icon = 'code_ark/icons/obj/furniture.dmi'
	icon_state = "bench_right_preview"
	base_icon = "bench_right"
	obj_flags = 0
	buckle_movable = FALSE

/obj/structure/bed/chair/bench/red/right

/obj/structure/bed/chair/bench/red/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/red/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/red/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CARPET)

/obj/structure/bed/chair/bench/brown/right

/obj/structure/bed/chair/bench/brown/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/brown/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/brown/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/chair/bench/red/right

/obj/structure/bed/chair/bench/teal/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/teal/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/teal/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "teal")

/obj/structure/bed/chair/bench/black/right

/obj/structure/bed/chair/bench/black/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/black/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")

/obj/structure/bed/chair/bench/green/right

/obj/structure/bed/chair/bench/green/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/green/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/green/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "green")

/obj/structure/bed/chair/bench/purple/right

/obj/structure/bed/chair/bench/purple/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/purple/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/purple/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "purple")

/obj/structure/bed/chair/bench/blue/right

/obj/structure/bed/chair/bench/blue/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/blue/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "blue")

/obj/structure/bed/chair/bench/beige/right

/obj/structure/bed/chair/bench/beige/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/beige/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/beige/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "beige")

/obj/structure/bed/chair/bench/lime/right

/obj/structure/bed/chair/bench/lime/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/lime/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/lime/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "lime")

/obj/structure/bed/chair/bench/yellow/right

/obj/structure/bed/chair/bench/yellow/center
	icon_state = "bench_center_preview"
	base_icon = "bench_center"

/obj/structure/bed/chair/bench/yellow/left
	icon_state = "bench_left_preview"
	base_icon = "bench_left"

/obj/structure/bed/chair/bench/yellow/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "yellow")