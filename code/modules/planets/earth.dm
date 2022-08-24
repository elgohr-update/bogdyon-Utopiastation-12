var/datum/planet/ilum/planet_ilum = null

/datum/planet/ilum
	name = "Илум"

/datum/planet/ilum
	name = "Илум"
	desc = "Илум — неизведанная НТ ледяная планета с огромным скоплением блюспейс технологий. Ввиду ужасающих погодных условий, планету до сих пор не колонизировали. " // Ripped straight from the wiki.
	current_time = new /datum/time/ilum() // 32 hour clocks are nice.
	expected_z_levels = list(1,2,3,4) // To be changed when real map is finished.


/datum/planet/ilum/New()
	..()
	planet_ilum = src
	weather_holder = new /datum/weather_holder/ilum(src) // Cold weather is also nice.

// This code is horrible.
/datum/planet/ilum/update_sun()
	..()
	var/datum/time/time = current_time
	var/length_of_day = time.seconds_in_day / 10 / 60 / 60
	var/noon = length_of_day / 2
	var/distance_from_noon = abs(text2num(time.show_time("hh")) - noon)
	sun_position = distance_from_noon / noon
	sun_position = abs(sun_position - 1)

	var/low_brightness = null
	var/high_brightness = null

	var/low_color = null
	var/high_color = null
	var/min = 0

	switch(sun_position)
		if(0 to 0.40) // Night
			low_brightness = 0.1
			low_color = "#070733"

			high_brightness = 0.3
			high_color = "#191956"
			min = 0

		if(0.40 to 0.50) // Twilight
			low_brightness = 0.4
			low_color = "#28284f"

			high_brightness = 0.5
			high_color = "#545484"
			min = 0.40

		if(0.50 to 0.70) // Sunrise/set
			low_brightness = 0.6
			low_color = "#7c7868"

			high_brightness = 0.7
			high_color = "#b5865e"
			min = 0.50

		if(0.70 to 1.00) // Noon
			low_brightness = 0.8
			low_color = "#ccc5c5"

			high_brightness = 0.9
			high_color = "#d3cfcf"
			min = 0.70

	var/lerp_weight = (abs(min - sun_position)) * 4
	var/weather_light_modifier = 1
	if(weather_holder && weather_holder.current_weather)
		weather_light_modifier = weather_holder.current_weather.light_modifier

	var/new_brightness = (Interpolate(low_brightness, high_brightness, weight = lerp_weight) ) * weather_light_modifier

	var/new_color = null
	if(weather_holder && weather_holder.current_weather && weather_holder.current_weather.light_color)
		new_color = weather_holder.current_weather.light_color
	else
		var/list/low_color_list = hex2rgb(low_color)
		var/low_r = low_color_list[1]
		var/low_g = low_color_list[2]
		var/low_b = low_color_list[3]

		var/list/high_color_list = hex2rgb(high_color)
		var/high_r = high_color_list[1]
		var/high_g = high_color_list[2]
		var/high_b = high_color_list[3]

		var/new_r = Interpolate(low_r, high_r, weight = lerp_weight)
		var/new_g = Interpolate(low_g, high_g, weight = lerp_weight)
		var/new_b = Interpolate(low_b, high_b, weight = lerp_weight)

		new_color = rgb(new_r, new_g, new_b)

	spawn(1)
		update_sun_deferred(2, new_brightness, new_color)

// We're gonna pretend there are 32 hours in a Ilum day instead of 32.64 for the purposes of not losing sanity.  We lose 38m 24s but the alternative is a path to madness.
/datum/time/ilum
	seconds_in_day = 60 * 60 * 24 * 10 // 115,200 seconds.  If we did 32.64 hours/day it would be around 117,504 seconds instead.

// Returns the time datum of Ilum.
/proc/get_ilum_time()
	if(planet_ilum)
		return planet_ilum.current_time

