;------------------------------------------------------------------------------
; Settings Handler
;------------------------------------------------------------------------------
; Assign setting values from the ini file to global variables

; Rename Mode: Forces you to refer to yourself as the provided name (ie. "I" => "Bambi", "My" => "Bambi's"...)
renameMode_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "renameMode", true)
global renameMode := renameMode_Setting

renameModeChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "renameModeChance", 1)
global renameModeChance := renameModeChance_Setting


; Name: Defaults to Bambi, but can be in settings.ini.
nameReplace_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "nameReplace", "Bambi")
global nameReplace := nameReplace_Setting

; Personal Pronoun: Defaults to she (ex. she/he/they), but can be in settings.ini
personalPronoun_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "personalPronoun", "she")
global personalPronoun := personalPronoun_Setting

; Possessive Pronoun: Defaults to her (ex. her/him/them), but can be in settings.ini
possessivePronoun_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "possessivePronoun", "her")
global possessivePronoun := possessivePronoun_Setting

; Formal contractions: aren't, could've, how're, etc...
formalContractions_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "formalContractions", true)
global formalContractions := formalContractions_Setting

formalContractionsChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "formalContractionsChance", 1)
global formalContractionsChance := formalContractionsChance_Setting

; Informal contractions: aint, gonna, wanna, etc... (will override some formal contractions)
informalContractions_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "informalContractions", true)
global informalContractions := informalContractions_Setting

informalContractionsChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "informalContractionsChance", 1)
global informalContractionsChance := informalContractionsChance_Setting


; Giggles: Replaces common laugh sounds (haha, lol, etc...) with *giggles*
giggles_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "giggles", true)
global giggles := giggles_Setting

gigglesChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "gigglesChance", 1)
global gigglesChance := gigglesChance_Setting


; Word Replacer: Replaces common words with simpler or more bimbo-like versions. (ie. "best" => "bestest", "confused" => "ditzy"...)
wordReplacer_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "wordReplacer", true)
global wordReplacer := wordReplacer_Setting

wordReplacerChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "wordReplacerChance", 1)
global wordReplacerChance := wordReplacerChance_Setting


; Words randomizers: Replace some words from a pool of more fitting synonyms. (like world replacer, but with several possible outcome)
wordsRandomizer_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "wordsRandomizer", true)
global wordsRandomizer := wordsRandomizer_Setting

wordsRandomizerChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "wordsRandomizerChance", 1)
global wordsRandomizerChance := wordsRandomizerChance_Setting

; Phonetic: Replaces some common word sounds with phonetically similar ones (ie. "-ome" => "-um", "-ing" => "-in'")
phonetic_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "phonetic", true)
global phonetic := phonetic_Setting

phoneticChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "phoneticChance", 1)
global phoneticChance := phoneticChance_Setting


; Verbs synonyms: Replaces some specifics verbs with more fitting synonyms. ("Bambi laughs" => "Bambi giggles")
verbsSynonyms_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "verbsSynonyms", true)
global verbsSynonyms := verbsSynonyms_Setting

verbsSynonymsChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "verbsSynonymsChance", 1)
global verbsSynonymsChance := verbsSynonymsChance_Setting

; Punctuation: Randomly turns periods into questions, exclamations or tilde
punctuation_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "punctuation", true)
global punctuation := punctuation_Setting

punctuationChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "punctuationChance", 1)
global punctuationChance := punctuationChance_Setting


; Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
hesitationMarks_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "hesitationMarks", true)
global hesitationMarks := hesitationMarks_Setting

hesitationMarksChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "hesitationMarksChance", 1)
global hesitationMarksChance := hesitationMarksChance_Setting


; Horny Thoughts: Inserts some horny thoughts (ie. "... *god bambi is horny*...") from time to time (less common than hesitation marks)
hornyThoughts_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "hornyThoughts", true)
global hornyThoughts := hornyThoughts_Setting

hornyThoughtsChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "hornyThoughtsChance", true)
global hornyThoughtsChance := hornyThoughtsChance_Setting

; Common Mistakes
commonMistakes_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "commonMistakes", true)
global commonMistakes := commonMistakes_Setting

commonMistakesChance_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "commonMistakesChance", true)
global commonMistakesChance := commonMistakesChance_Setting



;------------------------------------------------------------------------------
; DEBUG
;------------------------------------------------------------------------------

; Set which application will be handled by the script
applicationHandled_Setting := IniRead(A_ScriptDir "\settings.ini", "SETTINGS", "applicationHandled", "Discord")
global applicationHandled := StrSplit(applicationHandled_Setting, ",")
if (applicationHandled == "ERROR") {
	applicationHandled := ["Discord"]
}
if (applicationHandled == "ALL") {
	applicationHandled := []
}

; Display settings summary at startup
settingSummary_Setting := IniRead(A_ScriptDir "\settings.ini", "DEBUG", "settingSummary")
if (toBool(settingSummary_Setting)) {
	MsgBox((LTrim(
		"Version: " version "`n"
		
		"[SETTINGS]"
		"Application Handled = " applicationHandled_Setting "`n"
		"Rename Mode = " renameMode_Setting "`n"
		"Rename Mode = " renameModeChance_Setting "`n"
		"Name Replacement = " nameReplace_Setting "`n"
		"Personal Pronoun = " personalPronoun_Setting "`n"
		"Possessive Pronoun = " possessivePronoun_Setting "`n"

		"Informal Contractions = " informalContractions_Setting "`n"
		"Informal Contractions = " informalContractionsChance_Setting "`n"

		"Formal Contractions = " formalContractions_Setting "`n"
		"Formal Contractions = " formalContractionsChance_Setting "`n"

		"Giggles = " giggles_Setting "`n"
		"Giggles = " gigglesChance_Setting "`n"

		"Word Replacer = " wordReplacer_Setting "`n"
		"Word Replacer = " wordReplacerChance_Setting "`n"

		"Words Randomizer = " wordsRandomizer_Setting "`n"
		"Words Randomizer = " wordsRandomizerChance_Setting "`n"

		"Verbs Synonyms = " verbsSynonyms_Setting "`n"
		"Verbs Synonyms = " verbsSynonymsChance_Setting "`n"

		"Punctuation = " punctuation_Setting "`n"
		"Punctuation = " punctuationChance_Setting "`n"

		"Hesitation Marks = " hesitationMarks_Setting "`n"
		"Hesitation Marks = " hesitationMarksChance_Setting "`n"

		"Horny Thoughts = " hornyThoughts_Setting "`n"
		"Horny Thoughts = " hornyThoughtsChance_Setting "`n"

		"Common Mistakes = " commonMistakes_Setting "`n"
		"Common Mistakes = " commonMistakesChance_Setting "`n"

		
		"(You can prevent this window from showing up by setting the key 'settingSummary' to false in the 'settings.ini' file)"
	)))
	
}