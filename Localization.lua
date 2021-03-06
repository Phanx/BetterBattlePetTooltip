--[[--------------------------------------------------------------------
	BetterBattlePetTooltip
	Copyright (c) 2012-2019 Phanx <addons@phanx.net>. All rights reserved.
	https://www.wowinterface.com/downloads/info21978-BetterBattlePetTooltip.html
	https://www.curseforge.com/wow/addons/betterbattlepettooltip
	https://github.com/phanx-wow/BetterBattlePetTooltip
----------------------------------------------------------------------]]

local ADDON, private = ...
local L = {}
private.L = L

if GetLocale():match("^zh") then
	L.Colon = "："
	L.Comma = "、"
	L.Parentheses = "（%s）"
else
	L.Colon = ": "
	L.Comma = ", "
	L.Parentheses = " (%s)"
end

L.Collected = COLLECTED
L.CollectedCount = "%d/3"
L.CollectedLevel = UNIT_LEVEL_TEMPLATE
L.CollectedLevelBreed = UNIT_TYPE_LEVEL_TEMPLATE
L.NotCollected = NOT_COLLECTED

-- THE REST OF THIS FILE IS AUTOMATICALLY GENERATED. SEE:
-- https://wow.curseforge.com/addons/betterbattlepettooltip/localization/

------------------------------------------------------------------------
-- English
------------------------------------------------------------------------

L["AlreadyBattled"] = "Already Battled"
L["ColorTooltipBorder"] = "Color tooltip borders"
L["ColorTooltipBorder_Tooltip"] = "You may want to disable this if you use another addon to style your tooltip borders."
L["CompactLevel"] = "Compact display"
L["NotCapturable"] = "Not Capturable"
L["ShowAll"] = "Show all collected pets"
L["ShowAll_Tooltip"] = "This will show all your collected pets of the same species, not just the best one."
L["ShowBreed"] = "Show collected breed"
L["ShowCount"] = "Show collected count"
L["ShowCount_Tooltip"] = "This option has no effect when all pets are shown."
L["ShowLevel"] = "Show collected level"
L["ShowSource"] = "Show pet source info"
L["ShowSourceOnlyMissing"] = "Only on missing pets"
L["ShowWildQuality"] = "Show wild pet rarity when possible"
L["ShowWildQuality_Tooltip"] = "This is only possible if you already entered a battle with the pet and forfeited, and only works for unit tooltips, not minimap tracking tooltips."

local CURRENT_LOCALE = GetLocale()
if CURRENT_LOCALE == "enUS" then return end

------------------------------------------------------------------------
-- German
------------------------------------------------------------------------

if CURRENT_LOCALE == "deDE" then

L["AlreadyBattled"] = "Bereits bekämpft"
L["ColorTooltipBorder"] = "Rand des Tooltips einfärben"
L["ColorTooltipBorder_Tooltip"] = "Deaktivieren, wenn Ihr ein weiteres Addon verwendet um den Rand des Tooltips zu einzufärben."
L["CompactLevel"] = "Kompaktes Anzeigeformat"
L["NotCapturable"] = "Nicht einfangbar"
L["ShowAll"] = "Zeige alle eingefangenen Haustiere"
L["ShowAll_Tooltip"] = "Mit dieser Option werden alle eingefangenen Haustiere der gleichen Art gezeigt, anstatt nur des besten."
L["ShowBreed"] = "Zeige die eingefangene Rasse"
L["ShowCount"] = "Zeige die eingefangene Anzahl"
L["ShowCount_Tooltip"] = "Diese Option wirkt sich nicht aus, wenn alle Haustiere angezeigt sind."
L["ShowLevel"] = "Zeige die höchste eingefangene Stufe"
L["ShowSource"] = "Zeige Haustierquellen"
L["ShowSourceOnlyMissing"] = "Nur auf nicht eingefangenen Haustiere"
L["ShowWildQuality"] = "Zeige die Qualität des wilden Haustiers - wenn möglich"
L["ShowWildQuality_Tooltip"] = "Dies ist nur möglich, wenn du das Haustier in dieser Sitzung bereits bekämpft und aufgegeben hast, und funktioniert nur für Einheiten-Tooltips, nicht für Minimap-Tooltips."

return end

------------------------------------------------------------------------
-- Spanish
------------------------------------------------------------------------

