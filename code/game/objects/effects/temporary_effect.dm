//A temporary effect that does not DO anything except look pretty.
/obj/effect/temporary
	anchored = TRUE
	unacidable = TRUE
	mouse_opacity = 0
	density = FALSE
	layer = ABOVE_HUMAN_LAYER

/obj/effect/temporary/Initialize(var/mapload, var/duration = 30, var/_icon = 'icons/effects/effects.dmi', var/_state)
	. = ..()
	icon = _icon
	icon_state = _state
	QDEL_IN(src, duration)

/obj/effect/temporary_effect/lightning_strike
	name = "lightning"
	desc = "How <i>shocked</i> you must be, to see this text. You must have <i>lightning</i> reflexes. \
	The humor in this description is just so <i>electrifying</i>."
	icon = 'icons/effects/96x256.dmi'
	icon_state = "lightning_strike"
	plane = EFFECTS_ABOVE_LIGHTING_PLANE
	pixel_x = -32

/obj/effect/temporary_effect/lightning_strike/Initialize()
	icon_state += "[rand(1,2)]" // To have two variants of lightning sprites.
	animate(src, alpha = 0)
	. = ..()