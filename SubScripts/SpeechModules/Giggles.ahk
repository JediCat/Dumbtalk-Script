;------------------------------------------------------------------------------
; Giggles
;------------------------------------------------------------------------------
; Replaces common laugh sounds (haha, lol, etc...) with *giggles*

loadGiggles(state,chance) {
        local Var := Random(1, 100)

	if (toBool(state) == true and Var <= chance) {
		Hotstring("::hehe", "*giggles*")
		Hotstring("::haha", "*giggles*")
		Hotstring("::*laughs*", "*giggles*")
		Hotstring("::lol", "*giggles*")
		Hotstring("::lel", "*giggles*")
		Hotstring("::kek", "*giggles*")
		Hotstring("::^^", "*giggles*")
		Hotstring("::hihi", "*giggles softly*")
		Hotstring("::lmao", "omg{!} *giggles*")
		Hotstring("reset")
	}
}