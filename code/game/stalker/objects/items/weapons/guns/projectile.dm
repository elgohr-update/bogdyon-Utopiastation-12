///////// Ïèñòîëåòû //////////////////////////////////////////

	//modifications = list("barrel_pistol" = 0, "frame_pistol" = 0, "grip_pistol" = 0)


/obj/item/gun/projectile/pistol/pm   // Ìàêàðîâ
	name = "PMm"
	desc = "Технически и морально устаревший баллистический пистолет, пригодный теперь максимум для обездвиживания противника. Плох, но жизнь спасёт."
	//eng_desc = "This Soviet legacy is the most common pistol in the Metro and is one of the best compact self-defense handguns available. It is small, highly reliable, easy to use and maintain in working order. It also suffers from several drawbacks, including its short range, low firing accuracy and poor stopping power, while also losing out to modern pistols in its class in terms of weight and magazine size."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "pm"
	w_class = 2
	caliber = "9x18mm"
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18pm
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18pm
	ammo_type = list( /obj/item/projectile/bullet/bullet9x18, /obj/item/projectile/bullet/bullet9x18P)
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	//durability= 60
	//spread = 10
	//recoil = 0.2
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/tt   // ÒÒ
	name = "TT-33"
	desc = "Старый пистолет, крайне устаревший как морально, так и технически. Благодаря крупной пуле и высокому останавливающему действию до сих пор актуален.."
	//eng_desc = "An old soviet pistol made for similiarly old soviet ammo. Extremely wide//spread because of large numbers of those pistols left in USSR army stashes around Pripyat. Isn't very powerful, but bullets penetrate armor well enough."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "tt"
	w_class = 2
	load_method = MAGAZINE
	caliber = "7.62x25mm"
	fire_sound = 'sound/stalker/weapons/tt33_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/tt
	allowed_magazines = /obj/item/ammo_magazine/stalker/tt
	ammo_type = /obj/item/projectile/bullet/bullet762x25
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	//durability= 50
	//spread = 8
	//recoil = 0.15
	//damagelose = 0.1
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'


/obj/item/gun/projectile/pistol/fort12  // Ôîðà12
	name = "Fort-12"
	desc = "Неплохой пистолет, способный ловко вывести из строя противника. Эргономичен, но уступает преемникам по всем характеристикам. "
	//eng_desc = "An Ukranian-made pistol predominantly used by law enforcement organizations. Provides higher accuracy, better ergonomics and has a larger magazine than the PM. These pistols make it into the Zone in large numbers thanks to the sale of defective weapons, which suffer from technical miscalculations in early design models. Despite this, the pistol is in demand among stalkers thanks to its good combat characteristics."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "fort12"
	fire_sound = 'sound/stalker/weapons/fort_shot.ogg'
	caliber = "9x18mm"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	w_class = 2
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18fort
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18fort
	ammo_type = list (/obj/item/projectile/bullet/bullet9x18P, /obj/item/projectile/bullet/bullet9x18)
	force = 10
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 8
	//recoil = 0.25
	//durability= 50
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/fort_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'


