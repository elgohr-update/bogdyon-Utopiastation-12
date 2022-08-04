/obj/item/grab/normal
	type_name = GRAB_NORMAL
	start_grab_name = NORM_PASSIVE

/obj/item/grab/normal/init()
	if(!(. = ..()))
		return
	var/obj/O = get_targeted_organ()
	if(affecting != assailant)
		visible_message("<span class='warning'>[assailant] хватает [affecting]'s [O.name]!</span>")
	else
		var/datum/gender/T = gender_datums[assailant.get_gender()]
		visible_message("<span class='notice'>[assailant] хватает [T.his] [O.name]!</span>")

	if(!(affecting.a_intent == I_HELP))
		upgrade(TRUE)

/datum/grab/normal
	type_name = GRAB_NORMAL

	var/drop_headbutt = 1

	icon = 'icons/mob/screen1.dmi'

	help_action = "inspect"
	disarm_action = "pin"
	grab_action = "jointlock"
	harm_action = "dislocate"

/datum/grab/normal/on_hit_help(var/obj/item/grab/normal/G)
	var/obj/item/organ/external/O = G.get_targeted_organ()
	if(O)
		return O.inspect(G.assailant)

/datum/grab/normal/on_hit_disarm(var/obj/item/grab/G)
	var/mob/living/carbon/human/affecting = G.affecting
	var/mob/living/carbon/human/assailant = G.assailant

	if(!G.attacking && !affecting.lying)

		affecting.visible_message("<span class='notice'>[assailant] пытается уложить [affecting] на землю!</span>")
		G.attacking = 1

		if(do_after(assailant, action_cooldown - 1, affecting))
			G.attacking = 0
			G.action_used()
			affecting.Weaken(2)
			affecting.visible_message("<span class='notice'>[assailant] укладывает [affecting] на землю!</span>")

			return TRUE
		else
			affecting.visible_message("<span class='notice'>[assailant] не может уложить [affecting] на землю.</span>")
			G.attacking = 0
			return 0
	else
		return 0


/datum/grab/normal/on_hit_grab(var/obj/item/grab/G)
	var/obj/item/organ/external/O = G.get_targeted_organ()
	var/mob/living/carbon/human/assailant = G.assailant
	var/mob/living/carbon/human/affecting = G.affecting

	if(!assailant.skill_check(SKILL_COMBAT, SKILL_ADEPT))
		return

	if(!O)
		to_chat(assailant, "<span class='warning'>[affecting] у них нет данной части тела!</span>")
		return 0

	assailant.visible_message("<span class='danger'>[assailant] начинает уламывать [pick("bend", "twist")] [affecting] [O.name] в суставный замок!</span>")
	G.attacking = 1

	if(do_after(assailant, action_cooldown - 1, affecting))
		if (!G.has_hold_on_organ(O))
			to_chat(assailant, SPAN_WARNING("Вы должны держать цель для успешного захвата!"))
			return


		G.attacking = 0
		G.action_used()
		O.jointlock(assailant)
		assailant.visible_message("<span class='danger'>[affecting] [O.name] искривлён!</span>")
		playsound(assailant.loc, 'sound/weapons/thudswoosh.ogg', 50, 1, -1)
		return TRUE

	else

		affecting.visible_message("<span class='notice'>[assailant] не захватывает в суставный замок у [affecting] [O.name].</span>")
		G.attacking = 0
		return 0


/datum/grab/normal/on_hit_harm(var/obj/item/grab/G)
	var/obj/item/organ/external/O = G.get_targeted_organ()
	var/mob/living/carbon/human/assailant = G.assailant
	var/mob/living/carbon/human/affecting = G.affecting

	if(!assailant.skill_check(SKILL_COMBAT, SKILL_ADEPT))
		return

	if(!O)
		to_chat(assailant, "<span class='warning'>[affecting] у них нет данной части тела!</span>")
		return 0

	if(!O.dislocated)

		assailant.visible_message("<span class='warning'>[assailant] начинает вывихивать у [affecting] [O.joint]!</span>")
		G.attacking = 1

		if(do_after(assailant, action_cooldown - 1, affecting))

			if (!G.has_hold_on_organ(O))
				to_chat(assailant, SPAN_WARNING("Вы должны держать цель для успешного вывиха!"))
				return

			G.attacking = 0
			G.action_used()
			O.dislocate(1)
			assailant.visible_message("<span class='danger'>[affecting]'s [O.joint] [pick("gives way","caves in","crumbles","collapses")]!</span>")
			// playsound(assailant.loc, pick(GLOB.trauma_sound), 50, 1, -1) // INF, ранняя версия
			playsound(assailant.loc, 'sound/weapons/thudswoosh.ogg', 50, 1, -1)
			return TRUE

		else

			affecting.visible_message("<span class='notice'>[assailant] не вывихивает у [affecting] [O.joint].</span>")
			G.attacking = 0
			return 0

	else if (O.dislocated > 0)
		to_chat(assailant, "<span class='warning'>У [affecting] [O.joint] уже вывихнут!</span>")
		return 0
	else
		to_chat(assailant, "<span class='warning'>Вы не можете вывихнуть [O.joint] у [affecting]!</span>")
		return 0

