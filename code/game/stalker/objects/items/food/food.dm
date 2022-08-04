/obj/item/reagent_containers/food/snacks/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 7, "vitamin" = 3)
	nutriment_amt = 9
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/can/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 5, "vitamin" = 3)
	nutriment_amt = 12
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/canned/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 6, "vitamin" = 3)
	nutriment_amt = 9
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/can/stalker/konserva
	name = "tourist delight"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна."
	icon_state = "konserva"

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/shproti
	name = "shproti"
	desc = "Ðèæñêèå øïðîòû."
	icon = 'icons/stalker/food.dmi'
	icon_state = "shproti"
	trash = /obj/item/trash/shproti
	name = "shproti"
	icon_state = "shproti"


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/soup
	name = "soup"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна. В этой , похоже, суп."
	icon = 'icons/stalker/food.dmi'
	icon_state = "soup0"
	trash = /obj/item/trash/soup


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/bobi
	name = "bobi"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна."
	icon = 'icons/stalker/food.dmi'
	nutriment_desc = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	icon_state = "bobi0"

/obj/item/reagent_containers/food/snacks/can/stalker/konserva/govyadina2
	name = "tushenka"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна. В этой, похоже, говядина."
	icon = 'icons/stalker/food.dmi'
	icon_state = "govyadina0"

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/fish
	name = "fish"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна. В этой, похоже, рыба."
	icon = 'icons/stalker/food.dmi'
	icon_state = "fish0"
	trash = /obj/item/trash/fish

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/sirok
	name = "cheese"
	desc = "Сырок. Съедобно, но сколько ему лет уже?"
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "sirok"
	trash = /obj/item/trash/sirok


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/snikers
	name = "snikers"
	desc = "Какой-то сникерс. Выглядит как шоколадный батончик."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "snikers"
	trash = /obj/item/trash/sirok/snikers


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/chocolate
	name = "Chocolate"
	desc = "Шоколад. Ляпота!"
	icon = 'icons/stalker/food.dmi'
	icon_state = "Choco1"
	trash = /obj/item/trash/snikers/Choco

/obj/item/storage/box/MRE
	name = "MRE"
	desc = "А вот и здоровая еда. Такой пакет тяжело найти целым в округе."
	icon = 'icons/stalker/lohweb/items.dmi'
	icon_state = "fieldration"
	var/icon_state_opened = "fieldrationopen"

/obj/item/storage/box/MRE/New()
	..()
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/sirok
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/chocolate
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/kasha(src)
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva1(src)

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/galets
	name = "Galets"
	desc = "Галеты из сухого пайка. По ним понятно, почему его называют сухим."
	icon_state = "GAL1"
	trash = /obj/item/trash/snikers/GAL
/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/kasha
	name = "Kasha"
	desc = "Каша. Нередкое блюдо в подобных условиях."
	icon_state = "Kasha1"
	trash = /obj/item/trash/konserva/kasha


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva1
	name = "Konserva"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна.."

	icon_state = "TushenkaRed1"

	trash = /obj/item/trash/konserva/TushenkaRed


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva2
	name = "Konserva"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна."
	icon_state = "TushenkaGreen1"
	trash = /obj/item/trash/konserva/TushenkaGreen

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva3
	name = "Konserva"
	desc = "Консервная банка неизвестного происхождения. Пыльная. Закрыта, и на удивление, съедобна."
	icon_state = "TushenkaBlue1"
	trash = /obj/item/trash/konserva/TushenkaBlue
/obj/item/reagent_containers/food/snacks/stalker/konserva/kolbasa
	name = "kolbasa"
	desc = "Палка колбасы. По внешнему виду кажется, будто её уже несколько десятков лет."

	//weight = 0.4
	icon_state = "kolbasa"
/obj/item/reagent_containers/food/snacks/stalker/baton
	name = "baton"
	desc = "Хлеб. Засох."
	//weight = 0.2
	icon_state = "baton_stalker"
