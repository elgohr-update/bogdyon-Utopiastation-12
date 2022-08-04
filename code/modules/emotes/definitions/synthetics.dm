/decl/emote/audible/synth
	key = "beep"
	emote_message_3p = "USER издаёт гудок."
	emote_sound = 'sound/machines/twobeep.ogg'

/decl/emote/audible/synth/check_user(var/mob/living/user)
	if(istype(user) && user.isSynthetic())
		return ..()
	return FALSE
//[INF] we have overrided original code, so place is here
/decl/emote/audible/synth/do_extra(var/atom/user)
	if(emote_sound)
		playsound(user.loc, emote_sound, 50, 0)

/decl/emote/audible/synth/scream
	key = "scream"
	emote_message_3p = "USER кричит."
	emote_sound = 'infinity/sound/voice/scream_robot.ogg'
//[/INF]
/decl/emote/audible/synth/ping
	key = "ping"
	emote_message_3p = "USER гудит."
	emote_sound = 'sound/machines/ping.ogg'

/decl/emote/audible/synth/buzz
	key = "buzz"
	emote_message_3p = "USER жужжит."
	emote_sound = 'sound/machines/buzz-sigh.ogg'

/decl/emote/audible/synth/confirm
	key = "confirm"
	emote_message_3p = "USER издает утвердительный сигнал."
	emote_sound = 'sound/machines/synth_yes.ogg'

/decl/emote/audible/synth/deny
	key = "deny"
	emote_message_3p = "USER издаёт отрицательный сигнал."
	emote_sound = 'sound/machines/synth_no.ogg'

/decl/emote/audible/synth/security
	key = "law"
	emote_message_3p = "USER показывает USER_HIS легальный штрих-код авторизации."
	emote_message_3p_target = "USER показывает TARGET USER_THEIR легальный штрих-код авторизации."
	emote_sound = 'sound/voice/biamthelaw.ogg'

/decl/emote/audible/synth/security/check_user(var/mob/living/silicon/robot/user)
	return (istype(user) && istype(user.module,/obj/item/robot_module/security))

/decl/emote/audible/synth/security/halt
	key = "halt"
	emote_message_3p = "Динамики USER's визжат \"ВНИМАНИЕ, ОХРАНА!\"."
	emote_sound = 'sound/voice/halt.ogg'