/datum/grab/normal/resolve_openhand_attack(var/obj/item/grab/G)
	if(G.assailant.a_intent != I_HELP)
		if(G.assailant.zone_sel.selecting == BP_HEAD)
			if(headbutt(G))
				if(drop_headbutt)
					let_go()
				return TRUE
		else if(G.assailant.zone_sel.selecting == BP_EYES)
			if(attack_eye(G))
				return TRUE
	return 0

/datum/grab/normal/proc/attack_eye(var/obj/item/grab/G)
	var/mob/living/carbon/human/attacker = G.assailant
	var/mob/living/carbon/human/target = G.affecting

	var/datum/unarmed_attack/attack = attacker.get_unarmed_attack(target, BP_EYES)

	if(!attack)
		return
	for(var/obj/item/protection in list(target.head, target.wear_mask, target.glasses))
		if(protection && (protection.body_parts_covered & EYES))
			to_chat(attacker, "<span class='danger'>Сначала Вам нужно снять покрытие на глазах.</span>")
			return
	if(!target.has_eyes())
		to_chat(attacker, "<span class='danger'>Вы не можете обнаружить глаза у [target]!</span>")
		return

	admin_attack_log(attacker, target, "Grab attacked the victim's eyes.", "Had their eyes grab attacked.", "attacked the eyes, using a grab action, of")

	attack.handle_eye_attack(attacker, target)
	return TRUE

/datum/grab/normal/proc/headbutt(var/obj/item/grab/G)
	var/mob/living/carbon/human/attacker = G.assailant
	var/mob/living/carbon/human/target = G.affecting

	if(!attacker.skill_check(SKILL_COMBAT, SKILL_BASIC))
		return

	if(target.lying)
		return

	var/damage = 20
	var/obj/item/clothing/hat = attacker.head
	var/damage_flags = 0
	if(istype(hat))
		damage += hat.force * 3
		damage_flags = hat.damage_flags()

	if(damage_flags & DAM_SHARP)
		attacker.visible_message("<span class='danger'>[attacker] протыкает [target][istype(hat)? " with \the [hat]" : ""]!</span>")
	else
		attacker.visible_message("<span class='danger'>[attacker] ударяет головой о череп [target]!</span>")

	var/armor = target.get_blocked_ratio(BP_HEAD, BRUTE, damage = 10)
	target.apply_damage(damage, BRUTE, BP_HEAD, damage_flags)
	attacker.apply_damage(10, BRUTE, BP_HEAD)

	if(armor < 0.5 && target.headcheck(BP_HEAD) && prob(damage))
		target.apply_effect(20, PARALYZE)
		target.visible_message("<span class='danger'>[target] [target.species.get_knockout_message(target)]</span>")

	playsound(attacker.loc, "swing_hit", 25, 1, -1)

	admin_attack_log(attacker, target, "Ударил оппонента головой.", "Получил удар по голове.", "получил удар по голове")
	return TRUE

// Handles special targeting like eyes and mouth being covered.
/datum/grab/normal/special_target_effect(var/obj/item/grab/G)
	if(G.special_target_functional)
		switch(G.target_zone)
			if(BP_MOUTH)
				if(G.affecting.silent < 2)
					G.affecting.silent = 2
			if(BP_EYES)
				if(G.affecting.eye_blind < 2)
					G.affecting.eye_blind = 2

// Handles when they change targeted areas and something is supposed to happen.
/datum/grab/normal/special_target_change(var/obj/item/grab/G, old_zone, new_zone)
	if(old_zone != BP_HEAD && old_zone != BP_CHEST)
		return
	switch(new_zone)
		if(BP_MOUTH)
			G.assailant.visible_message("<span class='warning'>[G.assailant] покрывает рот [G.affecting]!</span>")
		if(BP_EYES)
			G.assailant.visible_message("<span class='warning'>[G.assailant] покрывает глаза [G.affecting]!</span>")


