/turf/simulated/floor/exoplanet/snow

	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)
	var/has_footprints = TRUE
	var/footprint_color = "#FFFFFF"
	var/print_alpha = 255
	movement_delay = 1
	temperature = 250
/turf/simulated/floor/exoplanet/ice

	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)

/turf/simulated/floor/exoplanet/lava


/turf/simulated/floor/exoplanet/water/shallow
	reagent_type = /datum/reagent/toxin/tar
	movement_delay = 12
	temperature = 250
	turf/simulated/floor/exoplanet/water/shallow/get_footstep_sound(mob/caller)
		return get_footstep(/decl/footsteps/water, caller)

/turf/simulated/floor/exoplanet/water/shallow/tar
	name = "tar"
	icon = 'icons/turf/shrouded.dmi'
	icon_state = "shrouded_tar"
	desc = "A pool of viscous and sticky tar."
	movement_delay = 12
	reagent_type = /datum/reagent/toxin/tar
	dirt_color = "#3e3960"
	temperature = 250

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/alt2

/turf/simulated/floor/grasss/cataclysmdda

/turf/simulated/floor/grasss/cataclysmdda/dirt

/turf/simulated/water/cataclysmdda

/turf/simulated/floor/asphalt

/turf/simulated/floor/asteroid/aired
	layer = 3

/turf/simulated/floor/exoplanet/barren
	layer = 2
	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)

/turf/simulated/floor/stalker/floor/road