/obj/item/gun/projectile/pistol/pb1s  //ÏÁ1Ñ
	name = "PB1s"
	desc = "Бесшумная вариация пистолета ПМ, к тому же крайне устаревшая. Увидеть такой пистолет — настоящая удача. Хороший друг начинающего спецназовца или предателя.."
	//eng_desc = "This pistol was developed in the second half of the 20th century on the basis of the PM for use by special forces and scouting units. The front of the pistol's barrel is covered with an integrated silencer, while the bolt mechanism is short, which prevents a back-moving spring from being located inside it, and it is therefore situated in the weapon's handle. Morally obsolete, the weapon is still effective in the right hands."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "pb1s"
	w_class = 2
	caliber = "9x18mm"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	fire_sound = 'sound/stalker/weapons/pb_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18pm
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18pm
	ammo_type = list (/obj/item/projectile/bullet/bullet9x18P, /obj/item/projectile/bullet/bullet9x18)
	force = 10
	suppressed = 1
	silenced = 1
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 10
	//recoil = 0.25
	//durability= 50
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/usp_match  // USP Match
	name = "H&K USP Match"
	desc = "Известный пистолет от популярного даже на сегодняшний день производителя огнестрельного оружия. Хороший выбор для стрелка, который выбирает себе качественное вторичное."
	//eng_desc = "Impeccable reliability and //durabilitycombined with excellent accuracy are the main noteworthy features of this weapon. Its minor drawbacks include its considerable size, relatively high center of gravity and massive bolt, which make it difficult to conceal but do not outweigh the weapon's positive features. The weapon is especially popular with the Zone's veterans."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "usp-match"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	w_class = 2
	caliber = ".45"
	magazine_type = /obj/item/ammo_magazine/stalker/usp45
	allowed_magazines = /obj/item/ammo_magazine/stalker/usp45
	ammo_type = list (/obj/item/projectile/bullet/bulletacp45, /obj/item/projectile/bullet/bulletacp45P)
	force = 10
	load_method = MAGAZINE
	can_suppress = 1
	can_unsuppress = 1
	//spread = 8
	//recoil = 0.35
	//durability= 60
	//damagelose = 0.25
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/desert  // Desert Eagle
	name = "Desert Eagle .44"
	desc = "Крайне мощный и крупногабаритный пистолет, способный положить на землю оппонента за два, а то и за один выстрел. Рекомендуется для опытных стрелков, которые доверяют своим ручкам."
	//eng_desc = "An extremely powerful gun, featured in many Hollywood movies and popularised by criminals. Truly a killing machine for close-range combat."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "desert"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
		)
	safety_icon = "safety"
	w_class = 3
	caliber = ".44"
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/desert
	allowed_magazines = /obj/item/ammo_magazine/stalker/desert
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 8
	//recoil = 0.65
	//durability= 50
	//damagelose = 0.15
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/revolver/anaconda
	name = "Colt Anaconda .44"
	desc = " Анаконда.. Мощный даже на сегодняшний день револьвер. Говорят, что одного выстрела из этого слона хватит, чтобы враг больше не встал с земли. Проверим?"
	//eng_desc = "A very popular amongst western cops weapon, reliable, powerful and precise. Did he shoot six times, or only five?"
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "anaconda"
	w_class = 3
	caliber = ".44"
	load_method = SPEEDLOADER
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	fire_delay = 1.5
	magazine_type = /obj/item/ammo_magazine/internal/cylinder/anaconda
	allowed_magazines = /obj/item/ammo_magazine/internal/cylinder/anaconda
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	//spread = 6
	//recoil = 1
	//durability= 500
	//damagelose = 0.1
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/obrez_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/obrez_open.ogg'

/obj/item/gun/projectile/revolver/metro/revolver44
	name = "Revolver .44"
	desc = "Револьвер. Мощный, красивый, звук барабана — чудесный. Хороший аргумент в споре."
	//eng_desc = "Just a revolver"
	icon = 'icons/stalker/metro-2/Metro_Guns.dmi'
	icon_state = "revolver"
	w_class = 3
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	fire_delay = 1.5
	magazine_type = /obj/item/ammo_magazine/internal/cylinder/anaconda
	allowed_magazines = /obj/item/ammo_magazine/internal/cylinder/anaconda
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	caliber = ".44"
	load_method = SPEEDLOADER
	//spread = 6
	//recoil = 0.25
	//durability= 500
	//damagelose = 0.1
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/obrez_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/obrez_open.ogg'

/obj/item/gun/projectile/revolver/stalker/metro/revolver/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"

///////////////////////////// Àâòîìàòû, ÏÏ //////////////////////////////////////////

