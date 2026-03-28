--[[--------------------------------------------------
003_Horde_12to20.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 12 to Lvl 20
    1.04.1
        -- First Release
            Horde's Guide
            from level 12 to lever 20
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_003_Horde_12to20 = {
-----------12-15 Barrens
	--[101] = {
	[1215] = {
		title = "12-15 Barrens",
		--n = "12-15 Barrens",
		--pID = 13, nID = 102,
		--itemCount = 34,
		items = {
			[1] = { str = "12-15 Barrens" },
			[2] = { str = "Entregue #INConscript of the Horde# em #COORD[62,19]# nas Barrens, aceite #GETCrossroads Conscription# ", x = 62, y = 19, zone = "The Barrens" },
			[3] = { str = "Depois entregue #INAk'Zeloth# #COORD[62,20]# I SKIP #NPCThe Demon Seed# ", x = 62, y = 20, zone = "The Barrens" },
			[4] = { str = "Va ate XRs (Crossroads) em #COORD[52,30]#.", x = 52, y = 30, zone = "The Barrens" },
			[5] = { str = "^-'" },
			[6] = { str = "Ao chegar em XRs em #COORD[52,30]# entregue #INCrossroads Conscription# Depois aceite todas as quests em XRs (que incluem: #GETMeats to Orgrimmar# #GETPlainstrider Menace#   #GETThe Forgotten Pools# #GETRaptor Thieves# #GETWharfmaster Dizzywig# #GETFungal Spores# #GETDisrupt the Attacks# #GETSupplies for the Crossroads# e #GETHarpy Raiders# no topo da torre de vigia).  Entregue #INMeats to Orgrimmar# i SKIP #NPCRide to Orgrimmar# ", x = 52, y = 30, zone = "The Barrens" },
			[7] = { str = "Sete seu Hearthstone em XRs." },
			[8] = { str = "Pegue o Flight Path" },
			[9] = { str = "Depois va fazer:  #DODisrupt the Attacks# junto com #DOPlainstrider Menace# e #DORaptor Thieves# perto de #COORD[54,26]#.  NOTA: Se voce encontrar #GETChen's Empty Keg# aceite.", x = 54, y = 26, zone = "The Barrens" },
			[10] = { str = "Quando #DODisrupt the Attacks# estiver completa va entregar em #COORD[52,30]# e aceite #GETSupplies for the Crossroads ", x = 52, y = 30, zone = "The Barrens" },
			[11] = { str = "Va fazer #DOSupplies for the Crossroads# em #COORD[56,26]#, depois volte para Thork e aceite #GETThe Disruption Ends#, voce vai voltar para os razormanes mais uma vez.", x = 56, y = 26, zone = "The Barrens" },
			[12] = { str = "Se voce encontrar #GETChen's Empty Keg# aceite." },
			[13] = { str = "Quando #DOPlainstrider Menace# e #DOThe Disruption Ends# estiverem completas..." },
			[14] = { str = "Va ate Ratchet, pegue o Flight Path la #COORD[63,37]# e aceite #GETRaptor Horns# #GETSamophlange# #GETSouthsea Freebooters#  #GETThe Guns of Northwatch# .  Entregue #INChen's Empty Keg# se voce tiver ... aceite a proxima parte, e foque em fazer essa quest enquanto estiver nas Barrens.", x = 63, y = 37, zone = "The Barrens" },
			[15] = { str = "Pegue a quest #GETWANTED: Baron Longshore# (o cartaz de procurado perto do banco)" },
			[16] = { str = "Entregue #INWharfmaster Dizzywig# (goblin nas docas) aceite #GETMiner's Fortune# " },
			[17] = { str = "Depois va fazer #DOSouthsea Freebooters# junto com #DOWANTED: Baron Longshore# (pela costa ao sul de Ratchet)" },
			[18] = { str = "Quando essas estiverem prontas, entregue em #COORD[63,36]#, aceite novas, depois va fazer:", x = 63, y = 36, zone = "The Barrens" },
			[19] = { str = "#INThe Missing Shipment# (apenas entregue isso no goblin nas docas) aceite #GETThe Missing Shipment# part2" },
			[20] = { str = "Volte para Gazlowe #COORD[63,36]#, entregue #INThe Missing Shipment# part2 aceite #GETStolen Booty# ", x = 63, y = 36, zone = "The Barrens" },
			[21] = { str = "Depois va fazer #DOStolen Booty# ao sul de Ratchet. Telescopic Lens=#COORD[64,49]#, e Shipment of Boots=#COORD[63,50]#", x = 63, y = 50, zone = "The Barrens" },
			[22] = { str = "Quando #DOStolen Booty# estiver completa use Hearthstone para XRs. (nao entregue ainda)" },
			[23] = { str = "Entregue #INThe Disruption Ends# e #INSupplies for the Crossroads# " },
			[24] = { str = "Entregue #INPlainstrider Menace# (deveria estar pronta agora) aceite #GETThe Zhevra# .  Tambem aceite #GETConsumed by Hatred# e #GETLost in Battle# " },
			[25] = { str = "Nesse ponto, certifique-se de ter tres/quatro bolsas de 6 slots, se nao tiver, compre no vendedor de bolsas." },
			[26] = { str = "Va para oeste de XRs, va ate o cara na cabana... em #COORD[45,28]#", x = 45, y = 28, zone = "The Barrens" },
			[27] = { str = "Aceite: #GETKolkar Leaders# e #GETCentaur Bracers# " },
			[28] = { str = "Depois comece a fazer:" },
			[29] = { str = "#DOKolkar Leaders# #DOCentaur Bracers# #DORaptor Thieves# #DOThe Zhevra# #DOFungal Spores#  e  #DOThe Forgotten Pools# (todas essas sao feitas um pouco ao norte de onde voce esta)" },
			[30] = { str = "Quando #DOKolkar Leaders# estiver pronta.. Barak esta em #COORD[43,24]#.", x = 43, y = 24, zone = "The Barrens" },
			[31] = { str = "Va fazer: #DOHarpy Raiders# em #COORD[38,17]#", x = 38, y = 17, zone = "The Barrens" },
			[32] = { str = "Quando #DOHarpy Raiders# estiver pronta, grinde seu caminho para baixo ate Stonetalon Mountains, em #COORD[35,27]# nas Barrens...", x = 35, y = 27, zone = "The Barrens" },
			--[33] = { str = "." },
			--[34] = { str = "." },
		}
	},

-----------15-16 Stonetalon Mountains
	--[102] = {
	[1516] = {
		title = "15-16 Stonetalon Mountains",
		--n = "15-16 Stonetalon Mountains",
		--pID = 101, nID = 103,
		--itemCount = 9,
		items = {
			[1] = { str = "15-16 Stonetalon Mountains" },
			[2] = { str = "Aceite #GETGoblin Invaders# (voce deveria primeiro aceitar #GETSpirits of Stonetalon# de Zor Lonetree em Orgrimmar, mas essa e uma quest nivel 13. Pegue se voce estiver em Orgrimmar nesse nivel) e #GETAvenge My Village# em #COORD[35,27]# nas Barrens", x = 35, y = 27, zone = "The Barrens" },
			[3] = { str = "Va fazer: #DOAvenge My Village# depois entregue." },
			[4] = { str = "Depois faca: #DOKill Grundig Darkcloud# em #COORD[73,86]#.", x = 73, y = 86, zone = "Stonetalon Mountains" },
			[5] = { str = "NOTA: Eu geralmente pulo a quest de escolta (#DOProtect Kaya# #COORD[73,85]# na cabana), essa quest pode ser um pouco dificil, mate o Sorcerer primeiro que aparece durante a batalha que voce tem que lutar.  Se estiver muito dificil pra voce, pode pular.", x = 73, y = 85, zone = "Stonetalon Mountains" },
			[6] = { str = "Entregue #INKill Grundig Darkcloud# e #INProtect Kaya# se voce fez, em #COORD[35,28]# nas Barrens ... aceite #GETKaya's Alive# ", x = 35, y = 28, zone = "The Barrens" },
			[7] = { str = "Depois volte para as Barrens.." },
			--[8] = { str = "." },
			--[9] = { str = "." },
		}
	},

-----------16-20 Barrens PART1
	--[103] = {
	--[1620] = {
	[1618] = {
		title = "16-20 Barrens (part 1)",
		--n = "16-20 Barrens Part 1",
		--pID = 102, nID = 104,
		--itemCount = 37,
		items = {
			[1] = { str = "16-20 Barrens Part 1" },
			[2] = { str = "Grinde seu caminho de volta ate o cara na cabana em #COORD[45,28]#", x = 45, y = 28, zone = "The Barrens" },
			[3] = { str = "Entregue #INKolkar Leaders# aceite #GETVerog the Dervish# .  Tambem entregue #INCentaur Bracers# se estiver pronta, se nao, nao se preocupe." },
			[4] = { str = "Certifique-se de terminar #DORaptor Thieves# #DOThe Zhevra# #DOFungal Spores# e #DOThe Forgotten Pools# antes de voltar para XRs." },
			[5] = { str = "Va ate Cross Roads, em #COORD[52,30]#", x = 52, y = 30, zone = "The Barrens" },
			[6] = { str = "Entregue TODAS as quests, pegue TODAS as novas..." },
			[7] = { str = "Depois faca #GETApothecary Zamah# que te manda ir ate Thunder Bluff (TB) na caverna do spirit rise. Faca essas pelo caminho:" },
			[8] = { str = "Grinde seu caminho para o sul ate #COORD[49,50]#, e faca #DOLost in Battle# (Esposa do Manrik) Ela esta morta perto da cabana, a oeste da ponte.", x = 49, y = 50, zone = "The Barrens" },
			[9] = { str = "Va ate Camp Taurajo (CT) aceite #GETTribes at War# do gnoll na jaula #COORD[44,59]#, e pegue o FP la. ", x = 44, y = 59, zone = "The Barrens" },
			[10] = { str = "Depois faca #DOApothecary Zamah# que te manda ir ate Thunder Bluff (TB) em Mulgore, em #COORD[39,27]#.", x = 39, y = 27, zone = "Mulgore" },
			[11] = { str = "Ao chegar em TB, va ate o #NPCWeapon Master# #COORD[40,62]# e pegue as habilidades de arma que voce precisa pra sua classe." },
			[12] = { str = "Pegue novas magias/habilidades." },
			[13] = { str = "Entregue #INApothecary Zamah# na caverna abaixo do spirit rise em #COORD[29,29]#.", x = 29, y = 29, zone = "The Barrens" },
			[14] = { str = "Va ate o cara de first aid no spirit rise para upar first aid." },
			[15] = { str = "Suba ate a torre no meio da cidade para pegar o FP, mas NAO voe de volta para XRs." },
			[16] = { str = "Use Hearthstone de volta para XRs." },
			[17] = { str = "Entregue #INLost in Battle# " },
			[18] = { str = "Depois va para noroeste de XRs e faca #DOProwlers of the Barrens# #COORD[37,20]#", x = 37, y = 20, zone = "The Barrens" },
			[19] = { str = "Depois #DOHarpy Lieutenants# #COORD[38,14]#", x = 38, y = 14, zone = "The Barrens" },
			[20] = { str = "Depois grinde seu caminho para leste e faca #DOSamophlange# #COORD[52,11]# complete toda a cadeia de quests, que no final te manda matar o goblin pela chave. " },
			[21] = { str = "Depois va para leste ate Sludge Fen e faca #DOIgnition# (56.8)", x = 56, y = 8, zone = "The Barrens" },
			[22] = { str = "Depois faca #DOThe Escape# (#VIDEOVeja o video de como eu faco Ignition e Escape#)" },
			[23] = { str = "Depois va para nordeste e faca #DOMiner's Fortune# (61.5)", x = 61, y = 5, zone = "The Barrens" },
			[24] = { str = "Depois grinde seu caminho para o sul ate Ratchet #COORD[63,37]#...", x = 63, y = 37, zone = "The Barrens" },
			[25] = { str = "Entregue #INStolen Booty#  #INSamophlange# #INThe Escape# ... aceite #GETZiz Fizziks# ... e PULE #NPCWenikee Boltbucket# " },
			[26] = { str = "Entregue #INMiner's Fortune# " },
			[27] = { str = "Depois va para oeste de Ratchet e faca #DOThe Stagnant Oasis# e #DOVerog the Dervish# em #COORD[54,43]#", x = 54, y = 43, zone = "The Barrens" },
			[28] = { str = "Depois va ate XRs #COORD[52,30]#..", x = 52, y = 30, zone = "The Barrens" },
			[29] = { str = "Entregue #INProwlers of the Barrens# #INHarpy Lieutenants# e #INThe Stagnant Oasis# ... aceite #GETAltered Beings# #GETEcheyakee# #GETSerena Bloodfeather# #GETReport to Kadrak# e #GETEgg Hunt# " },
			[30] = { str = "Va para oeste de XRs #COORD[45,28]#, para entregar: #INCentaur Bracers# e #INVerog the Dervish# ... I SKIP #NPCHezrul Bloodmark# ", x = 45, y = 28, zone = "The Barrens" },
			[31] = { str = "Depois grinde seu caminho para o norte e faca: #DOSerena Bloodfeather# em #COORD[38,11]#", x = 38, y = 11, zone = "The Barrens" },
			[32] = { str = "Depois va para leste (grinde mobs pelo caminho) e faca #DOEcheyakee# em #COORD[55,17]#.", x = 55, y = 17, zone = "The Barrens" },
			[33] = { str = "Use Hearthstone para XRs." },
			[34] = { str = "Entregue #INEcheyakee# ... aceite #GETThe Angry Scytheclaws# " },
			[35] = { str = "Entregue #INSerena Bloodfeather# aceite #GETLetter to Jin'Zil# .  Certifique-se de que #GETConsumed by Hatred# tambem esteja aceita." },
			--[36] = { str = "." },
			--[37] = { str = "." },
		}
	},

-----------16-20 Barrens PART2
	--[104] = {
	--[1620] = {
	[1820] = {
		title = "16-20 Barrens (part 2)",
		--n = "16-20 Barrens Part 2",
		--pID = 103, nID = 201,
		--itemCount = 31,
		items = {
			[1] = { str = "16-20 Barrens Part 2" },
			[2] = { str = "Va para o sul e faca:" },
			[3] = { str = "#DOAltered Beings#   #COORD[55,42]#", x = 55, y = 42, zone = "The Barrens" },
			[4] = { str = "#DORaptor Horns# junto com #DOStolen Silver#   em #COORD[57,54]#  ", x = 57, y = 54, zone = "The Barrens" },
			[5] = { str = "#DOThe Angry Scytheclaws#   #COORD[51,46]#", x = 51, y = 46, zone = "The Barrens" },
			[6] = { str = "#DOTribes at War# junto com #DOConsumed by Hatred#   em #COORD[51,54]#", x = 51, y = 54, zone = "The Barrens" },
			[7] = { str = "Depois grinde seu caminho ate Camp Taurajo #COORD[45,58]#", x = 45, y = 58, zone = "The Barrens" },
			[8] = { str = "Aceite #GETWeapons of Choice# " },
			[9] = { str = "Va ate o gnoll na jaula..." },
			[10] = { str = "Entregue #INTribes at War# aceite #GETBlood Shards of Agamaggan# e #GETBetrayal from Within# " },
			[11] = { str = "Entregue #INBlood Shards of Agamaggan# " },
			[12] = { str = "Entregue 10 bloodshards por #INSpirit of the Wind# (quest repetivel) para velocidade de corrida rapida." },
			[13] = { str = "Nesse ponto, voce deveria estar mais ou menos na metade do nivel 20." },
			[14] = { str = "Agora vem a parte divertida:  Instancia #NPCWailing Caverns#! em #COORD[46,36]#.  Voce vai precisar de um grupo cheio pra isso.  OPCIONAL: GRINDE todo o caminho ate o nivel 20! (que e o que eu faco, mas nao e recomendado).  Eu grindo em bestas e bristlebacks ao norte de CT.  " },
			[15] = { str = "Fique de olho nos mobs chamados #NPCLakota'mani# (um grande kodo cinza perto de #COORD[45,53]#) e #NPCOwatanka#. Eles dropam #NPCHoof of Lakota'mani# que inicia #DOLakota'mani# e #NPCOwatanka's Tailspike# que inicia #DOOwatanka#.  Entregue essas em CT quando tiver a chance." },
			[16] = { str = "Quando voce estiver pelo menos 5 barras do 20, va ate XRs..." },
			[17] = { str = "Entregue #INStolen Silver# #INConsumed by Hatred# #INAltered Beings# e #INThe Angry Scytheclaws# ...aceite todas as novas quests.  PULE #NPCMura Runetotem# .  Voce deveria estar nivel 20 agora." },
			[18] = { str = "Voe pra Orgrimmar, pegue novas magias/habilidades." },
			[19] = { str = "Pegue a quest #GETThe Ashenvale Hunt# " },
			[20] = { str = "Use Hearthstone de volta para XRs." },
			[21] = { str = "Voe pra Ratchet..." },
			[22] = { str = "Entregue #INChen's Empty Keg# (se voce fez, se nao, nao se preocupe) ... aceite a proxima parte." },
			[23] = { str = "Entregue #INRaptor Horns# aceite #GETDeepmoss Spider Eggs# e #GETZiz Fizziks# " },
			[24] = { str = "Depois va fazer: #DOThe Guns of Northwatch# em #COORD[60,55]#  (#VIDEOVeja o video completo dessa quest junto com a quest de escolta#)", x = 60, y = 55, zone = "The Barrens" },
			[25] = { str = "Depois quando #DOThe Guns of Northwatch# estiver pronta, faca:" },
			[26] = { str = "#DOFree From the Hold# (quest de escolta)" },
			[27] = { str = "Entregue ambas as quests em Ratchet, depois.." },
			[28] = { str = "Use Hearthstone para XRs. (se o hearthstone ainda estiver em cooldown, voe pra XRs)" },
			[29] = { str = "Va para oeste ate Stonetalon Mountains..." },
			--[30] = { str = "." },
			--[31] = { str = "." },
    	}
	},

}
