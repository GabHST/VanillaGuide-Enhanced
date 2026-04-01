--[[--------------------------------------------------
003_Alliance_12to20.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 12 to Lvl 20
	1.04.1
		-- First Release
			Alliance's Guide
			from level 12 to lever 20
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
Table_003_Alliance_12to20 = {
	[1214] = {
		title = "12-14 Darkshore",
		--L- Playtested and corrected
		items = {
			[1] = { str = "12-14 Darkshore" },
			[2] = { str = "Pegue #GETWashed Ashore pt.1# de #NPC# perto do flightmaster, e #GETFor Love Eternal# nas docas em #COORD[35,43]#.", x = 35, y = 43, zone = "Darkshore" },
			[3] = { str = "Pegue o flight path tambem, a menos que voce tenha vindo de Teldrassil. Sete Auberdine como seu Hearthstone." },
			[4] = { str = "Aceite #GETBuzzbox 827# no andar de cima da Inn, #GETCave Mushrooms# na frente da Inn e #GETThe Red Crystal# perto da ponte" },
			[5] = { str = "Compre algumas bolsas de 6 slots se voce ainda nao encontrou 3 em #COORD[37,40]#, depois aceite #GETBashal'Aran pt.1# e #GETTools of the Highborne#.", x = 37, y = 40, zone = "Darkshore" },
			[6] = { str = "Va para o sul pela ponte, aceite #GETPlagued Lands# e #GETHow Big a Threat? pt.1#. Pule #SKIPA Lost Master# por enquanto." },
			[7] = { str = "Va fazer #DOWashed Ashore pt.1# em #COORD[36,50]# grinde do caminho da cidade ate la para pegar #ITEM[Crawler Legs]# para #DOBuzzbox 827#.", x = 36, y = 50, zone = "Darkshore" },
			[8] = { str = "Entregue #INBuzzbox 827# em #COORD[36,46]# aceite #GETBuzzbox 411#, e entregue #INWashed Ashore pt.1# aceite #GETWashed Ashore pt.2#.", x = 36, y = 46, zone = "Darkshore" },
			[9] = { str = "Nade ate la e faca #DOWashed Ashore pt.2# em #COORD[32,46]#. Entregue.", x = 32, y = 46, zone = "Darkshore" },
			[10] = { str = "Faca #DOBuzzbox 411# matando #NPCDarkshore Threshers# na agua. Entregue em #COORD[42,29]# e aceite #GETBuzzbox 323#. Voce pode ter que matar alguns mobs para chegar no nivel 13 para aceitar a quest.", x = 42, y = 29, zone = "Darkshore" },
			[11] = { str = "Pare em #COORD[42,32]# aceite #GETBeached Sea Creature#.", x = 42, y = 32, zone = "Darkshore" },
			[12] = { str = "Entregue #INBashal'Aran pt.1# em #COORD[44,36]# grindando no caminho, aceite #GETBashal'Aran pt.2# matando #NPCGrells# ao redor dele para pegar #ITEM[Grell Earring]#.", x = 44, y = 36, zone = "Darkshore" },
			[13] = { str = "Entregue #INBashal'Aran pt.2# em #COORD[44,36]# aceite #GETBashal'Aran pt.3#", x = 44, y = 36, zone = "Darkshore" },
			[14] = { str = "Faca #DOBashal'Aran pt.3# matando #NPCDeth'ryll Satyr# e entregue, aceite #GETBashal'Aran pt.4# " },
			[15] = { str = "Grinde ate #COORD[47,48]# e faca #DOThe Red Crystal#", x = 47, y = 48, zone = "Darkshore" },
			[16] = { str = "Grinde ate #COORD[40,53]# para encontrar o acampamento de #DOHow Big a Threat? pt.1#", x = 40, y = 53, zone = "Darkshore" },
			[17] = { str = "Desga ate #NPCAmeth'Aran# em #COORD[40,59]# e aceite #GETThe Fall of Ameth'Aran#.", x = 40, y = 59, zone = "Darkshore" },
			[18] = { str = "Faca #DOThe Fall of Ameth'Aran#, #DOBashal'Aran pt.4#, #DOTools of the Highborne# e #DOFor Love Eternal# nessa area." },
			[19] = { str = "Entregue #INThe Fall of Ameth'Aran# em #COORD[40,59]#.", x = 40, y = 59, zone = "Darkshore" },
			[20] = { str = "Atravesse a estrada de Amath'Aran, e faca #DOPlagued Lands#." },
			[21] = { str = "Use Hearthstone para Auberdine, entregue #INFor Love Eternal#, #INBeached Sea Creature#, #INThe Red Crystal#, aceite #GETAs Water Cascades#" },
			[22] = { str = "Encha o #ITEM[Empty Water Tube]# no Moonwell para #DOAs Water Cascades#, entregue #INPlagued Lands#, aceite #GETCleansing the Infected#, entregue #INHow Big a Threat? pt.1# aceite #GETHow Big a Threat? Pt.2# e #GETThundris Windweaver#. Aceite #GETThe Tower of Althalaxx pt.1# no andar de cima." },
			[23] = { str = "Va na casa do mercador, entregue #INTools of the Highborne# e #INThundris Windweaver#, aceite #GETThe Cliffspring River#." },
			[24] = { str = "Voce deve estar no nivel 14 agora, pegue suas skills em Darnassus e aceite a quest #GETTrouble In Darkshore# de #NPCChief Archaeologist Greywhisker# em #COORD[23,64]#" },
		}
	},
	[1417] = {
		title = "14-17 Darkshore",
		--L- Playtested and corrected
		items = {
			[1] = { str = "14-17 Darkshore" },
			[2] = { str = "Entregue #INBashal'Aran pt.4# em #COORD[44,36]#.", x = 44, y = 36, zone = "Darkshore" },
			[3] = { str = "Mate #NPCMoonstalkers# e #NPCRabid Thistle Bears# ao redor de #COORD[48,30]#, para #DOCleansing the Infected# e #DOBuzzbox 323#, depois va ate #COORD[50,25]# para #DOThe Cliffspring River#.", x = 50, y = 25, zone = "Darkshore" },
			[4] = { str = "Aceite #GETBeached Sea Turtle# em #COORD[44,20]#", x = 44, y = 20, zone = "Darkshore" },
			[5] = { str = "Entregue #INBuzzbox 323# em #COORD[51,25]# aceite #GETBuzzbox 525#", x = 51, y = 25, zone = "Darkshore" },
			[6] = { str = "Va ate #COORD[55,33]# e faca #DOCave Mushrooms#.", x = 55, y = 33, zone = "Darkshore" },
			[7] = { str = "Va para o sul ate #COORD[47,48]# para entregar #INAs Water Cascades#, aceite #GETThe Fragments Within#.", x = 47, y = 48, zone = "Darkshore" },
			[8] = { str = "Grinde ate #COORD[40,53]# e faca #DOHow Big a Threat? Pt.2#", x = 40, y = 53, zone = "Darkshore" },
			[9] = { str = "Va ate #COORD[37,62]# e aceite #GETBeached Sea Turtle#", x = 37, y = 62, zone = "Darkshore" },
			[10] = { str = "Continue para o sul e aceite #GETBeached Sea Creature# em #COORD[36,70]#.", x = 36, y = 70, zone = "Darkshore" },
			[11] = { str = "Mate #NPCGrizzled Thistle Bear# ao sul de Grove of the Ancients para #DOBuzzbox 525# depois entregue em #COORD[41,81]#.", x = 41, y = 81, zone = "Darkshore" },
			[12] = { str = "Va ate #COORD[32,80]# e pegue #GETBeached Sea Creature#.", x = 32, y = 80, zone = "Darkshore" },
			[13] = { str = "Use Hearthstone para Auberdine, e entregue todas as quests de #INBeached Sea Creature#." },
			[14] = { str = "Aceite #GETFruit of the Sea#, entregue #INCave Mushrooms# e aceite #GETOnu#, entregue #INThe Fragments Within#, entregue #INTrouble In Darkshore# e aceite #GETThe Absent Minded Prospector#" },
			[15] = { str = "Entregue #INThe Cliffspring River#, aceite #GETThe Blackwood Corrupted#, entregue #INCleansing the Infected# e aceite #GETTharnariun's Hope#, entregue #INHow Big a Threat? pt.2# aceite #GETA Lost Master#" },
			[16] = { str = "Encha o #ITEM[Empty Cleansing Bowl]# no Moonwell" }, -- Accept #GETWANTED: Murkdeep!# from the wanted sign next to the inn.
		--L-	[13] = { str = "Stop at #COORD[35,74]# and do #DOWANTED: Murkdeep!# you have to clear the camp, then the 2 waves from the ocean, then he comes. He's lvl 19 If you have trouble with him just kite him.", x = 35, y = 74, zone = "Darkshore" },
			[17] = { str = "Pegue #ITEM[Grains]# para #DOThe Blackwood Corrupted# em #COORD[50,35]#.", x = 50, y = 35, zone = "Darkshore" },
			[18] = { str = "Va fazer #DOTharnariun's Hope# em #COORD[52,37]#.", x = 52, y = 37, zone = "Darkshore" },
			[19] = { str = "Pegue #ITEM[Nuts]# em #COORD[52,34]#, e #ITEM[Fruit]# em #COORD[52,33]# para #DOThe Blackwood Corrupted#.", x = 52, y = 34, zone = "Darkshore" },
			[20] = { str = "Limpe ao redor da fogueira em #COORD[52,33]# e coloque a comida. Mate #NPCXabraxxis#, e loote o #ITEM[Talisman]# do chao ao lado dele.", x = 52, y = 33, zone = "Darkshore" },
			[21] = { str = "Va ate #COORD[55,25]# entregue #INThe Tower of Althalaxx pt.1# Aceite #GETThe Tower of Althalaxx pt.2#, e faca matando mobs fora da torre.", x = 55, y = 25, zone = "Darkshore" },
			[22] = { str = "Entregue #INThe Tower of Althalaxx pt.2#, e aceite #GETThe Tower of Althalaxx pt.3#" },
			[23] = { str = "Va ate #COORD[53,18]# e aceite #GETBeached Sea Creature#", x = 53, y = 18, zone = "Darkshore" },
			[24] = { str = "Faca #DOFruit of the Sea# nos #NPCCrawlers# aqui." },
			[25] = { str = "Use Hearthstone para Auberdine." },
			[26] = { str = "Entregue #INBeached Sea Creature#, #INFruit of the Sea#, #INThe Blackwood Corrupted# e #INTharnariun's Hope#." },
			[27] = { str = "Pegue o barco para Menethil Harbor, o pier da esquerda/sul." },
			[28] = { str = "Se voce tem o flight path para Thelsamar (Loch Modan), voe pra la, se nao, va ate #COORD[54,73]#, e siga o caminho da montanha para Loch Modan.", x = 54, y = 73, zone = "Wetlands" },
		}
	},
	[1718] = {
		title = "17-18 Loch Modan",
		--L- Playtested and corrected
		items = {
			[1] = { str = "17-18 Loch Modan" },
			[2] = { str = "Va ate o bunker da Algaz Station em #COORD[24,18]#, e aceite #GETFilthy Paws# e #GETStormpike's Order#.", x = 24, y = 18, zone = "Loch Modan" },
			[3] = { str = "Va ate a caverna em #COORD[35,18]# e faca #DOFilthy Paws#, #ITEM[Miner's Gear]# sao lootados do chao. Entregue de volta no bunker.", x = 35, y = 18, zone = "Loch Modan" },
			[4] = { str = "Va ate Thelsamar em #COORD[33,50]#, e pegue o flight path se voce nao tem. NAO sete como seu Hearthstone.", x = 33, y = 50, zone = "Loch Modan" },
			[5] = { str = "Aceite #GETIronband's Excavation# na ultima casa da direita, va entregar em #COORD[65,67]#, aceite #GETGathering Idols# e #GETExcavation Progress Report#.", x = 65, y = 67, zone = "Loch Modan" },
			[6] = { str = "Faca #DOGathering Idols# no local da escavacao logo a oeste, depois entregue de volta." },
			[7] = { str = "Contorne o local da escavacao, e va ate a casa em #COORD[82,62]#.", x = 82, y = 62, zone = "Loch Modan" },
			[8] = { str = "Vire a direita quando entrar, e aceite #GETCrocolisk Hunting#, depois va pro outro lado e aceite #GETA Hunter's Boast#" },
			[9] = { str = "Faca #DOA Hunter's Boast# matando #NPCMountain Buzzard# na frente da casa." },
			[10] = { str = "Entregue #INA Hunter's Boast# aceite #GETA Hunter's Challenge#. Mate #NPCElder Mountain Boar# por volta de #COORD[76,46]#.", x = 76, y = 46, zone = "Loch Modan" },
			[11] = { str = "Entregue #INA Hunter's Challenge#, aceite #GETVyrin's Revenge pt.1#." },
			[12] = { str = "Va ate #COORD[64,48]# e aceite #GETBingles' Missing Supplies#. Faca #DOCrocolisk Hunting# aqui na margem, e na ilha em #COORD[54,38]# se necessario.", x = 64, y = 48, zone = "Loch Modan" },
			[13] = { str = "Pegue todas as partes de #DOBingles' Missing Supplies#. #ITEM[Blastencapper]# em #COORD[54,27]#, #ITEM[Wrench]# em #COORD[49,30]#, #ITEM[Hammer]# em #COORD[52,24]#, e #ITEM[Screwdriver]# em #COORD[48,21]#.", x = 54, y = 27, zone = "Loch Modan" },
			[14] = { str = "Acesse a barragem pelo lado oeste e aceite #GETA Dark Threat Looms pt.1# em #COORD[46,14]#, depois saia pela entrada leste e entregue no #ITEMSuspicious Barrel#, aceite #GETA Dark Threat Looms pt.2#", x = 45, y = 13, zone = "Loch Modan" },
			[15] = { str = "Volte e entregue #INA Dark Threat Looms pt.2# em #COORD[46,14]#, PULE #SKIPA Dark Threat Looms pt.3#.", x = 45, y = 13, zone = "Loch Modan" },
			[16] = { str = "Desga ate Thelsamar e entregue #INExcavation Progress Report# em #COORD[37,47]#, aceite #GETReport to Ironforge#.", x = 37, y = 47, zone = "Loch Modan" },
			[17] = { str = "Va ate #COORD[38,61]# e faca #DOVyrin's Revenge pt.1#.", x = 38, y = 61, zone = "Loch Modan" },
			[18] = { str = "Volte para a casa em #COORD[83,62]# entregue #INCrocolisk Hunting# e #INVyrin's Revenge pt.1#, aceite #GETWyrin's Revenge pt.2#, e entregue.", x = 83, y = 62, zone = "Loch Modan" },
			[19] = { str = "Va ate #COORD[63,47]# e entregue #INBingles' Missing Supplies#.", x = 63, y = 47, zone = "Loch Modan" },
			[20] = { str = "Se voce tem o flight path de Ironforge, voe pra la, se nao, desga ate #COORD[22,70]# e siga o caminho para o norte ate Dun Morogh", x = 22, y = 70, zone = "Loch Modan" },
			[21] = { str = "Siga pela estrada ate Ironforge em #COORD[53,35]#.", x = 53, y = 35, zone = "Dun Morogh" },
			[22] = { str = "Pegue o treinamento de armas de Ironforge em #COORD[61,89]#, e pegue o flight path em #COORD[55,38]#. Entregue #INReport to Ironforge# em #COORD[74,12]#, PULE #SKIPPowder to Ironband#.", x = 74, y = 12, zone = "Ironforge" },
			[23] = { str = "Pegue o tram para Stormwind em #COORD[76,51]#.", x = 76, y = 51, zone = "Ironforge" },
			[24] = { str = "Entregue #INStormpike's Order# em #COORD[58,16]# em Stormwind.", x = 58, y = 16, zone = "Stormwind City" },
			[25] = { str = "Pegue o treinamento de armas de Stormwind em #COORD[57,57]#, e o flight path em #COORD[66,62]#.", x = 66, y = 62, zone = "Stormwind City" },
			[26] = { str = "Saia de Stormwind, depois va ate #COORD[91,73]# em Elwynn Forest, e entre em Redridge Mountains", x = 91, y = 73, zone = "Elwynn Forest" },
		}
	},
	[1820] = {
		title = "18-20 Redridge Mountains",
		--L- Playtested and corrected
		items = {
			[1] = { str = "18-20 Redridge Mountains" },
			[2] = { str = "Aceite #GETEncroaching Gnolls# de #NPCGuard Parker# em #COORD[15,71]#.", x = 15, y = 71, zone = "Redridge Mountains" },
			[3] = { str = "Entregue #INEncroaching Gnolls# em #COORD[30,60]#, aceite #GETAssessing the Threat#. Pegue o flight path.", x = 30, y = 60, zone = "Redridge Mountains" },
			[4] = { str = "Atravesse a ponte, aceite #GETBlackrock Menace#, #GETThe Lost Tools# e #GETThe Everstill Bridge#. PULE #SKIPThe Price of Shoes#" },
			[5] = { str = "Aceite #GETHilary's Necklace# no deck, aceite #GETSelling Fish# perto do galpao fora da Inn. Entre na Inn e aceite #GETA Free Lunch#, PULE #SKIPDry Times#." },
			[6] = { str = "Va a oeste de Lakeshire e aceite #GETRedridge Goulash# dentro da casa em #COORD[23,44]#.", x = 23, y = 44, zone = "Redridge Mountains" },
			[7] = { str = "Pegue 5 #ITEM[Great Goretusk Snouts]# para #DORedridge Goulash# logo a oeste das casas. Cuidado com #NPCBellygrub#. Loote #ITEM[Hillary's Necklace]# do #ITEMGlinting Mud Pile# debaixo d'agua em #COORD[19,52]#.", x = 19, y = 52, zone = "Redridge Mountains" },
			[8] = { str = "Va ate #COORD[42,55]# para #DOThe Lost Tools# e #DOSelling Fish#. Guarde pelo menos 8 #ITEM[Murloc Fins]# para uma quest futura.", x = 42, y = 55, zone = "Redridge Mountains" },
			[9] = { str = "Entregue #INThe Lost Tools# perto da ponte, #INHilary's Necklace# no deck, e #INSelling Fish# perto do galpao. Voce deve estar na metade do caminho para o nivel 20 nesse ponto." },
			[10] = { str = "Entregue #INA Free Lunch# em #COORD[15,71]#, aceite #GETVisit the Herbalist#.", x = 15, y = 71, zone = "Redridge Mountains" },
			[11] = { str = "Mate #NPCSpiders# para #DORedridge Goulash# entre #COORD[15,71]# e #COORD[33,76]#.", x = 33, y = 76, zone = "Redridge Mountains" },
			[12] = { str = "Faca #DOAssessing the Thread# em #COORD[31,84]# e #COORD[43,72]#.", x = 43, y = 72, zone = "Redridge Mountains" },
			[13] = { str = "Mate #NPCCondors# para #DORedridge Goulash# por volta de #COORD[57,76]#", x = 57, y = 73, zone = "Redridge Mountains" },
			[14] = { str = "Volte para Lakeshire, entregue #INAssessing the Threat# perto do flight path. Va ate as duas casas a oeste de Lakeshire, em #COORD[23,46]# e entregue #INRedridge Goulash# e #INVisit the Herbalist#, aceite #GETDelivering Daffodils#", x = 23, y = 46, zone = "Redridge Mountains" },
			[15] = { str = "Entre na Inn e entregue #INDelivering Daffodils#. Voce deve estar no nivel 20 agora, aceite #GETMurloc Poachers# na frente do galpao, se voce ainda tem as #ITEM[Murloc Fins]# na sua bolsa, entregue." },
			[16] = { str = "Mate #NPCGnolls# ao norte de Lakeshire para #DOThe Everstill Bridge#, depois entregue." },
			[17] = { str = "Use Hearthstone para Auberdine. Voce deve estar no nivel 20 nesse ponto e pelo menos na metade do caminho para o nivel 21." },
		}
	},
}