//Weather definitions
/datum/weather_holder/ilum
	temperature = T0C
	allowed_weather_types = list(
		WEATHER_CLEAR = new /datum/weather/ilum/clear(),
		WEATHER_OVERCAST = new /datum/weather/ilum/overcast(),
		WEATHER_LIGHT_SNOW = new /datum/weather/ilum/light_snow(),
		WEATHER_SNOW = new /datum/weather/ilum/snow(),
		WEATHER_BLIZZARD = new /datum/weather/ilum/blizzard(),
		WEATHER_RAIN = new /datum/weather/ilum/rain(),
		WEATHER_ASH	 = new /datum/weather/ilum/ash(),
		WEATHER_STORM = new /datum/weather/ilum/storm(),
		WEATHER_HAIL = new /datum/weather/ilum/hail(),
		WEATHER_BLOOD_MOON = new /datum/weather/ilum/blood_moon()
		)
	roundstart_weather_chances = list(
		WEATHER_CLEAR		= 10,
		WEATHER_OVERCAST	= 25,
		WEATHER_LIGHT_SNOW	= 25,
		WEATHER_SNOW		= 10,
		WEATHER_BLIZZARD	= 10,
		WEATHER_RAIN		= 5,
		WEATHER_STORM		= 10,
		WEATHER_HAIL		= 5
		)

datum/weather/ilum
	name = "ilum base"
	temp_high = 271	// -2 градуса цельсия
	temp_low = 222	// -51 градус цельсия

/datum/weather/ilum/clear
	name = "clear"
	transition_chances = list(
		WEATHER_CLEAR = 60,
		WEATHER_OVERCAST = 40
		)

/datum/weather/ilum/overcast
	name = "overcast"
	light_modifier = 0.1
	transition_chances = list(
		WEATHER_CLEAR = 5,
		WEATHER_OVERCAST = 15,
		WEATHER_LIGHT_SNOW = 30,
		WEATHER_SNOW = 25,
		WEATHER_RAIN = 15,
		WEATHER_HAIL = 15
		)

/datum/weather/ilum/light_snow
	name = "light snow"
	icon_state = "snowfall_light"
	temp_high = 263		// -10 градусов цельсия
	temp_low = 	233		// -40 градусов цельсия
	light_modifier = 0.1
	transition_chances = list(
		WEATHER_OVERCAST = 20,
		WEATHER_LIGHT_SNOW = 50,
		WEATHER_SNOW = 25,
		WEATHER_HAIL = 5
		)

/datum/weather/ilum/snow
	name = "moderate snow"
	icon_state = "snowfall_med"
	temp_high = 263		// -10 градусов цельсия
	temp_low = 233		// -40 градусов цельсия
	light_modifier = 0.1
	flight_failure_modifier = 5
	transition_chances = list(
		WEATHER_LIGHT_SNOW = 20,
		WEATHER_SNOW = 50,
		WEATHER_BLIZZARD = 20,
		WEATHER_HAIL = 5,
		WEATHER_OVERCAST = 5
		)

/datum/weather/ilum/ash
	name = "light ash"
	icon_state = "light_ash"
	temp_high = 266	// -7 градусов цельсия
	temp_low = 244	// -29 градусов цельсия
	light_modifier = 0.1
	flight_failure_modifier = 5
	transition_chances = list(
		WEATHER_LIGHT_SNOW = 20,
		WEATHER_SNOW = 50,
		WEATHER_BLIZZARD = 20,
		WEATHER_HAIL = 5,
		WEATHER_OVERCAST = 5
		)
	var/next_lightning_strike = 1 // world.time when lightning will strike.
	var/min_lightning_cooldown = 5 SECONDS
	var/max_lightning_cooldown = 1 MINUTE
