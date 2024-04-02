;------------------------------------------------------------------------------
; Punctuation
;------------------------------------------------------------------------------
; Randomly turns periods into questions, exclamations or tilde

loadPunctuation(state,chance) {
        local Var := Random(1, 100)

	if (toBool(state) == true and Var <= chance) {
		Hotstring(":b0*:.", elipisiHandler)
		Hotstring(":b0?:.", replacePunctuation)
	}
}

elipisiHandler(name) { ; Prevents elipsis "..." to be replaced
	SendInput "{BS 1}.{" A_EndChar "}"
}

replacePunctuation(name) {
	nRand := Random(0, 90)
	if (nRand < 10)	{
		BsSendInput("?", 2)
	} else if (nRand < 30) {
		SendInput "{BS 2}~{Space}{Space}"
	} else if (nRand < 40) {
		BsSendInput("{!}", 2)
	}
}