/obj/item/gun/projectile
	var/zoomable = FALSE //whether the gun generates a Zoom action on creation
	var/zoomed = FALSE //Zoom toggle
	var/zoom_amt = 3 //Distance in TURFs to move the user's screen forward (the "zoom" effect)
	var/datum/action/toggle_scope_zoom/azoom
	var/can_scope = 0
	var/suppressed = 0
	var/scoped = 0			//whether or not a message is displayed when fired
	var/can_suppress = 0
	var/list/obj/item/attachment/addons = list()
	var/obj/item/attachment/gl = null
	var/can_unsuppress = 1
	var/image/mag_overlay 			= null
	var/image/mag_overlay_inhands 	= null
	var/image/silencer_overlay 		= null
	var/image/scope_overlay 		= null
	var/image/colored_overlay 		= null
	var/colored 					= null



/obj/item/gun/projectile/New()
	..()
	if(!istype(src, /obj/item/gun/projectile/pistol))
		mag_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-mag", layer = FLOAT_LAYER)

	if(can_suppress)
		silencer_overlay = image('icons/stalker/projectile_overlays48x48.dmi', "[initial(icon_state)]-silencer", layer = FLOAT_LAYER)

	if(can_scope)
		scope_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-scope", layer = FLOAT_LAYER)

	if(colored)
		colored_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-[colored]", layer = FLOAT_LAYER)
		overlays += colored_overlay

	update_icon()

/obj/item/gun/projectile/update_icon()
	..()
	overlays.Cut()

	if(colored)
		overlays += colored_overlay

	if(ammo_magazine && mag_overlay)
		overlays += mag_overlay

	if(suppressed && silencer_overlay)
		overlays += silencer_overlay

	if(zoomable && scope_overlay)
		overlays += scope_overlay
/*
	if(unique)
		overlays += image('icons/stalker/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

	if(istype(src, /obj/item/gun/projectile/pistol/stalker))
		icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	else
		item_state = "[initial(item_state)][magazine ? "" : "-e"]"	//Ïîêà íå ðàçáåðóñü ñ îâåðëåÿìè íà ìîáàõ, áóäåò òàê
*/
	return
/*
/obj/item/gun/projectile/stalker/stalker/worn_overlays(var/isinhands = TRUE)
	. = list()
	if(!isinhands)
		if(magazine )
			overlays += mag_overlay

		if(suppressed )
			overlays += silencer_overlay
        . += image(icon = 'icons/effects/effects.dmi', icon_state = "[shield_state]")
*/

/obj/item/gun/projectile/stalker
	//modifications = list("barrel_automatic" = 0, "frame_automatic" = 0, "grip_automatic" = 0, "compensator_automatic" = 0)

/obj/item/gun/projectile/ak74  // AK-74
	name = "AK-74"
	desc = "Устаревшая, но мощная и крупногабаритная винтовка на промежуточном патроне. Способна переломить ход любого сражения."
	//eng_desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable //recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "ak74"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "ak74"
		)
	safety_icon = "safety"
	item_state = "ak74"//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	load_method = MAGAZINE
	caliber = "5.45x39"
	can_unsuppress = 1
	scoped = 0
	//durability= 120
	w_class = 4
	//spread = 6
	//recoil = 0.5
	//damagelose = 0.25
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)


/obj/item/gun/projectile/aksu74  // ÀÊÑ74Ó
	name = "AKS74U"
	desc = "Укороченная версия автомата Калашникова. Данная вариация хороша внутри зданий, где много углов, но хромает на дальних дистанциях. Отличный выбор, если Вы под завязку набиты грузом."
	//eng_desc = "Despite being similar to submachineguns in size, weight and tactical purpose, this weapon is classified as an assault rifle due to the fact that its internal mechanism is identical to that of the AK-74. The weapon is notable for its mobility in close quarters and high armor-penetration capacity, while its drawbacks are its short effective range, despite the relatively long bullet range, a tendency to overheat and high ricochet propensity."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "aksu74"
	item_state = "aksu74"
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "aksu74"
		)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.45x39"
	force = 15
	origin_tech = "combat=3;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74u_shot.ogg'
	can_suppress = 1
	//durability= 100
	w_class = 4
	//spread = 9
	//recoil = 0.7
	//damagelose = 0.5
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74u_draw.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)