/*
/datum/weather/ilum/snow/process_effects() - ЗАХЛАМЛЯЕТ ПЛАНЕТУ СНЕГОМ. А ОНО НАМ НАДО? НЕТ.
	..()
	for(var/turf/simulated/floor/outdoors/snow/S in SSplanets.new_outdoor_turfs) //This didn't make any sense before SSplanets, either
		if(S.z in holder.our_planet.expected_z_levels)
			for(var/dir_checked in cardinal)
				var/turf/simulated/floor/T = get_step(S, dir_checked)
				if(istype(T))
					if(istype(T, /turf/simulated/floor/outdoors) && prob(33))
						T.chill()
*/
/datum/weather/ilum/blizzard
	name = "blizzard"
	icon_state = "snowfall_heavy"
	temp_high = 237 // -36 градусов цельсия
	temp_low = 222  // -51 градус цельсия
	light_modifier = 0.1
	flight_failure_modifier = 10
	transition_chances = list(
		WEATHER_SNOW = 45,
		WEATHER_BLIZZARD = 40,
		WEATHER_HAIL = 10,
		WEATHER_OVERCAST = 5

		)
	var/next_lightning_strike = 1 // world.time when lightning will strike.
	var/min_lightning_cooldown = 5 SECONDS
	var/max_lightning_cooldown = 1 MINUTE
/*
/datum/weather/ilum/blizzard/process_effects() - ЗАХЛАМЛЯЕТ ПЛАНЕТУ СНЕГОМ. А ОНО НАМ НАДО? НЕТ.
	..()
	for(var/turf/simulated/floor/outdoors/snow/S in SSplanets.new_outdoor_turfs) //This didn't make any sense before SSplanets, either
		if(S.z in holder.our_planet.expected_z_levels)
			for(var/dir_checked in cardinal)
				var/turf/simulated/floor/T = get_step(S, dir_checked)
				if(istype(T))
					if(istype(T, /turf/simulated/floor/outdoors) && prob(50))
						T.chill()
*/
/datum/weather/ilum/rain
	name = "rain"
	icon_state = "rain"
	light_modifier = 0.1
	effect_message = "<span class='warning'>Начинается </span>"

	transition_chances = list(
		WEATHER_OVERCAST = 25,
		WEATHER_LIGHT_SNOW = 15,
		WEATHER_RAIN = 50,
		WEATHER_STORM = 10,
		WEATHER_HAIL = 5
		)
/*
/datum/weather/ilum/rain/process_effects() - КАКОЙ БЛЯТЬ ЗОНТИК? НА ИЛУМЕ-ТО?
	..()
	for(var/mob/living/L in living_mob_list)
		if(L.z in holder.our_planet.expected_z_levels)
			var/turf/T = get_turf(L)
			if(!T.outdoors)
				continue // They're indoors, so no need to rain on them.

			// If they have an open umbrella, it'll guard from rain
			if(istype(L.get_active_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = L.get_active_hand()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain patters softly onto your umbrella</span>")
					continue
			else if(istype(L.get_inactive_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = L.get_inactive_hand()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain patters softly onto your umbrella</span>")
					continue

			L.water_act(1)
			if(show_message)
				to_chat(L, effect_message)
*/
/datum/weather/ilum/storm
	name = "storm"
	icon_state = "storm"
	temp_high = 237 // -36 градусов по цельсию
	temp_low = 222  // -51 градус по цельсию
	light_modifier = 0.1
	flight_failure_modifier = 10
	var/next_lightning_strike = 1 // world.time when lightning will strike.
	var/min_lightning_cooldown = 5 SECONDS
	var/max_lightning_cooldown = 1 MINUTE


	transition_chances = list(
		WEATHER_RAIN = 45,
		WEATHER_STORM = 40,
		WEATHER_HAIL = 10,
		WEATHER_OVERCAST = 5
		)


/datum/weather/ilum/storm/process_effects()
	..()
	for(var/mob/living/L in GLOB.living_mob_list_)
		if(L.z in holder.our_planet.expected_z_levels)
			var/turf/T = get_turf(L)
			if(!T.outdoors)
				continue // They're indoors, so no need to rain on them.

/*			// If they have an open umbrella, it'll get stolen by the wind
			if(istype(L.get_active_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = L.get_active_hand()
				if(U.open)
					to_chat(L, "<span class='warning'>A gust of wind yanks the umbrella from your hand!</span>")
					L.drop_from_inventory(U)
					U.throw_at(get_edge_target_turf(U, pick(alldirs)), 8, 1, L)
			else if(istype(L.get_inactive_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = L.get_inactive_hand()
				if(U.open)
					to_chat(L, "<span class='warning'>A gust of wind yanks the umbrella from your hand!</span>")
					L.drop_from_inventory(U)
					U.throw_at(get_edge_target_turf(U, pick(alldirs)), 8, 1, L)

			L.water_act(2)
			to_chat(L, "<span class='warning'>ааа</span>")
			*/

	handle_lightning()

