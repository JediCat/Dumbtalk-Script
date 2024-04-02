;------------------------------------------------------------------------------
; Bambi 3rd Person Verbs
;------------------------------------------------------------------------------
; Changes verbs to the 3rd person when refering to yourself as Bambi (Non exhaustive list)

loadVerbsFromCSV() {
	replacements := []

	file := FileOpen("verbList.csv", "r")
	if (file) {
		while(!file.AtEOF) {
			line:= file.ReadLine()
			if (line != "") {
				parts := StrSplit(line, ",")
				if (parts.Length >= 2) {
					trigger := Trim(parts[1])
					replacement := Trim(parts[2])
					replacementPair := Map( "trigger", trigger, "replacement", replacement)
                    replacements.Push(replacementPair)
				}
			}
		}
		file.Close()
	}

	return replacements
}

load3rdPersonVerbs(state, nameReplace,chance) {
	verbList := loadVerbsFromCSV()
	Loop(verbList.Length) {
		pair := verbList[A_Index]
		triggerVerb := pair["trigger"]
		replacement := pair["replacement"]
		Hotstring(":z:" . nameReplace . " " . triggerVerb, nameReplace . " " replacement)
	}

        local Var := Random(1, 100)

	if (toBool(state) == true and Var < chance) {
		Hotstring(":z: am", " is")
		Hotstring(":z: have", " has")
		Hotstring(":z:i'm", nameReplace . " is")
		Hotstring(":z:im", nameReplace . " is")
		Hotstring(":z:i've", nameReplace . " has")
		Hotstring(":z:ive", nameReplace . " has")
		Hotstring(":z:i'll", nameReplace . " will")
		Hotstring(":z:i'd", nameReplace . " would")
		Hotstring("reset")
	}
}