/*
/obj/item/gun/projectile/stalker/Stalker/aksu74/black  // ÀÊÑ74Ó - ÷åðíûé öâåò
	colored = "black"
	item_state = "aksu74-black"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
*/

/*obj/item/gun/projectile/stalker/kiparis  // Êèïàðèñ
	name = "Kiparis"
	desc = "Íåáîëüøîé, ëåãêèé è óäîáíûé ïèñòîëåò-ïóëåìåò ïîä ìàëîìîùíûé êàëèáð, ðàçðàáîòàííûé ïî çàêàçó Ìèíèñòåðñòâà Îáîðîíû ÑÑÑÐ â 1972-îì ãîäó. Íå íàøåë øèðîêîãî ðàñïðîñòðàíåíèÿ â àðìèè èç-çà ñëîæíîñòåé â ïðîèçâîäñòâå äëÿ òåõ âðåìåí, íî áûë ïðèíÿò íà âîîðóæåíèè ñëóæáàìè ÌÂÄ, ÔÑÎ, èíêàññàòîðàìè è íåêîòîðûìè äðóãèìè îòå÷åñòâåííûìè âîîðóæåííûìè ãðóïïàìè."
	//eng_desc = "A small, light submachine gun firing a low-powered bullet, was designed by USSR Defense Ministry in the year 1972. Wasn't adopted by army, but found use and popularity amongst different modern russian government military forces and police."
	icon = 'stalker/obj/guns/projectile.dmi'
	icon_state = "kiparis"
	item_state = "arg"
	fire_sound = 'sound/stalker/weapons/fort_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/kiparis
	allowed_magazines = /obj/item/ammo_magazine/stalker/kiparis
	ammo_type =
	can_suppress = 1
	fire_delay = 1
	slot_flags = SLOT_BELT
	//durability= 80
	w_class = 3
	//spread = 8
	//recoil = 0.15
	//damagelose = 0.25
	can_scope = 0
	//draw_sound = 'sound/stalker/weapons/draw/mp5_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/mp5_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/mp5_open.ogg'
*/
/obj/item/gun/projectile/ppsh  // ÏÏØ
	name = "PPSh"
	desc = "Раритет. Увидев такое оружие, один из сотни поймёт, кто и когда мог его придумать. Несмотря на устаревшие характеристики и ужасное состояние, из ППШ каким-то чудом можно стрелять."
	//eng_desc = "The PPSh saw extensive combat use during World War II and the Korean War. It was one of the major infantry weapons of the Soviet Armed Forces during World War II. Around six million PPSh-41s were manufactured. In the form of the Chinese Type 50 (licensed copy), it was still being used by the Viet Cong as late as 1970. According to the 2002 edition of the Encyclopedia of Weapons of World War II the PPSh was still in use with irregular militaries."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "ppsh"
	item_state = "arg"
	load_method = MAGAZINE
	caliber = "7.62x25mm"
	fire_sound = 'sound/stalker/weapons/ppsh_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/ppsh
	allowed_magazines = /obj/item/ammo_magazine/stalker/ppsh
	ammo_type = /obj/item/projectile/bullet/bullet762x25
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "berettam38",
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "bastard"
		)
	slot_flags
	can_suppress = 0
	slot_flags = list (SLOT_BELT|SLOT_BACK)
	//durability= 50
	w_class = 4
	//spread = 9
	//recoil = 0.25
	//damagelose = 0.5
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/mp5_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/mp5_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/mp5_open.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)