// This gets called to do lightning periodically.
// There is a seperate function to do the actual lightning strike, so that badmins can play with it.
/datum/weather/ilum/storm/proc/handle_lightning()
	if(world.time < next_lightning_strike)
		return // It's too soon to strike again.
	next_lightning_strike = world.time + rand(min_lightning_cooldown, max_lightning_cooldown)
	var/turf/T = pick(holder.our_planet.planet_floors) // This has the chance to 'strike' the sky, but that might be a good thing, to scare reckless pilots.
	lightning_strike(T)

/datum/weather/ilum/blizzard/proc/handle_lightning()
	if(world.time < next_lightning_strike)
		return // It's too soon to strike again.
	next_lightning_strike = world.time + rand(min_lightning_cooldown, max_lightning_cooldown)
	var/turf/T = pick(holder.our_planet.planet_floors) // This has the chance to 'strike' the sky, but that might be a good thing, to scare reckless pilots.
	lightning_strike(T)

/datum/weather/ilum/ash/proc/handle_lightning()
	if(world.time < next_lightning_strike)
		return // It's too soon to strike again.
	next_lightning_strike = world.time + rand(min_lightning_cooldown, max_lightning_cooldown)
	var/turf/T = pick(holder.our_planet.planet_floors) // This has the chance to 'strike' the sky, but that might be a good thing, to scare reckless pilots.
	lightning_strike(T)
// This has the chance to 'strike' the sky, but that might be a good thing, to scare reckless pilots.


/datum/weather/ilum/hail
	name = "hail"
	icon_state = "hail"
	temp_high = 245 // -28 градусов по цельсию
	temp_low = 222  // -51 градус по цельсию
	light_modifier = 0.1
	flight_failure_modifier = 15
	timer_low_bound = 2
	timer_high_bound = 5
	effect_message = "<span class='warning'>The hail smacks into you!</span>"

	transition_chances = list(
		WEATHER_RAIN = 45,
		WEATHER_STORM = 40,
		WEATHER_HAIL = 10,
		WEATHER_OVERCAST = 5
		)

/datum/weather/ilum/hail/process_effects()
	..()
	for(var/mob/living/carbon/human/H in GLOB.living_mob_list_)
		if(H.z in holder.our_planet.expected_z_levels)
			var/turf/T = get_turf(H)
			if(!T.outdoors)
				continue // They're indoors, so no need to pelt them with ice.

/*			// If they have an open umbrella, it'll guard from rain
			// Message plays every time the umbrella gets stolen, just so they're especially aware of what's happening
			if(istype(H.get_active_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = H.get_active_hand()
				if(U.open)
					if(show_message)
						to_chat(H, "<span class='notice'>Hail patters gently onto your umbrella.</span>")
					continue
			else if(istype(H.get_inactive_hand(), /obj/item/weapon/melee/umbrella))
				var/obj/item/weapon/melee/umbrella/U = H.get_inactive_hand()
				if(U.open)
					if(show_message)
						to_chat(H, "<span class='notice'>Hail patters gently onto your umbrella.</span>")
					continue

			var/target_zone = pick(BP_ALL)
			var/amount_blocked = H.run_armor_check(target_zone, "melee")
			var/amount_soaked = H.get_armor_soak(target_zone, "melee")

			if(amount_blocked >= 100)
				continue // No need to apply damage.

			if(amount_soaked >= 10)
				continue // No need to apply damage.

			H.apply_damage(rand(1, 3), BRUTE, target_zone, amount_blocked, amount_soaked, used_weapon = "hail")
			if(show_message)
				to_chat(H, effect_message)
*/
/datum/weather/ilum/blood_moon
	name = "blood moon"
	light_modifier = 0.1
	light_color = "#FF0000"
	flight_failure_modifier = 25
	transition_chances = list(
		WEATHER_BLOODMOON = 100
		)