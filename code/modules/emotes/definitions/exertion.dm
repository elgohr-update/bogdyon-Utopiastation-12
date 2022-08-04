
/decl/emote/exertion/biological
	key = "esweat"
	emote_range = 4
	emote_message_1p = "Вы сильно потеете."
	emote_message_3p = "USER сильно потеет."

/decl/emote/exertion/biological/check_user(mob/living/user)
	if(istype(user) && !user.isSynthetic())
		return ..()
	return FALSE

/decl/emote/exertion/biological/breath
	key = "ebreath"
	emote_message_1p = "Вы чувствуете, что запыхались."
	emote_message_3p = "USER выглядит запыхавшимся."

/decl/emote/exertion/biological/pant
	key = "epant"
	emote_range = 3
	message_type = AUDIBLE_MESSAGE
	emote_message_1p = "Вы тяжело дышите, чтобы перевести дыхание."
	emote_message_3p = "USER тяжело глотает воздух."
	emote_message_impaired = "Вы видите, как USER тяжело дышит."

/decl/emote/exertion/synthetic
	key = "ewhine"
	emote_range = 3
	message_type = AUDIBLE_MESSAGE
	emote_message_1p = "Вы перегружаете привода."
	emote_message_3p = "USER's привода ноют от напряжения."

/decl/emote/exertion/synthetic/check_user(mob/living/user)
	if(istype(user) && user.isSynthetic())
		return ..()
	return FALSE

/decl/emote/exertion/synthetic/creak
	key = "ecreak"
	emote_message_1p = "Ваши индикаторы нагрузки на шасси скачут."
	emote_message_3p = "Суставы USER's скрипят от напряжения."