/*/obj/item/gun/projectile/stalker/ak74/tact  // AK-74
	name = "Tactical AK 74"
	desc = "Ñèëüíî ìîäèôèöèðîâàííàÿ âåðñèÿ ÀÊ 74, ïðåâîñõîäÿùàÿ åãî òî÷íîñòüþ è ñêîðîñòðåëüíîñòüþ, íî óñòóïàþùàÿ ñâîåìó ïðàðîäèòåëþ â ìîùíîñòè. Èäåàëüíîå îðóæèå äëÿ âåäåíèÿ ïåðåñòðåëîê."
	//eng_desc = "Modified AK74. You shouldn't hold this."
	icon = 'stalker/obj/guns/projectile.dmi'
	icon_state = "TactiKalash"
	item_state = "TactiKalash"
	colored = 0//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	//durability= 120
	w_class = 4
	//spread = 3
	//recoil = 0.3
	//damagelose = 0.25
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'
*/
/obj/item/gun/projectile/ak74/makeshift  // AK-74
	name = "Самодельный Калаш"
	desc = "Мощная винтовка на промежуточном патроне. Неплохой выбор, если есть выбор между пистолетом и ЭТИМ. Стрелять с осторожностью."
	//eng_desc = "Makeshift AK74. It isn't as accurate as pre-war variant, but it's still something and it's still better than Bastard!"
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "makeshiftak"
	item_state = "ak74"
	load_method = MAGAZINE
	caliber = "5.45x39"
	colored = 0//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/makeshift
	allowed_magazines = /obj/item/ammo_magazine/stalker/makeshift
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	//durability= 70
	w_class = 4
	//spread = 6
	//recoil = 0.6
	random//spread = 0
	//damagelose = 0.25
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),

	)


/*/obj/item/gun/projectile/stalker/metro/saiga12  // Ñàéãà
	name = "Saiga-12"
	desc = "Îäíî èç ñàìûõ óñòðàøàþùèõ â ìåòðî îðóäèé, ïðåòåðïåâøåå íå ìàëî èçìåíåíèé ïîñëå êîíöà ñâåòà. Æåðòâóÿ ñâîèì áîåçàïàñîì è òî÷íîñòüþ, îðóæèå ïðèîáðåëî îãðîìíóþ ñêîðîñòðåëüíîñòü è óáîéíîñòü. Èäåàëüíàÿ çàùèòà îò ìóòàíòîâ. Óâû, ðàçäîáûòü òîæå, ãðóáî ãîâîðÿ, õåð."
	//eng_desc = "Automatic shotgun. You feel its power just by holding it."
	icon_state = "saiga"
	item_state = "saiga"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15

	magazine_type = /obj/item/ammo_magazine/stalker/metro/saiga
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	//durability= 120
	w_class = 4
	//spread = 2
	//recoil = 0.2
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/ak74_load.ogg'
	*/
/obj/item/gun/projectile/abakan  // Àáàêàí
	name = "AC-96"
	desc = "Современная штурмовая винтовка. Имеет различные режимы стрельбы, реже нуждается в техническом обслуживании. На Магнитке актуальна до сих пор."
	//eng_desc = "A modern assault rifle developed as a replacement for the ageing AK-74. The main difference is its high speed 2-round burst firing mode, which allows two bullets to be fired at exactly the same spot on a target up to 100 meters away. This significantly increases the likelihood of hitting the target in comparison to the 1 round firing mode, which considerably improves kill potential, stopping power and armor piercing capability."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "abakan"
	item_state = "abakan"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.45x39"
	force = 15
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/abakan_shoot.ogg'
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "abakan",
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "ak12"
	)
	can_suppress = 1
	//durability= 200
	w_class = 4
	//spread = 4
	//recoil = 0.4
	//damagelose = 0.2
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/abakan_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/abakan_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/abakan_open.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)

