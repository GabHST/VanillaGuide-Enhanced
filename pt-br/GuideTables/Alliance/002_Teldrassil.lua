--[[--------------------------------------------------
002_Teldrassil.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 002 Teldrassil
	1.04.1
		-- First Release
			Night Elves Teldrassil's Guide
			from level 1 to lever 12
	1.04.2
		-- no changes in here for this revision
	1.04.3
		-- Added color codes
			Fixed various spelling errors
			Adjustment to coordinate visibility
			Playtested every step
------------------------------------------------------
Connection:
--]]--------------------------------------------------
Table_002_Teldrassil = {
	[0106] = {
		title = "1-6 Teldrassil",
		items = {
			[1] = { str = "1-6 Teldrassil" },
			[2] = { str = "Aceite #GETThe Balance of Nature pt.1# de #NPCConservator Ilthalaine# logo na sua frente, e va fazer matando mobs em #COORD[57,45]# e #COORD[61,43]#.", x = 57, y = 45, zone = "Teldrassil" },
			[3] = { str = "Volte para entregar, depois aceite #GETThe Balance of Nature pt.2# e #GETEtched Sigil# em #COORD[59,44]#.", x = 59, y = 44, zone = "Teldrassil" },
			[4] = { str = "Pegue #GETThe Woodland Protector pt.1# em #COORD[60,43]# e #GETA Good Friend# em #COORD[61,42]#.", x = 61, y = 42, zone = "Teldrassil" },
			[5] = { str = "Entregue #INThe Woodland Protector pt.1# em #COORD[58,45]# e aceite #GETThe Woodland Protector pt.2#", x = 58, y = 45, zone = "Teldrassil" },
			[6] = { str = "Faca #DOThe Woodland Protector pt.2# em #COORD[56,46]#. Volte e entregue em #COORD[57,45]#.", x = 56, y = 46, zone = "Teldrassil" },
			[7] = { str = "Aceite #GETWebwood Venom# em #COORD[58,42]#. Va entregar #INEtched Sigil# no seu class trainer. Pegue novas skills.", x = 58, y = 42, zone = "Teldrassil" },
			[8] = { str = "Va ate #COORD[60,35]# e faca #DOThe Balance of Nature pt.2#, mobs estao por toda parte.", x = 60, y = 35, zone = "Teldrassil" },
			[9] = { str = "Faca #DOWebwood Venom# em #COORD[57,32]#, dentro e fora da caverna.", x = 57, y = 32, zone = "Teldrassil" },
			[10] = { str = "Entregue #INA Good Friend# em #COORD[55,33]# numa gruta logo oeste da caverna. Aceite #GETA Friend in Need#.", x = 55, y = 33, zone = "Teldrassil" },
			[11] = { str = "Entregue #INWebwood Venom# em #COORD[58,42]#. Aceite #GETWebwood Egg#.", x = 58, y = 42, zone = "Teldrassil" },
			[12] = { str = "Entregue #INThe Balance of Nature pt.2# em #COORD[59,44]#", x = 59, y = 44, zone = "Teldrassil" },
			[13] = { str = "Entregue #INA Friend in Need# em #COORD[61,42]#, aceite #GETIverron's Antidote pt.1#", x = 61, y = 42, zone = "Teldrassil" },
			[14] = { str = "Faca #DOIverron's Antidote pt.1#, pegue #ITEMMoonpetal Lily# e #ITEMHyancinth Mushroom# perto de #COORD[57,37]#.", x = 57, y = 37, zone = "Teldrassil" },
			[15] = { str = "Para #DOIverron's Antidote pt.1#, pegue #ITEMWebwood Ichor# de um #NPCWebwood Spider# #COORD[57,32]#. Pegue #ITEMWebwood Egg# para #DOWebwood Egg# em #COORD[57,26]# dentro da caverna.", x = 57, y = 36, zone = "Teldrassil" },
			[16] = { str = "Entregue #INWebwood Egg# em #COORD[58,42]# Aceite #GETTenaron's Summons#, depois suba a rampa ate o topo da arvore e entregue em #COORD[59,39]#. Aceite #GETCrown of the Earth pt.1# ", x = 58, y = 42, zone = "Teldrassil" },
			[17] = { str = "Entregue #INIverron's Antidote pt.1# aceite #GETIverron's Antidote pt.2# em #COORD[61,42]#.", x = 61, y = 42, zone = "Teldrassil" },
			[18] = { str = "Va e entregue #INIverron's Antidote pt.2# em #COORD[54,32]#", x = 54, y = 32, zone = "Teldrassil" },
			[19] = { str = "Encha o #ITEM[Crystal Phial]# para #DOCrown of the Earth pt.1# em #COORD[59,32]#", x = 59, y = 32, zone = "Teldrassil" },
			[20] = { str = "Volte ao topo da arvore em #COORD[59,39]#, e entregue #INCrown of the Earth pt.1#. Aceite #GETCrown of the Earth pt.2# ", x = 59, y = 39, zone = "Teldrassil" },
			[21] = { str = "Se voce nao esta level 6 ainda, deve estar perto. Upe e pegue skills." },
		}
	},
	[0612] = {
		title = "6-12 Teldrassil",
		--L- Needs playtest
		items = {
			[1] = { str = "6-12 Teldrassil" },
			[2] = { str = "Aceite #GETDolanaar Delivery# em #COORD[61,47]#", x = 61, y = 47, zone = "Teldrassil" },
			[3] = { str = "Aceite #GETZenn's Bidding# em #COORD[60,56]#", x = 60, y = 56, zone = "Teldrassil" },
			[4] = { str = "Sete seu Hearthstone em Dolanaar." },
			[5] = { str = "Entregue #INDolanaar Delivery# em #COORD[55,59]# em Dolanaar", x = 55, y = 59, zone = "Teldrassil" },
			[6] = { str = "Entregue #INCrown of the Earth pt.2# em #COORD[56,61]# aceite #GETCrown of the Earth pt.3#", x = 56, y = 61, zone = "Teldrassil" },
			[7] = { str = "Na torre em Dolanaar pegue as seguintes." },
			[8] = { str = "#GETDenalan's Earth#, #GETA Troubling Breeze#, Pegue First Aid, #GETThe Emerald Dreamcatcher#, #GETTwisted Hatred#." },
			[9] = { str = "Aceite #GETThe Road to Darnassus# da patrulha montada (se ela estiver la) perto de #COORD[56,57]#", x = 56, y = 57, zone = "Teldrassil" },
			[10] = { str = "#DOZenn's Bidding# mobs ao leste de Dolanaar" },
			[11] = { str = "#DOCrown of the Earth pt.3# em #COORD[63,58]#.", x = 63, y = 58, zone = "Teldrassil" },
			[12] = { str = "Entregue #INA Troubling Breeze# em #COORD[66,58]# aceite #GETGnarlpine Corruption#.", x = 66, y = 58, zone = "Teldrassil" },
			[13] = { str = "#DOThe Emerald Dreamcatcher# #COORD[68,59]#", x = 68, y = 59, zone = "Teldrassil" },
			[14] = { str = "Entregue #INZenn's Bidding# em #COORD[60,56]# depois va ate a torre de Dolanaar e aceite #GETSeek Redemption!#.", x = 60, y = 56, zone = "Teldrassil" },
			[15] = { str = "Faca #DOSeek Redemption!# #ITEM(cones debaixo das arvores)# enquanto vai ate #COORD[60,68]# e entregue #INDenalan's Earth#", x = 60, y = 68, zone = "Teldrassil" },
			[16] = { str = "Aceite e faca #GETTimberling Seeds# (mobs por todo o lago) e #GETTimberling Sprouts# (sementes perto das arvores no lago)" },
			[17] = { str = "Entregue essas de volta e aceite #GETRellian Greenspyre#" },
			[18] = { str = "Entregue #INCrown of the Earth pt.3# aceite #GETCrown of the Earth pt.4#" },
			[19] = { str = "Entregue #INGnarlpine Corruption# aceite #GETThe Relics of Wakening#." },
			[20] = { str = "Entregue #INThe Emerald Dreamcatcher# aceite #GETFerocitas the Dream Eater#" },
			[21] = { str = "Voce deve estar level 8 agora. Pegue novas skills." },
			[22] = { str = "Termine #DOSeek Redemption!# Depois va ao Norte de Starbreeze." },
			[23] = { str = "Faca #DOFerocitas the Dream Eater# mobs perto de #COORD[68,53]#", x = 68, y = 53, zone = "Teldrassil" },
			[24] = { str = "Morra de proposito pra aparecer em Dolanaar" },
			[25] = { str = "Va ate a Fel Rock Cave em #COORD[54,52]# e faca #DOTwisted Hatred# voce tambem pode esperar ate estar level 10 pra fazer e ficar mais facil.", x = 54, y = 52, zone = "Teldrassil" },
			[26] = { str = "Entregue #INFerocitas the Dream Eater# e #INTwisted Hatred at Dolanaar#." },
			[27] = { str = "Faca #DOThe Road to Darnassus# em #COORD[46,52]#", x = 46, y = 52, zone = "Teldrassil" },
			[28] = { str = "Va fazer #DOThe Relics of Wakening# em #COORD[44,57]# na caverna", x = 44, y = 57, zone = "Teldrassil" },
			[29] = { str = "Aceite #GETThe Sleeping Druid# la dentro, mate shamans pra conseguir, entregue." },
			[30] = { str = "Aceite #GETDruid of the Claw# faca em #COORD[45,58]#", x = 45, y = 58, zone = "Teldrassil" },
			[31] = { str = "Va ao sul e faca #DOCrown of the Earth pt.4# em #COORD[42,67]#.", x = 42, y = 67, zone = "Teldrassil" },
			[32] = { str = "Morra pra aparecer em Dolanaar" },
			[33] = { str = "Entregue #INCrown of the Earth pt.4# aceite #GETCrown of the Earth pt.5#." },
			[34] = { str = "Entregue #INThe Road to Darnassus# logo oeste da torre pra patrulheira" },
			[35] = { str = "Entregue #INThe Relics of Wakening# aceite #GETUrsal the Mauler#" },
			[36] = { str = "Voce deve estar level 10 agora, se nao grinde ate level 10" },
			[37] = { str = "Va ate Darnassus e entregue #INRellian Greenspyre# em #COORD[38,21]# aceite #GETTumors#", x = 38, y = 21, zone = "Teldrassil" },
			[38] = { str = "Pegue #GETNessa Shadowsong# em #COORD[70,45]# em Darnassus", x = 70, y = 45, zone = "Teldrassil" },
			[39] = { str = "Pegue #GETThe Glowing Fruit# em #COORD[42,76]#.", x = 42, y = 76, zone = "Teldrassil" },
			[40] = { str = "Faca #DOUrsal the Mauler# em #COORD[38,77]#.", x = 38, y = 77, zone = "Teldrassil" },
			[41] = { str = "Morra pra aparecer na frente de Darnassus." },
			[42] = { str = "#DOTumors# em #COORD[42,42]#", x = 42, y = 42, zone = "Teldrassil" },
			[43] = { str = "#DOCrown of the Earth pt.5# em #COORD[38,34]#", x = 38, y = 34, zone = "Teldrassil" },
			[44] = { str = "Aceite #GETThe Enchanted Glade# em #COORD[38,34]#. Depois faca em #COORD[35,43]#. Entregue de volta", x = 38, y = 34, zone = "Teldrassil" },
			[45] = { str = "Aceite #GETTeldrassil#." },
			[46] = { str = "Volte pra Darnassus, entregue #INTumors# em #COORD[38,21]# aceite #GETReturn to Denalan#.", x = 38, y = 21, zone = "Teldrassil" },
			[47] = { str = "Entregue #INTeldrassil# no topo da torre em #COORD[36,12]# aceite #GETGrove of the Ancients#.", x = 36, y = 12, zone = "Teldrassil" },
			[48] = { str = "Use Hearthstone pra Dolanaar." },
			[49] = { str = "Entregue #INCrown of the Earth pt.5# aceite #GETCrown of the Earth pt.6.#" },
			[50] = { str = "Entregue #INUrsal the Mauler#." },
			[51] = { str = "Va SE ate #COORD[60,68]# Entregue #INReturn to Denalan# aceite #GETOakenscowl elite#.", x = 60, y = 68, zone = "Teldrassil" },
			[52] = { str = "Entregue #INGlowing Fruit#" },
			[53] = { str = "Va matar #NPCOakenscowl# em #COORD[53,74]#. Entregue em #COORD[60,68]#.", x = 53, y = 74, zone = "Teldrassil" },
			[54] = { str = "Va ate Darnassus, se voce nao esta a 1100xp do level 12 ainda grinde em #NPCHarpies# ao Norte da entrada de Darnassus." },
			[55] = { str = "Entregue #INCrown of the Earth pt.6# 34,8 em Darnassus", x = 34, y = 8, zone = "Darnassus" },
			[56] = { str = "Pegue skills e passe pelo portao em #COORD[30,41]#", x = 30, y = 41, zone = "Darnassus" },
			[57] = { str = "Va direto em frente ate #COORD[56,92]#, entregue #INNessa Shadowsong# aceite #GETThe Bounty of Teldrassil# va entregar pro cara do hippogryph em #COORD[58,93]# pra ganhar uma carona gratis e aceite #GETFlight to Auberdine#.", x = 56, y = 92, zone = "Teldrassil" },
		--L- Turn in #INFlight to Auberdine# accept #GETReturn to Nessa# I fly back to Darnassus to get it done. She's right off the edge of the dock.
		}
	},
}