if CURRENT_LOCALE == "esES" then

L["AlreadyBattled"] = "Ya luchado"
L["ColorTooltipBorder"] = "Colorear los bordes de los descriptiones"
L["ColorTooltipBorder_Tooltip"] = "Quizás deseas desactivar esta opción si utilizas otro addon para estilizar los bordes de los descriptiones."
L["CompactLevel"] = "Formato compacto"
L["NotCapturable"] = "No se puede capturar"
L["ShowAll"] = "Mostrar todas mascotas capturadas"
L["ShowAll_Tooltip"] = "Con esta opción se muestran todas las mascotas capturadas de la misma raza, en vez de solamente la mejor."
L["ShowBreed"] = "Mostrar la raza capturada"
L["ShowCount"] = "Mostrar la cantidad capturada"
L["ShowCount_Tooltip"] = "Esta opción no tiene efecto cuando se muestran todas las mascotas."
L["ShowLevel"] = "Mostrar el mayor nivel capturado"
L["ShowSource"] = "Mostrar las fuentes de mascotas"
L["ShowSourceOnlyMissing"] = "Sólo en las mascotas no capturadas"
L["ShowWildQuality"] = "Mostrar la calidad de las mascotas salvajes cuando posible"
L["ShowWildQuality_Tooltip"] = "Esto sólo es posible si ya abandonó un duelo con la mascota exacta, y sólo para las descripciones de las unidades, no para las descripciones de seguimiento en el minimapa."

return end

------------------------------------------------------------------------
-- Latin American Spanish
------------------------------------------------------------------------

if CURRENT_LOCALE == "esMX" then

L["AlreadyBattled"] = "Ya luchado"
L["ColorTooltipBorder"] = "Colorear los bordes de los descriptiones"
L["ColorTooltipBorder_Tooltip"] = "Quizás deseas desactivar esta opción si utilizas otro addon para estilizar los bordes de los descriptiones."
L["CompactLevel"] = "Formato compacto"
L["NotCapturable"] = "No se puede capturar"
L["ShowAll"] = "Mostrar todas mascotas capturadas"
L["ShowAll_Tooltip"] = "Con esta opción se muestran todas las mascotas capturadas de la misma raza, en vez de solamente la mejor."
L["ShowBreed"] = "Mostrar la raza capturada"
L["ShowCount"] = "Mostrar la cantidad capturada"
L["ShowCount_Tooltip"] = "Esta opción no tiene efecto cuando se muestran todas las mascotas."
L["ShowLevel"] = "Mostrar el mayor nivel capturado"
L["ShowSource"] = "Mostrar las fuentes de mascotas"
L["ShowSourceOnlyMissing"] = "Sólo en las mascotas no capturadas"
L["ShowWildQuality"] = "Mostrar la calidad de las mascotas salvajes cuando posible"
L["ShowWildQuality_Tooltip"] = "Esto sólo es posible si ya abandonó un duelo con la mascota exacta, y sólo para las descripciones de las unidades, no para las descripciones de seguimiento en el minimapa."

return end

------------------------------------------------------------------------
-- French
------------------------------------------------------------------------

if CURRENT_LOCALE == "frFR" then

L["AlreadyBattled"] = "Déjà combattu"
L["NotCapturable"] = "Capture impossible"
L["ShowCount"] = "Afficher le nombre capturé"
L["ShowLevel"] = "Afficher le plus haut niveau capturé"
L["ShowWildQuality"] = "Afficher la qualité des mascottes sauvages si possible"
L["ShowWildQuality_Tooltip"] = "Ce n'est possible que si vous avez déjà abandonné un combat avec la mascotte, et ne fonctionne que pour les infobulles des unités, pas les infobulles sur la minicarte."

return end

------------------------------------------------------------------------
-- Italian
------------------------------------------------------------------------

if CURRENT_LOCALE == "itIT" then