/obj/item/gun/projectile/fnf2000  // fnf2000
	name = "ТЫ. СОСАТЬ."
	desc = "Неведомая хуйня. ЭТО МЫ НЕ СПАВНИМ, НО ИЗ КОДА УДАЛЯТЬ НЕ БУДУ"
	//eng_desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics. This one lacks a built-in computerised scope, yet itself is very precise and powerful."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "fnf2000"
	item_state = "fnf2000"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.56x45"
	force = 15
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/stalker/m556x45
	allowed_magazines = /obj/item/ammo_magazine/stalker/m556x45
	ammo_type = list (/obj/item/projectile/bullet/bullet556x45, /obj/item/projectile/bullet/bullet556x45AP)
	fire_sound = 'sound/stalker/weapons/fnf2000_shoot.ogg'
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "fnf2000",
	wielded_icon = 'ivent/icons/event/left1.dmi',
	wielded_item_state = "m16gl-wielded"
	)
	can_suppress = 0
	//durability= 250
	w_class = 4
	//spread = 3
	//recoil = 0.35
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/fnf2000_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/fnf2000_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/fnf2000_open.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="short bursts",   burst=5, fire_delay=null, one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.6, 1.6, 2.0, 2.0, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)



/obj/item/gun/projectile/l6_saw/pkm
	name = "ПКМ"
	desc = " Мощный, но довольно старый пулемёт. Такие редко где увидишь, но если и найдёшь — в бою победишь. Мощная вещь в надёжных руках, способная подарить победу."
	//eng_desc = "This belt-fed machine gun is a portable modification with a complex two-stage feeding system. Despite its weight and low precision, this LMG has found admirers in the Zone. Used primarily to fight off outnumbering enemy forces during faction conflicts and clear out mutant lairs"
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "PKMclosed200"
	item_state = "l6closedmag"
	w_class = 5
	load_method = MAGAZINE
	caliber = "7.62x54mm"
	slot_flags = SLOT_BACK
	origin_tech = "combat=5;materials=1;syndicate=2"
	magazine_type = /obj/item/ammo_magazine/stalker/pkm
	allowed_magazines = /obj/item/ammo_magazine/stalker/pkm
	ammo_type = /obj/item/projectile/bullet/bullet762x54
	bulk = GUN_BULK_RIFLE
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_icon = 'ivent/icons/event/left1.dmi',
	wielded_item_state = "m60-wielded"
	)
	fire_sound = 'sound/stalker/weapons/pkm_shot.ogg'
	can_suppress = 0
	can_scope = 0
	//spread = 6
	//recoil = 1
	//damagelose = 0.25
	//durability= 500
	firemodes = list(
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)

///////////////////////////// Ñíàéïåðñêèå âèíòîâêè //////////////////////////////////////////
/obj/item/gun/projectile/vsv
	name = "ВСС"
	desc = "Также известный, как «Винторез». Автомат на калибре, пробивающем абсолютно любую броню, так к тому же с интегрированный глушителем. Идеально подойдёт для спецназа или марксмана, только вот патроны фиг где найдёшь."
	//eng_desc = "A modified version of the silent Vintorez sniper rifle, the assault rifle was designed as a special forces weapon. The rifle's primary purpose is effective fire against enemies employing modern personal protection equipment without disclosing the shooter's location. Thanks to its integrated silencer and 9x39mm caliber round with a heavy subsonic bullet, the weapon's noise and muzzle flash have been reduced to a minimum."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "vsv"
	item_state = "vsv"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/metro/vsv
	allowed_magazines = /obj/item/ammo_magazine/metro/vsv
	ammo_type = /obj/item/projectile/bullet/bullet9x39
	load_method = MAGAZINE
	caliber = "9x39"
	suppressed = 1
	silenced = 1
	can_suppress = 0
	can_unsuppress = 0
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "vintorez-silenced",
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "val"
	)
	//durability= 150
	slot_flags = SLOT_BACK
	force = 15
	w_class = 4
	//spread = 3
	//recoil = 0.3
	//damagelose = 0.1
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)

/obj/item/gun/projectile/svd
	name = "СВД"
	desc = "Мощная снайперская винтовка, неприхотливая в обслуживании и созданная для марксманов. Пары выстрелов будет достаточно, чтобы избавиться от цели. Используйте патроны с умом."
	//eng_desc = "Snayperskaya vintovka Dragunova. Designed for snipership."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "svd"
	item_state = "svd"
	load_method = MAGAZINE
	caliber = "7.62x54mm"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/svd
	allowed_magazines = /obj/item/ammo_magazine/stalker/svd
	ammo_type = /obj/item/projectile/bullet/bullet762x54
	suppressed = 0
	can_suppress = 0
	can_unsuppress = 0
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "enfield",
	wielded_icon_str = 'ivent/icons/obj/left_gun_es.dmi',
	wielded_item_state = "svd-wielded"
	)
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),

	)
	//durability= 150
	slot_flags = SLOT_BACK
	force = 15
	w_class = 4
	//spread = 2
	//recoil = 0.3
	//damagelose =
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'

