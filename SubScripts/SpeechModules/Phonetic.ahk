;------------------------------------------------------------------------------
; Phonetic
;------------------------------------------------------------------------------
; Replaces some common word sounds with phonetically similar ones (ie. "-ome" => "-um", "-ing" => "-in'")

loadPhonetic(state,chance) {
        local Var := Random(1, 100)

	if (toBool(state) == true and Var <= chance) {
		; Place exceptions here, words which shouldn't be altered by the next hotstrings
		Hotstring(":z:cock", "cock")
		Hotstring(":z:suck", "suck")

		; Phonetic alterations
		Hotstring(":z?:ck", "k")
		Hotstring(":z?:ome", "um")
		Hotstring(":z?:ewd", "ood")
		Hotstring(":z?:ph", "f")
		Hotstring(":z?:ing", "n")
		Hotstring(":z?:ough", "uff")
		Hotstring("reset")
	}
}