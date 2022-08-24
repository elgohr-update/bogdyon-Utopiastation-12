/datum/weather/snow_storm
	name = "snow storm"
	desc = "Тучи над планетой сгущаются — плохой знак. Намечается снежная буря, которая способна смести на своём пути что угодно и кого угодно."
	probability = 90

	telegraph_message = "<span class='warning'>Внимание! Обнаружена аномальная активность в выпадении осадков на поверхности планеты. Рекомендуется найти укрытие.</span>"
	telegraph_duration = 300
	telegraph_overlay = "light_snow"

	weather_message = "<span class='userdanger'><i>Тучи над планетой сгущаются — плохой знак. Намечается снежная буря, которая способна смести на своём пути что угодно и кого угодно.</i></span>"
	weather_overlay = "snow_storm"
	weather_duration_lower = 600
	weather_duration_upper = 1500

	end_duration = 100
	end_message = "<span class='boldannounce'>Буря постепенно заканчивается, погода становится яснее. Можно покидать укрытие.</span>"

	area_type = /area
	protect_indoors = TRUE
	target_trait = ZTRAIT_SNOWSTORM

	immunity_type = WEATHER_SNOW

	barometer_predictable = TRUE