/obj/item/gun/projectile/scar
	name = "FN SCAR-H"
	desc = "До сих пор актуальная штурмовая винтовка на крупном калибре, так ещё и с автоматическим режимом стрельбы. У кого в руках такая пушка — тому не страшен никто и ничто."
	//eng_desc = "FN Herstal weapon system."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "scar"
	item_state = "scar"
	load_method = MAGAZINE
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "tpc301",
	wielded_icon = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_item_state = "scar"
	)
	caliber = "7.62x51mm"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 10
	magazine_type = /obj/item/ammo_magazine/metro/scarh
	allowed_magazines = /obj/item/ammo_magazine/metro/scarh
	ammo_type = /obj/item/projectile/bullet/bullet762x51
	//durability= 120
	w_class = 4
	//spread = 0.1
	//recoil = 0.7
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/l85_draw.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/scar_open.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/scar_load.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)

/obj/item/gun/projectile/sks
	name = "НЕВЕДОМАЯ ХУЙНЯ"
	desc = "НАДО ФИКСИТЬ. НЕ СПАВНИМ!"
	//eng_desc = "Soviet carabine."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "sks"
	item_state = "sks"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/metro/sks
	allowed_magazines = /obj/item/ammo_magazine/metro/sks
	ammo_type = /obj/item/projectile/bullet/bullet762x51
	can_suppress = 1
	can_unsuppress = 1
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	wielded_icon = 'ivent/icons/obj/left_gun_es.dmi',
	wielded_item_state = "sks"
	)
	load_method = MAGAZINE
	caliber = "7.62x51mm"
	force = 15
	w_class = 4
	//spread = 2
	//recoil = 0.2
	//damagelose = 0.5
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	)

/obj/item/gun/projectile/ak12
	name = "AK-12"
	desc = "Где-то используемая, улучшенная вариация АК-74. Тактический, эргономичный и удобный. Такой можно встретить лишь у спецназа или очень удачливых парней. Хорошая вещь!"
	//eng_desc = "AK 2012. Tacticool one."
	icon = 'ivent/obj/guns/projectile.dmi'
	icon_state = "ak12"
	item_state = "ak12"
	fire_sound = 'sound/stalker/weapons/ak12_shoot.ogg'
	magazine_type = /obj/item/ammo_magazine/ak12
	allowed_magazines = /obj/item/ammo_magazine/ak12
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	load_method = MAGAZINE
	can_suppress = 0
	item_icons = list(
	slot_r_hand_str = 'ivent/icons/obj/guns_righthand.dmi',
	slot_l_hand_str = 'ivent/icons/obj/guns_lefthand.dmi',
	slot_back_str = 'ivent/icons/obj/back.dmi',
	back_item_state = "ak74m",
	wielded_icon = 'ivent/icons/obj/left_gun_es.dmi',
	wielded_item_state = "ak12"
	)
	slot_flags = SLOT_BELT
	load_method = MAGAZINE
	caliber = "5.45x39"
	//durability= 100
	w_class = 4
	//spread = 0.1
	//recoil = 0.5
	//damagelose = 0
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak12_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/ak12_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/ak12_unload.ogg'
	firemodes = list(
	list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
	list(mode_name="3-round bursts", burst=3, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 1.6, 2.4, 2.4)),
	list(mode_name="full auto",      burst=1, fire_delay=0,    burst_delay=1,      one_hand_penalty=5,                 burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(1.2, 1.2, 1.6, 1.6, 2.0), autofire_enabled = TRUE)
	)