/datum/grab/normal/check_special_target(var/obj/item/grab/G)
	switch(G.target_zone)
		if(BP_MOUTH)
			if(!G.affecting.check_has_mouth())
				to_chat(G.assailant, "<span class='danger'>Вы не можете обнаружить рот у [G.affecting]!</span>")
				return 0
		if(BP_EYES)
			if(!G.affecting.has_eyes())
				to_chat(G.assailant, "<span class='danger'>Вы не можете обнаружить глаза у [G.affecting]!</span>")
				return 0
	return TRUE

/datum/grab/normal/resolve_item_attack(var/obj/item/grab/G, var/mob/living/carbon/human/user, var/obj/item/I)
	switch(G.assailant.zone_sel.selecting)
		if(BP_HEAD, BP_MOUTH)
			return attack_throat(G, I, user)
		else
			return attack_tendons(G, I, user, G.assailant.zone_sel.selecting)

/datum/grab/normal/proc/attack_throat(var/obj/item/grab/G, var/obj/item/W, var/mob/living/carbon/human/user)
	var/mob/living/carbon/human/affecting = G.affecting

	if(user.a_intent != I_HURT)
		return 0 // Not trying to hurt them.

	if(!W.edge || !W.force || W.damtype != BRUTE)
		return 0 //unsuitable weapon
	user.visible_message("<span class='danger'>[user] принимается разрезать горло у [affecting], используя при этом [W]!</span>")

	user.next_move = world.time + 20 //also should prevent user from triggering this repeatedly
	if(!do_after(user, 20 * user.skill_delay_mult(SKILL_COMBAT), do_flags = DO_DEFAULT & ~DO_SHOW_PROGRESS))
		return 0
	if(!(G && G.affecting == affecting)) //check that we still have a grab
		return 0

	var/damage_mod = 1
	var/damage_flags = W.damage_flags()
	//presumably, if they are wearing a helmet that stops pressure effects, then it probably covers the throat as well
	var/obj/item/clothing/head/helmet = affecting.get_equipped_item(slot_head)
	if(istype(helmet) && (helmet.body_parts_covered & HEAD) && (helmet.item_flags & ITEM_FLAG_AIRTIGHT) && !isnull(helmet.max_pressure_protection))
		var/datum/extension/armor/armor_datum = get_extension(helmet, /datum/extension/armor)
		if(armor_datum)
			damage_mod -= armor_datum.get_blocked(BRUTE, damage_flags, W.armor_penetration, W.force*1.5)

	var/total_damage = 0
	for(var/i in 1 to 3)
		var/damage = min(W.force*2.5, 30)*damage_mod
		affecting.apply_damage(damage, W.damtype, BP_HEAD, damage_flags, armor_pen = 100, used_weapon=W)
		total_damage += damage


	if(total_damage)
		user.visible_message("<span class='danger'>[user] разрезает горло у [affecting] с помощью [W]!</span>")

		if(W.hitsound)
			playsound(affecting.loc, W.hitsound, 50, 1, -1)

	G.last_action = world.time

	admin_attack_log(user, affecting, "Knifed their victim", "Was knifed", "knifed")
	return TRUE

/datum/grab/normal/proc/attack_tendons(var/obj/item/grab/G, var/obj/item/W, var/mob/living/carbon/human/user, var/target_zone)
	var/mob/living/carbon/human/affecting = G.affecting

	if(!user.skill_check(SKILL_COMBAT, SKILL_ADEPT))
		return

	if(user.a_intent != I_HURT)
		return 0 // Not trying to hurt them.

	if(!W.edge || !W.force || W.damtype != BRUTE)
		return 0 //unsuitable weapon

	var/obj/item/organ/external/O = affecting.get_organ(target_zone)
	if(!O || O.is_stump() || !(O.limb_flags & ORGAN_FLAG_HAS_TENDON) || (O.status & ORGAN_TENDON_CUT))
		return FALSE

	user.visible_message(SPAN_DANGER("[user] начинает резать у [affecting] его [O.tendon_name], используя [W]!"))
	user.next_move = world.time + 20

	if(!do_after(user, 20, do_flags = DO_DEFAULT & ~DO_SHOW_PROGRESS))
		return 0
	if(!(G && G.affecting == affecting)) //check that we still have a grab
		return 0
	if(!O || O.is_stump() || !O.sever_tendon())
		return 0

	user.visible_message(SPAN_DANGER("\The [user] cut \the [affecting]'s [O.tendon_name] with \the [W]!"))
	if(W.hitsound) playsound(affecting.loc, W.hitsound, 50, 1, -1)
	G.last_action = world.time
	admin_attack_log(user, affecting, "hamstrung their victim", "was hamstrung", "hamstrung")
	return TRUE