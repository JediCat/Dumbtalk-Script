;------------------------------------------------------------------------------
; Words randomizers
;------------------------------------------------------------------------------
; Replaces some words from a pool of more fitting synonyms. (like world replacer, but with several possible outcome)

loadWordsRandomizer(state,chance) {
        local Var := Random(1, 100)

	if (toBool(state) == true and Var <= chance) {
		
	Hotstring(":z*:yes", randomString.Bind(, "yis|yas|yus|yes", 4))
	
	Hotstring(":z:your", randomString.Bind(, "ur|yr|", 2))

	Hotstring(":z:hi", randomString.Bind(, "Hiya{!}|Heya{!}|Hellooo{!}|Like, Hi{!}|", 4))
	Hotstring(":z:hello", randomString.Bind(, "Hiya{!}|Heya{!}|Hellooo{!}|Like, Hi{!}|", 4))

	Hotstring(":z:goodbye", randomString.Bind(, "luv you, byeeee{!}|byeeee{!}|", 2))
	Hotstring(":z:cya", randomString.Bind(, "luv you, byeeee{!}|byeeee{!}|", 2))
	Hotstring(":z:bye", randomString.Bind(, "luv you, byeeee{!}|byeeee{!}|", 2))
	
	Hotstring(":z:a lot of", randomString.Bind(, "hella|lotta|", 2))
	Hotstring(":z:lot of", randomString.Bind(, "hella|lotta|", 2))
	Hotstring(":z:lots of", randomString.Bind(, "hella|lotta|", 2))

	Hotstring(":z:cool", randomString.Bind(, "coool|kewl|", 2))
	Hotstring(":z:coolest", randomString.Bind(, "cooolest|kewlest|", 2))

	Hotstring(":z:wholly", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:entirely", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:completly", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:completely", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:totaly", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:totally", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:absolutly", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:absolutely", randomString.Bind(, "totes|tots|totz|totally|", 4))
	Hotstring(":z:greatly", randomString.Bind(, "totes|tots|totz|totally|", 4))

	Hotstring(":z:butt", randomString.Bind(, "booty|bum|ass|butt|", 4))
	Hotstring(":z:ass", randomString.Bind(, "booty|bum|ass|butt|", 4))

	Hotstring(":z:anus", randomString.Bind(, "fuckhole|pussy|butthole|", 3))

	Hotstring(":z:breasts", randomString.Bind(, "boobz|titties|boobs|honkers|boobies|bewbz|knockers|jugs|udders|", 9))

	Hotstring(":z:mouth", randomString.Bind(, "suckhole|mouth|", 2))

	Hotstring("reset")
	}
}

handleRandom(name) {

}