L["AlreadyBattled"] = "Già combattuto"
L["ColorTooltipBorder"] = "Colorare i bordi di informazioni"
L["ColorTooltipBorder_Tooltip"] = "Potete desiderare attivare questa opzione se si utilizza un altro addon per lo stile dei bordi di informazioni."
L["NotCapturable"] = "Non catturabile"
L["ShowCount"] = "Mostrare la quantità catturato"
L["ShowLevel"] = "Mostrare il livello più alto catturato"
L["ShowWildQuality"] = "Mostrare la qualità della mascotte selvatici, quando possibile"
L["ShowWildQuality_Tooltip"] = "Questo è possibile solo se si è già arreso in un duello contro la mascotte specifico, e solo per le informazioni delle unità, non per le informazioni del tracciamento sulla minimappa."

return end

------------------------------------------------------------------------
-- Brazilian Portuguese
------------------------------------------------------------------------

if CURRENT_LOCALE == "ptBR" then

L["AlreadyBattled"] = "Já luto"
L["ColorTooltipBorder"] = "Cor da borda do tooltip"
L["ColorTooltipBorder_Tooltip"] = "Talvez você deseje desativar caso use outro addon para mudar a aparência do tooltip."
L["CompactLevel"] = "Formato compacto"
L["NotCapturable"] = "Não capturável"
L["ShowAll"] = "Mostrar todos os mascotes colectados"
L["ShowAll_Tooltip"] = "Mostra todos os mascotes colectados pela sua espécie e não apenas o melhor deles."
L["ShowCount"] = "Mostrar a quantidade capturado"
L["ShowCount_Tooltip"] = "Esta opção não tem efeito quando todos os mascotes estão sendo mostrados."
L["ShowLevel"] = "Mostrar a mais alto nível capturado"
L["ShowSource"] = "Mostrar origem do mascote"
L["ShowSourceOnlyMissing"] = "Apenas dos não coletados"
L["ShowWildQuality"] = "Mostrar a qualidade de mascotes selvagens quando possível"
L["ShowWildQuality_Tooltip"] = "Apenas é possível se você já entrou em uma batalha com este mascote e perdeu, e, apenas funciona para tooltips de unidades não nos ícones do mini mapa."

return end

------------------------------------------------------------------------
-- Russian
------------------------------------------------------------------------

if CURRENT_LOCALE == "ruRU" then

L["AlreadyBattled"] = "Уже сражался"
L["ColorTooltipBorder"] = "Цвет границ подсказки"
L["ColorTooltipBorder_Tooltip"] = "Вы можете отключить это если используете другой аддон на Tooltip"
L["NotCapturable"] = "Не приручается"
L["ShowCount"] = "Отображать количество, которое вы поймали"
L["ShowLevel"] = "Отображать наивысший уровень для пойманных"
L["ShowWildQuality"] = "Отображать качество дикого питомца, если возможно"
L["ShowWildQuality_Tooltip"] = "Это возможно, если вы уже вступали в бой с питомцем и отступили. Работает только для подсказки цели, на миникарте не работает."

return end

------------------------------------------------------------------------
-- Korean
------------------------------------------------------------------------

if CURRENT_LOCALE == "koKR" then

return end

------------------------------------------------------------------------
-- Simplified Chinese
------------------------------------------------------------------------

if CURRENT_LOCALE == "zhCN" then

return end

------------------------------------------------------------------------
-- Traditional Chinese
------------------------------------------------------------------------

if CURRENT_LOCALE == "zhTW" then

L["AlreadyBattled"] = "已經戰鬥"
L["ColorTooltipBorder"] = "著色提示邊框"
L["ColorTooltipBorder_Tooltip"] = "如果你使用其它插件來變換你的邊框，你可能會想要禁用這選項。"
L["CompactLevel"] = "精簡顯示"
L["NotCapturable"] = "無法捕獲"
L["ShowAll"] = "顯示所有已收集寵物"
L["ShowAll_Tooltip"] = "顯示全部已收集相同種類的寵物，不是最好的。"
L["ShowBreed"] = "顯示已收集品種"
L["ShowCount"] = "顯示已收集數量"
L["ShowCount_Tooltip"] = "當所有寵物顯示時此選項無效。"
L["ShowLevel"] = "顯示最高收集等級"
L["ShowSource"] = "顯示寵物來源資訊"
L["ShowSourceOnlyMissing"] = "只有缺少的寵物"
L["ShowWildQuality"] = "顯示野外寵物品質"
L["ShowWildQuality_Tooltip"] = "這只有在已經進入一場戰鬥並放棄，而且只有單位提示，沒有小地圖追蹤提示。"

return end
