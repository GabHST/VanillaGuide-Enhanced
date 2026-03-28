--[[--------------------------------------------------
002_ElwynnForest.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 001 Elwynn Forest
	1.04.1
		-- First Release
			Human Elwynn Forest's Guide
			from level 1 to lever 12
	1.04.2
		-- no changes in here for this revision
	1.04.3
		-- Added color codes
			Fixed various spelling errors
			Adjustment to coordinate visibility
			Playtested and corrected all steps
------------------------------------------------------
Connection:
--]]--------------------------------------------------
Table_002_ElwynnForest = {
	[0110] = {
		title = "1-10 Elwynn Forest",
		--L- Playtested and corrected
		items = {
			[1] = { str = "1-10 Elwynn Forest" },
			[2] = { str = "Aceite #GETA Threat Within# depois entre no predio e entregue, aceite #GETKobold Camp Cleanup#." },
			[3] = { str = "Volte la fora, e entregue #INWelcome!# nas carrocas em #COORD[47,41]#.", x = 47, y = 41, zone = "Elwynn Forest" },
			[4] = { str = "Va ate o canto Noroeste do predio em #COORD[48,40]# e aceite #GETWolves Across the Border#.", x = 48, y = 40, zone = "Elwynn Forest" },
			[5] = { str = "Mate #NPCWolves# na sua frente para #DOWolves Across the Border#, enquanto vai ate os #NPCKobold Vermin# em #COORD[47,35]# para #DOKobold Camp Cleanup#.", x = 47, y = 35, zone = "Elwynn Forest" },
			[6] = { str = "Volte para #COORD[48,40]# e entregue #INWolves Across the Border#.", x = 48, y = 40, zone = "Elwynn Forest" },
			[7] = { str = "Entre na casa em #COORD[48,41]# e entregue #INKobold Camp Cleanup#, aceite #GETSimple Letter# e #GETInvestigate Echo Ridge#.", x = 48, y = 41, zone = "Elwynn Forest" },
			[8] = { str = "Va ate seu class trainer e entregue #INSimple Letter# e pegue novas skills.", x = 50, y = 42, zone = "Elwynn Forest" },
			[9] = { str = "Saia da casa e aceite #GETBrotherhood of Thieves#." },
			[10] = { str = "Va Noroeste em direcao a caverna em #COORD[47,32]#, e mate #NPCKobold Workers# no caminho para #DOInvestigate Echo Ridge#.", x = 47, y = 32, zone = "Elwynn Forest" },
			[11] = { str = "Va Oeste ate #COORD[54,40]# e va ao sul matando #NPCDefias# para #DOBrotherhood of Thieves#, voce deve estar level 4 quando terminar, se nao grinde ate estar.", x = 54, y = 40, zone = "Elwynn Forest" },
			[12] = { str = "Volte para a abadia em #COORD[48,42]# e entregue #INBrotherhood of Thieves#, aceite #GETMilly Osworth# e #GETBounty on Garrick Padfoot#.", x = 48, y = 42, zone = "Elwynn Forest" },
			[13] = { str = "Entre na casa e entregue #INInvestigate Echo Ridge#, aceite #GETSkirmish at Echo Ridge#, depois pegue novas skills." },
			[14] = { str = "Va ao Norte da casa em #COORD[50,39]# perto do celeiro, entregue #INMilly Osworth#, aceite #GETMilly's Harvest#.", x = 50, y = 39, zone = "Elwynn Forest" },
			[15] = { str = "Volte ao Leste e pegue as #ITEMgrapes# no jardim em #COORD[54,48]# para #DOMilly's Harvest# depois Nordeste ate #COORD[57,48]# voce vera um barraco com #NPCGarrick Padfoot#. Mate ele para #DOBounty on Garrick Padfoot#.", x = 57, y = 48, zone = "Elwynn Forest" },
			[16] = { str = "Volte para #COORD[50,39]# e entregue #INMilly's Harvest#, aceite #GETGrape Manifest#.", x = 50, y = 39, zone = "Elwynn Forest" },
			[17] = { str = "Entre na caverna em #COORD[47,31]# e mate #NPCKobold Laborer# para #DOSkirmish at Echo Ridge#.", x = 47, y = 31, zone = "Elwynn Forest" },
			[18] = { str = "Use Hearthstone de volta pra Abadia." },
			[19] = { str = "Entregue #INBounty on Garrick Padfoot#." },
			[20] = { str = "Entre na casa, entregue #INSkirmish at Echo Ridge#, aceite #GETReport to Goldshire#." },
			[21] = { str = "Va ate o topo da torre pela escada espiral, entregue #INGrape Manifest#." },
			[22] = { str = "Va ate #COORD[45,47]# e aceite #GETRest and Relaxation#.", x = 45, y = 47, zone = "Elwynn Forest" },
			[23] = { str = "Se voce nao esta level 6, deve estar perto, apenas grinde alguns mobs enquanto vai em direcao a casa perto de Goldshire em #COORD[46,62]# e pegue skinning se quiser.", x = 46, y = 42, zone = "Elwynn Forest" },
			[24] = { str = "Entre na Inn em #COORD[42,65]#, aceite #GETKobold Candles#, entregue #INRest and Relaxation# e sete seu Hearthstone em Goldshire.", x = 42, y = 65, zone = "Elwynn Forest" },
			[25] = { str = "Saia da Inn, entregue #INReport to Goldshire#, aceite #GETThe Fargodeep Mine#." },
			[26] = { str = "Encontre seu trainer e compre novas skills." },
			[27] = { str = "Va perto das carrocas em #COORD[42,67]# e aceite #GETGold Dust Exchange#", x = 42, y = 67, zone = "Elwynn Forest" },
			[28] = { str = "Va ao Sul ate a Fargodeep Mine em #COORD[39,82]# e mate os #NPCKobold# ate completar as 3 quests #DOThe Fargodeep Mine#, #DOGold Dust Exchange#, e #DOQUEATKobold Candles#. Use a entrada de baixo, e mais facil.", x = 39, y = 82, zone = "Elwynn Forest" },
			[29] = { str = "Quando as 3 estiverem prontas va ate a Stonefield Farm subindo a colina ao Leste em #COORD[34,84]# e aceite #GETLost Necklace# SKIP #SKIPPrincess Must Die!# se voce nao consegue lutar contra 3 mobs ao mesmo tempo.", x = 34, y = 84, zone = "Elwynn Forest" },
			[30] = { str = "Va ao leste ate a Maclure Vinyard em #COORD[43,90]# e aceite #GETYoung Lovers#", x = 43, y = 90, zone = "Elwynn Forest" },
			[31] = { str = "Va ate #COORD[43,86]# e entregue #INLost Necklace#, aceite #GETPie For Billy# depois mate boars ate terminar.", x = 43, y = 86, zone = "Elwynn Forest" },
			[32] = { str = "Volte Oeste ate #COORD[34,84]# e entregue #INPie For Billy#, e aceite #GETBack to Billy#.", x = 34, y = 84, zone = "Elwynn Forest" },
			[33] = { str = "Va Oeste ate o rio em #COORD[30,86]#, e entregue #INYoung Lovers#, aceite #GETSpeak with Gramma.#", x = 30, y = 86, zone = "Elwynn Forest" },
			[34] = { str = "Volte para #COORD[34,84]# e entregue #INSpeak with Gramma#, aceite #GETNote to William#.", x = 34, y = 84, zone = "Elwynn Forest" },
			[35] = { str = "Volte ao leste ate #COORD[43,86]# e entregue #INBack to Billy# aceite #GETGoldtooth#.", x = 43, y = 86, zone = "Elwynn Forest" },
			[36] = { str = "Entre pela entrada de baixo da Fargodeep Mine em #COORD[39,82]# e va ate #COORD[41,78]#, mate #NPCGoldtooth# para #DOGoldtooth#. Voce deve upar level 7 durante essa quest.", x = 41, y = 78, zone = "Elwynn Forest" },
			[37] = { str = "Use Hearthstone de volta pra Goldshire." },
			[38] = { str = "Na Inn entregue #INKobold Candles#, aceite #GETShipment to Stormwind# tambem entregue #INNote to William#, aceite #GETCollecting Kelp#." },
			[39] = { str = "Logo fora da Inn, entregue #INThe Fargodeep Mine# aceite #GETThe Jasperlode Mine#." },
			[40] = { str = "Ao sul perto da cerca, entregue #INGold Dust Exchange# Voce deve ter upado level 7 agora, aceite #GETA Fishy Peril#, aceite #GETFurther Concerns# perto do ferreiro." },
			[41] = { str = "Mate #NPCMurlocs# perto do lago em #COORD[51,65]# para #DOCollecting Kelp#.", x = 51, y = 65, zone = "Elwynn Forest" },
			[42] = { str = "Grinde ate a Jasperlode Mine em #COORD[61,53]# e corra por ela ate a metade em #COORD[60,50]# para #DOThe Jasperlode Mine#.", x = 60, y = 50, zone = "Elwynn Forest" },
			[43] = { str = "Va ate a ponte em #COORD[74,72]# e entregue #INFurther Concerns#, aceite #GETFind the Lost Guards# e #GETProtect the Frontier#.", x = 74, y = 72, zone = "Elwynn Forest" },
			[44] = { str = "Pare na casa em #COORD[79,69]# e aceite #GETRed Linen Goods#.", x = 79, y = 69, zone = "Elwynn Forest" },
			[45] = { str = "No centro do acampamento, #COORD[81,66]#, aceite #GETA Bundle of Trouble#.", x = 81, y = 66, zone = "Elwynn Forest" },
			[46] = { str = "Va logo Oeste da cachoeira em #COORD[73,60]# toque o #ITEMMangled Body#, e entregue #INFind the Lost Guards#, aceite #GETDiscover Rolf's Fate# Voce deve estar level 8 agora, se nao grinde ate estar.", x = 73, y = 60, zone = "Elwynn Forest" },
			[47] = { str = "Va ate o acampamento de Murloc em #COORD[80,56]# e loote o #ITEMMangled Body# la, e entregue #INDiscover Rolf's Fate#, aceite #GETReport to Thomas#.", x = 80, y = 56, zone = "Elwynn Forest" },
			[48] = { str = "Va ao sul ate #COORD[81,66]# e entregue #INA Bundle of Trouble#.", x = 81, y = 66, zone = "Elwynn Forest" },
			[49] = { str = "Atravesse a estrada e va ao sul e leste e termine de matar os #NPCBears# e #NPCWolves# para #DOProtect the Frontier#." },
			[50] = { str = "Volte para #COORD[74,72]# perto da ponte e entregue #INProtect the Frontier# e #INReport to Thomas#, aceite #GETDeliver Thomas' Report#.", x = 74, y = 72, zone = "Elwynn Forest" },
			[51] = { str = "Va ate a plantacao de aboboras em #COORD[69,78]# e mate #NPCDefias# para #DORed Linen Goods#.", x = 69, y = 78, zone = "Elwynn Forest" },
			[52] = { str = "Voce pode encontrar #ITEM[Westfall Deed]#, para a quest #NPCFurlbrow's Deed# enquanto mata #NPCDefias#. Apenas guarde por enquanto." },
			[53] = { str = "Va ate #COORD[79,69]# e entregue #INRed Linen Goods#, deve te dar level 9 ou te deixar bem perto.", x = 79, y = 69, zone = "Elwynn Forest" },
			[54] = { str = "Pare na ponte de novo em #COORD[74,72]# e aceite #GETReport to Gryan Stoutmantle#, precisa ser level 9 para aceitar.", x = 74, y = 72, zone = "Elwynn Forest" },
			[55] = { str = "Use Hearthstone pra Goldshire" },
			[56] = { str = "Entregue #INCollecting Kelp# aceite #GETThe Escape#, #INThe Jasperlode Mine# e #INDeliver Thomas' Report# SKIP #SKIPCloth and Leather Armor# aceite #GETWestbrook Garrison Needs Help!#. Aceite #GETElmore's Task# no ferreiro." },
			[57] = { str = "Va ao Sul ate a Maclure Vinyard em #COORD[43,89]# e entregue #INThe Escape#.", x = 43, y = 89, zone = "Elwynn Forest" },
			[58] = { str = "Va Oeste ate a Stonefield Farm em #COORD[34,84]# e entregue #INGoldtooth#.", x = 34, y = 84, zone = "Elwynn Forest" },
			[59] = { str = "Va Noroeste ate #COORD[24,74]# e entregue #INWestbrook Garrison Needs Help!#, aceite #GETRiverpaw Gnoll Bounty# e #GETHogger!# da #ITEMWanted! sign#.", x = 24, y = 74, zone = "Elwynn Forest" },
			[60] = { str = "Va logo ao Sul da estrada e comece a matar #NPCGnolls# para #DORiverpaw Gnoll Bounty# eles tambem podem dropar um #ITEMGold Schedule# que inicia uma quest." },
			[61] = { str = "Volte ate #COORD[24,74]# e entregue #INRiverpaw Gnoll Bounty#.", x = 24, y = 74, zone = "Elwynn Forest" },
			[62] = { str = "Voce deve estar muito perto do level 10 agora, siga a estrada oeste ate Westfall." },
		}
	},
	[1012] = {
		title = "10-12 Westfall and Loch Modan",
		--L- Playtested and corrected
		items = {
			[1] = { str = "10-12 Westfall and Loch Modan" },
			[2] = { str = "Va ate #COORD[60,19]# e entregue #INFurlbrow's Deed# se voce encontrou #ITEM[Westfall Deed]#.", x = 60, y = 19, zone = "Westfall" },
			[3] = { str = "Aceite #GETWestfall Stew# SKIP #SKIPPoor Old Blanchy#." },
			[4] = { str = "Entre na casa em #COORD[56,30]# e entregue #INWestfall Stew#.", x = 56, y = 30, zone = "Westfall" },
			[5] = { str = "Va ate #COORD[56,47]# e entregue #INReport to Gryan Stoutmantle#.", x = 56, y = 47, zone = "Westfall" },
			[6] = { str = "Entre na torre e aceite #GETA Swift Message#." },
			[7] = { str = "Pegue o flight path em #COORD[56,53]# e entregue #INA Swift Message# aceite #GETContinue to Stormwind#.", x = 56, y = 53, zone = "Westfall" },
			[8] = { str = "Voe pra Stormwind. Se voce fez #NPCHogger#, use Hearthstone pra Goldshire, e entregue fora da Inn." },
			[9] = { str = "Em Stormwind va ate #COORD[56,66]# e entregue #INShipment to Stormwind#.", x = 56, y = 66, zone = "Stormwind City" },
			[10] = { str = "Treine novas armas em #COORD[57,57]#.", x = 57, y = 57, zone = "Stormwind City" },
			[11] = { str = "Va ate #COORD[74,48]# e entregue #INContinue to Stormwind# aceite #GETDungar Longdrink#.", x = 74, y = 48, zone = "Stormwind City" },
			[12] = { str = "Va ate #COORD[52,12]# e entregue #INElmore's Task# aceite #GETStormpike's Delivery# isso sera feito no caminho para Wetlands.", x = 52, y = 12, zone = "Stormwind City" },
			[13] = { str = "Va ate #COORD[66,62]# e entregue #INStormpike's Delivery# aceite #GET#Return to Lewis# depois voe de volta pra Westfall.", x = 66, y = 62, zone = "Stormwind City" },
			[14] = { str = "Va ate a torre em #COORD[56,47]# e entregue #INReturn to Lewis#.", x = 56, y = 47, zone = "Westfall" },
			[15] = { str = "Voe de volta pra Stormwind.", x = 74, y = 37, zone = "Stormwind City" },
			[16] = { str = "Entre no tram em #COORD[64,08]# e pegue ele ate Ironforge.", x = 64, y = 8, zone = "Stormwind City" },
			[17] = { str = "Quando parar aceite #GETDeeprun Rat Roundup# apenas colete 5 ratos e entregue. Voce pode pular isso e ficar com a flauta, ela pode irritar muito as pessoas se voce tocar sem parar perto do banco de IF. SKIP #VIDEOMe Brother, Nipsy#." },
			[18] = { str = "Pegue o flight path em #COORD[55,47]#.", x = 55, y = 47, zone = "Ironforge" },
			[19] = { str = "Saia de Ironforge e va para Dun Morogh." },
			[20] = { str = "Va ao leste ate #COORD[69,56]# e aceite #GETThe Public Servant#.", x = 69, y = 56, zone = "Dun Morogh" },
			[21] = { str = "Va atras dele e aceite #GETThose Blasted Troggs!#" },
			[22] = { str = "Va no poco abaixo e mate os #NPCTroggs# aqui e na caverna para ambas quests, depois entregue de volta em #COORD[69,56]#.", x = 69, y = 56, zone = "Dun Morogh" },
			[23] = { str = "Va ao leste ate #COORD[81,53]# e siga o caminho para Loch Modan.", x = 81, y = 53, zone = "Dun Morogh" },
			[24] = { str = "Va ate #COORD[22,73]# e aceite #GETIn Defense of the King's Lands#. Entre no bunker e aceite #GETThe Trogg Threat#.", x = 22, y = 73, zone = "Loch Modan" },
			[25] = { str = "Pegue o flight path em #COORD[34,51]#.", x = 34, y = 51, zone = "Loch Modan" },
			[26] = { str = "Mate #NPCTroggs# de #COORD[27,53]# e ao norte para #DOIn Defense of the King's Lands# e #DOThe Trogg Threat#.", x = 27, y = 53, zone = "Loch Modan" },
			[27] = { str = "Volte para #COORD[22,73]# e entregue ambas.", x = 22, y = 73, zone = "Loch Modan" },
			[28] = { str = "Va ao norte ate o bunker em #COORD[25,18]# e entregue #INStormpike's Delivery#.", x = 25, y = 18, zone = "Loch Modan" },
			[29] = { str = "Voce deve estar level 12 agora ou perto. Voce pode grindar se quiser." },
			[30] = { str = "Va ate #COORD[25,11]# e siga o caminho da montanha ate Wetlands.", x = 25, y = 11, zone = "Loch Modan" },
			[31] = { str = "Siga a estrada ate Menethil Harbor em #COORD[11,53]#, pegue o flight path, depois pegue o barco para Darkshore.", x = 25, y = 11, zone = "Wetlands" },
		}
	},
}