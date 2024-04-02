;------------------------------------------------------------------------------
; Initializer
;------------------------------------------------------------------------------
; Initialize some parts of the scripts based on the settings

; Hotstring("EndChars", "-()[]`{}:;" "/\,.?!`n `t")

loadCommonMistakes(CommonMistakes,CommonMistakesChance)
loadContractionsFormal(formalContractions,formalContractionsChance)
loadContractionsInformal(informalContractions,formalContractionsChance)
loadPronouns(renameMode, nameReplace, possessivePronoun, renameModeChance)
loadGiggles(giggles,gigglesChance)
loadWordReplacer(wordReplacer,wordReplacerChance)
load3rdPersonVerbs(renameMode, nameReplace, renameModeChance)
loadWordsRandomizer(wordsRandomizer,wordsRandomizerChance)
loadPhonetic(phonetic,phoneticChance)
loadVerbsSynonyms(verbsSynonyms, nameReplace)
loadPunctuation(punctuation,punctuationChance)
if (hesitationMarks or hornyThoughts) {
	loadHesitationsAndHornyThoughts(true,hesitationMarksChance,hornyThoughtsChance)
}
; thoughtsBetweenWords(true) ; Doesn't work
