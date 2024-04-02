;------------------------------------------------------------------------------
; Random sentences insertion (Hesitation Marks & Horny Thoughts)
;------------------------------------------------------------------------------
; Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
; Horny Thoughts: Inserts some horny thoughts (ie. "... *god bambi is horny*...") from time to time (less common than hesitation marks)

; Script had some issues and weirdness with random insertion, so it had to only be allowed after some specific words
loadHesitationsAndHornyThoughts(state,hesitationMarksChance,hornyThoughtsChance) {
	Hotstring(":b0z*:and ", insertHesitationsAndHornyThoughts)
	Hotstring(":b0z*:to ", insertHesitationsAndHornyThoughts)
	Hotstring(":b0z?*:, ", insertHesitationsAndHornyThoughts)
	if (formalContractions = false) { ; Breaks formal contraction, only activate these hotstrings if it's off
		Hotstring(":b0z*:could ", insertHesitationsAndHornyThoughts)
		Hotstring(":b0z*:should ", insertHesitationsAndHornyThoughts)
		Hotstring(":b0z*:would ", insertHesitationsAndHornyThoughts)
	}
	Hotstring("reset")
}

insertHesitationsAndHornyThoughts(name) {
	;TODO Rework the way probabilities are handled (Maybe add configuration from the .ini)
	Var := Random(1, 5) ; will trigger one of the next two outcomes
	if (var <= 3) {
		if (toBool(hesitationMarks)) {
			Var := Random(1, 5) ; 1 chance out of 5 to trigger this if we enter this block
			if (var = 1) {
				sStrings := "like... |like, |like, |hmm... |like... |uhhh... |ummm... |um |er |uh |"
				randomString(,sStrings, 10)
			}
		}
	} else {
		if (toBool(hornyThoughts) = true) {
			Var := Random(1, 15) ; 1 chance out of 15 to trigger this if we enter this block
			if (var = 1) {
				SendInput "{BS 1}"
				if (toBool(renameMode) = true) {
					sStrings := "... *god " . nameReplace . " is horny*... |... *" . nameReplace . " needs to be fucked*... |... *" . nameReplace . " wants to suck cock soooooo bad*... |... *gosh, " . nameReplace . " is like, so ditzy*... |... *Why is " . nameReplace . " so wet?*... |"
				} else {
					sStrings := "... *god I'm horny*... |... *I need to be fucked*... |... *I want to suck cock soooooo bad*... |... *gosh, I'm like, so ditzy*... |... *Why am I so wet?*... |"
				}
				randomString(,sStrings, 5)
			}
		}
	}
}


;---------------------------------------------------------
; Randomly add the bimbo's thoughts between words ==> DOESN'T WORK
;---------------------------------------------------------
thoughtsBetweenWords(state) {
	Hotstring(":b0z?*: ", insertsThoughtsBetweenWords)
	Hotstring("reset")
}

insertsThoughtsBetweenWords() {
	Var := Random(1, 50)
	if (var = 1) {
		SendInput "{BS 1}"
		; SendInput {left 2}
		sStrings := ", like, | hmmm... | uhhh... | ummm... | um | er | uh |"
		randomString(,sStrings, 7)
		; SendInput {right 2}
	}
}

; randomly add stuff at end of 10% of messages (only when pressing Enter)
; /!\ When enabled, the Enter key doesn't triggers other hotkeys anymore
/* #InputLevel 10
 * Enter::
 *   send, %A_Space%
 *   Random, Var, 1, 1
 *     AutoTrim, off
 *     if (var = 1) {
 *     RandomStuff =
 *     ( LTrim
 *     ` *giggles*| <3| ~|
 *     )
 *     randomString(RandomStuff, 3)
 *     sendPlay, {enter}
 *     } else {
 *     sendPlay, {enter}
 *     }
 * return
 */

