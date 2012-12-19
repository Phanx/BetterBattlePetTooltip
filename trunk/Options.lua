--[[--------------------------------------------------------------------
	BetterBattlePetTooltip
	A World of Warcraft user interface addon
	Copyright (c) 2012 Phanx

	This addon is freely available, and its source code freely viewable,
	but it is not "open source software" and you may not distribute it,
	with or without modifications, without permission from its author.

	See the included README and LICENSE files for more information!
----------------------------------------------------------------------]]

local ADDON = ...

local L_HIDE_COUNT = "Hide collected count"
local L_SHOW_LEVEL = "Show highest collected level"

------------------------------------------------------------------------

if GetLocale():match("^es") then
	L_HIDE_COUNT = "Ocultar la cantidad que ha capturado"
	L_SHOW_LEVEL = "Mostrar el mayor nivel que ha capturado"

elseif GetLocale() == "frFR" then
	L_HIDE_COUNT = "Masquer le montant qui a capturé"
	L_SHOW_LEVEL = "Voir plus haut niveau qui a capturé"

elseif GetLocale() == "itIT" then
	L_HIDE_COUNT = "Nascondere la quantità che ha catturato"
	L_SHOW_LEVEL = "Mostra il livello più alto che hai catturato"

elseif GetLocale():match("^pt") then
	L_HIDE_COUNT = "Esconder a quantidade que tem capturado"
	L_SHOW_LEVEL = "Mostrar mais alto nível que tem capturado"

elseif GetLocale() == "ruRU" then
	L_HIDE_COUNT = "Скрыть количество, которое вы поймали"
	L_SHOW_LEVEL = "Показать высшее уровень, которое вы поймали"
end

------------------------------------------------------------------------

local Options = CreateFrame("Frame", "BBPTOptions", InterfaceOptionsFramePanelContainer)
Options.name = GetAddOnMetadata(ADDON, "Title") or ADDON
InterfaceOptions_AddCategory(Options)

local Title = Options:CreateFontString("$parentTitle", "ARTWORK", "GameFontNormalLarge")
Title:SetPoint("TOPLEFT", 16, -16)
Title:SetText(Options.name)

local SubText = Options:CreateFontString("$parentSubText", "ARTWORK", "GameFontHighlightSmall")
SubText:SetPoint("TOPLEFT", Title, "BOTTOMLEFT", 0, -8)
SubText:SetPoint("RIGHT", -32, 0)
SubText:SetHeight(32)
SubText:SetJustifyH("LEFT")
SubText:SetJustifyV("TOP")
SubText:SetText(GetAddOnMetadata(ADDON, "Notes"))

local HideCount = CreateFrame("CheckButton", "$parentHideCount", Options, "InterfaceOptionsCheckButtonTemplate")
HideCount:SetPoint("TOPLEFT", SubText, "BOTTOMLEFT", -2, -8)
HideCount.Text:SetText(L_HIDE_COUNT)
HideCount:SetScript("OnClick", function(this)
	local checked = not not this:GetChecked()
	PlaySound(checked and "igMainMenuOptionCheckBoxOn" or "igMainmenuOptionCheckBoxOff")
	BBPT_HideCount = checked
end)

local ShowLevel = CreateFrame("CheckButton", "$parentShowLevel", Options, "InterfaceOptionsCheckButtonTemplate")
ShowLevel:SetPoint("TOPLEFT", HideCount, "BOTTOMLEFT", 0, -8)
ShowLevel.Text:SetText(L_SHOW_LEVEL)
ShowLevel:SetScript("OnClick", function(this)
	local checked = not not this:GetChecked()
	PlaySound(checked and "igMainMenuOptionCheckBoxOn" or "igMainmenuOptionCheckBoxOff")
	BBPT_ShowLevel = checked
end)

Options.Title = Title
Options.SubText = SubText
Options.HideCount = HideCount
Options.ShowLevel = ShowLevel

Options.refresh = function()
	HideCount:SetChecked(BBPT_HideCount)
	ShowLevel:SetChecked(BBPT_ShowLevel)
end

if LibStub and LibStub("LibAboutPanel", true) then
	Options.About = LibStub("LibAboutPanel").new(Options.name, ADDON)
end

SLASH_BBPT1 = "/bbpt"
SlashCmdList.BBPT = function()
	if Options.About then
		InterfaceOptionsFrame_OpenToCategory(Options.About)
	end
	InterfaceOptionsFrame_OpenToCategory(Options)
end