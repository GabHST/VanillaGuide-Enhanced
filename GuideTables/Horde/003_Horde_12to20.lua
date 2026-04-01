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
		items = {
			[1] = { str = "12-15 Barrens" },
			-- CHEGANDO NAS BARRENS
			[2] = { str = "Va ate #NPCKargal Battlescar# em #COORD[62.3,19.4]#.", x = 62.3, y = 19.4, zone = "The Barrens", tip = "Far Watch Post, entrada leste das Barrens" },
			[3] = { str = "Entregue #INConscript of the Horde#.", x = 62.3, y = 19.4, zone = "The Barrens" },
			[4] = { str = "Aceite #GETCrossroads Conscription#.", x = 62.3, y = 19.4, zone = "The Barrens" },
			[5] = { str = "Va ate Crossroads em #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens", tip = "Hub principal da Horde nas Barrens. Longa estrada ao oeste" },
			-- CROSSROADS - SETUP
			[6] = { str = "Entregue #INCrossroads Conscription# em #NPCThork# #COORD[51.5,30.9]#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[7] = { str = "Pegue o Flight Path em #NPCDevrak# #COORD[51.5,30.3]#.", x = 51.5, y = 30.3, zone = "The Barrens", tip = "Wind Rider Master no centro de Crossroads" },
			[8] = { str = "Sete seu Hearthstone na Inn de Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens", tip = "IMPORTANTE: Hearth aqui, vamos usar muito" },
			-- CROSSROADS - PEGANDO QUESTS
			[9] = { str = "Aceite #GETPlainstrider Menace# de #NPCSergra Darkthorn# #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens", tip = "Chain de caca da Sergra, varias partes" },
			[10] = { str = "Aceite #GETRaptor Thieves# de #NPCSergra Darkthorn#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[11] = { str = "Aceite #GETDisrupt the Attacks# de #NPCThork# #COORD[51.5,30.9]#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[12] = { str = "Aceite #GETThe Forgotten Pools# de #NPCTonga Runetotem# #COORD[52.3,31.9]#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[13] = { str = "Aceite #GETFungal Spores# de #NPCApothecary Helbrim# #COORD[51.4,30.2]#.", x = 51.4, y = 30.2, zone = "The Barrens" },
			[14] = { str = "Aceite #GETWharfmaster Dizzywig# de #NPCApothecary Helbrim#.", x = 51.4, y = 30.2, zone = "The Barrens", tip = "Entrega em Ratchet, faremos na viagem la" },
			[15] = { str = "Aceite #GETHarpy Raiders# no topo da torre de vigia #COORD[52.0,30.5]#.", x = 52.0, y = 30.5, zone = "The Barrens", tip = "Suba a torre de vigia, quest giver no topo" },
			-- PRIMEIRO CIRCUITO - NORTE DE XRS
			[16] = { str = "Va ate #COORD[54,26]# ao norte de Crossroads.", x = 54, y = 26, zone = "The Barrens", tip = "Area de Razormane, Plainstriders e Raptors" },
			[17] = { str = "Mate 8 #NPCRazormane Quilboar#, 8 #NPCRazormane Scout# e 3 #NPCRazormane Dustrunner# para #DODisrupt the Attacks#.", x = 54, y = 26, zone = "The Barrens", tip = "Quilboars ao norte de XRs, espalhados pela planicie" },
			[18] = { str = "Mate #NPCPlainstrider# para 7 #ITEM[Plainstrider Beak]#.", x = 54, y = 26, zone = "The Barrens", tip = "Aves grandes por toda area, drop rate bom" },
			[19] = { str = "Mate #NPCSavannah Raptor# para 12 #ITEM[Raptor Head]#.", x = 54, y = 26, zone = "The Barrens", tip = "Raptors a leste, podem ser agressivos" },
			[20] = { str = "Se encontrar #ITEM[Chen's Empty Keg]# no chao, aceite #GETChen's Empty Keg#.", x = 54, y = 26, zone = "The Barrens", tip = "Drop raro de qualquer mob. Quest bonus de XP" },
			-- VOLTA PRA XRS
			[21] = { str = "Volte pra #NPCThork# em #COORD[51.5,30.9]#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[22] = { str = "Entregue #INDisrupt the Attacks#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[23] = { str = "Aceite #GETSupplies for the Crossroads#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			-- SUPPLY CRATES
			[24] = { str = "Va ate o campo Razormane em #COORD[56,26]#.", x = 56, y = 26, zone = "The Barrens", tip = "Caixas de suprimento espalhadas pelo acampamento" },
			[25] = { str = "Encontre #ITEM[Crossroads Supply Crate]# pelo campo.", x = 56, y = 26, zone = "The Barrens", tip = "Caixas no chao entre as tendas dos Razormane" },
			[26] = { str = "Volte pra #NPCThork# em #COORD[51.5,30.9]#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[27] = { str = "Entregue #INSupplies for the Crossroads#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[28] = { str = "Aceite #GETThe Disruption Ends#.", x = 51.5, y = 30.9, zone = "The Barrens", tip = "Voltar pros Razormane, matar elites agora" },
			[29] = { str = "Entregue #INPlainstrider Menace# em #NPCSergra Darkthorn# #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[30] = { str = "Aceite #GETThe Zhevra#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			-- RAZORMANE PT2
			[31] = { str = "Va ate o campo Razormane em #COORD[56,26]#.", x = 56, y = 26, zone = "The Barrens" },
			[32] = { str = "Mate 8 #NPCRazormane Geomancer#, 8 #NPCRazormane Defender# e #NPCKreenig Snarlsnout# para #DOThe Disruption Ends#.", x = 56, y = 26, zone = "The Barrens", tip = "Kreenig e lvl 14, fica dentro do acampamento principal" },
			-- RATCHET
			[33] = { str = "Va ate Ratchet em #COORD[62.7,36.2]#.", x = 62.7, y = 36.2, zone = "The Barrens", tip = "Cidade goblin na costa leste. Neutro, nao ataque NPCs" },
			[34] = { str = "Pegue o Flight Path em Ratchet.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[35] = { str = "Aceite #GETSouthsea Freebooters# de #NPCGazlowe# #COORD[62.7,36.2]#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[36] = { str = "Aceite #GETSamophlange# de #NPCSputtervalve# em Ratchet.", x = 62.7, y = 36.2, zone = "The Barrens", tip = "Chain de quests goblin, faremos mais tarde" },
			[37] = { str = "Pegue #GETWANTED: Baron Longshore# do cartaz perto do banco.", x = 62.7, y = 36.2, zone = "The Barrens", tip = "Cartaz de procurado na parede" },
			[38] = { str = "Entregue #INWharfmaster Dizzywig# em #NPCWharfmaster Dizzywig# #COORD[63.4,38.5]#.", x = 63.4, y = 38.5, zone = "The Barrens", tip = "Nas docas de Ratchet" },
			[39] = { str = "Aceite #GETMiner's Fortune#.", x = 63.4, y = 38.5, zone = "The Barrens" },
			-- PIRATAS
			[40] = { str = "Va ate a costa ao sul de Ratchet em #COORD[63,46]#.", x = 63, y = 46, zone = "The Barrens", tip = "Acampamento pirata Southsea na praia" },
			[41] = { str = "Mate 12 #NPCSouthsea Brigand# e 6 #NPCSouthsea Cannoneer# para #DOSouthsea Freebooters#.", x = 63, y = 46, zone = "The Barrens", tip = "Piratas lvl 13-15 na praia e barcos" },
			[42] = { str = "Mate #NPCBaron Longshore# para #DOWANTED: Baron Longshore#.", x = 63, y = 46, zone = "The Barrens", tip = "Patrulha a costa. Lvl 15, pode ter adds" },
			-- VOLTA RATCHET - SHIPMENT CHAIN
			[43] = { str = "Volte pra #NPCGazlowe# em #COORD[62.7,36.2]#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[44] = { str = "Entregue #INSouthsea Freebooters#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[45] = { str = "Entregue #INWANTED: Baron Longshore#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[46] = { str = "Aceite #GETThe Missing Shipment#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[47] = { str = "Entregue #INThe Missing Shipment# em #NPCWharfmaster Dizzywig# #COORD[63.4,38.5]#.", x = 63.4, y = 38.5, zone = "The Barrens" },
			[48] = { str = "Aceite #GETThe Missing Shipment pt.2#.", x = 63.4, y = 38.5, zone = "The Barrens" },
			[49] = { str = "Entregue #INThe Missing Shipment pt.2# em #NPCGazlowe# #COORD[62.7,36.2]#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[50] = { str = "Aceite #GETStolen Booty#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			-- STOLEN BOOTY
			[51] = { str = "Va ate #COORD[64,49]# ao sul de Ratchet.", x = 64, y = 49, zone = "The Barrens", tip = "Acampamento pirata, items nos baus" },
			[52] = { str = "Encontre #ITEM[Telescopic Lens]# em #COORD[64,49]#.", x = 64, y = 49, zone = "The Barrens", tip = "Bau no acampamento pirata norte" },
			[53] = { str = "Encontre #ITEM[Shipment of Boots]# em #COORD[63,50]#.", x = 63, y = 50, zone = "The Barrens", tip = "Bau no acampamento pirata sul" },
			[54] = { str = "Use Hearth pra Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens" },
			-- ENTREGAS XRS
			[55] = { str = "Entregue #INThe Disruption Ends# em #NPCThork# #COORD[51.5,30.9]#.", x = 51.5, y = 30.9, zone = "The Barrens" },
			[56] = { str = "Entregue #INRaptor Thieves# em #NPCSergra Darkthorn# #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[57] = { str = "Aceite #GETConsumed by Hatred# de #NPCMankrik# #COORD[52.0,31.6]#.", x = 52.0, y = 31.6, zone = "The Barrens", tip = "Sul de Crossroads, perto da estrada" },
			[58] = { str = "Aceite #GETLost in Battle# de #NPCMankrik#.", x = 52.0, y = 31.6, zone = "The Barrens", tip = "A famosa quest: achar a esposa do Mankrik" },
			-- REGTHAR + CENTAUROS + OASIS
			[59] = { str = "Va ate #NPCRegthar Deathgate# em #COORD[45.3,28.4]#.", x = 45.3, y = 28.4, zone = "The Barrens", tip = "Bunker na estrada oeste de Crossroads" },
			[60] = { str = "Aceite #GETCentaur Bracers#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			[61] = { str = "Aceite #GETKolkar Leaders#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			[62] = { str = "Mate #NPCKolkar Centaur# ao norte para 15 #ITEM[Centaur Bracers]#.", x = 43, y = 23, zone = "The Barrens", tip = "Centauros ao redor do Forgotten Pools" },
			[63] = { str = "Colete 4 #ITEM[Fungal Spores]# perto das piscinas em #COORD[37,22]#.", x = 37, y = 22, zone = "The Barrens", tip = "Cogumelos brilhantes perto da agua nos oasis" },
			[64] = { str = "Investigue a fissura no Forgotten Pools em #COORD[37,22]#.", x = 37, y = 22, zone = "The Barrens", tip = "Bolhas na agua, fique perto pra completar" },
			[65] = { str = "Mate #NPCZhevra# pelo caminho para 4 #ITEM[Zhevra Hooves]#.", x = 43, y = 23, zone = "The Barrens", tip = "Zebras por toda parte das Barrens" },
			[66] = { str = "Mate #NPCBarak Kodobane# em #COORD[43,24]#.", x = 43, y = 24, zone = "The Barrens", tip = "Lider centauro, lvl 14. Na colina ao norte" },
			-- HARPIAS
			[67] = { str = "Va ate Dry Hills em #COORD[38,17]#.", x = 38, y = 17, zone = "The Barrens", tip = "Colinas secas ao noroeste, cheias de harpias" },
			[68] = { str = "Mate #NPCWitchwing Harpy# para 8 #ITEM[Witchwing Talon]# (#DOHarpy Raiders#).", x = 38, y = 17, zone = "The Barrens", tip = "Harpias lvl 13-15. Casters, interrupa" },
			-- DIREÇÃO STONETALON
			[69] = { str = "Va ate #COORD[35,27]# na estrada pra Stonetalon Mountains.", x = 35, y = 27, zone = "The Barrens", tip = "Siga ao sudoeste, proximo guide: 15-16 Stonetalon" },
		}
	},

-----------15-16 Stonetalon Mountains
	--[102] = {
	[1516] = {
		title = "15-16 Stonetalon Mountains",
		items = {
			[1] = { str = "15-16 Stonetalon Mountains" },
			[2] = { str = "Aceite #GETGoblin Invaders# em #COORD[35,27]# nas Barrens.", x = 35, y = 27, zone = "The Barrens", tip = "Camp perto da entrada de Stonetalon" },
			[3] = { str = "Aceite #GETAvenge My Village#.", x = 35, y = 27, zone = "The Barrens" },
			[4] = { str = "Va ate a vila Grimtotem em #COORD[72,88]# em Stonetalon.", x = 72, y = 88, zone = "Stonetalon Mountains", tip = "Siga a estrada sul entrando em Stonetalon Mountains" },
			[5] = { str = "Mate #NPCGrimtotem Ruffian# e #NPCGrimtotem Mercenary# para #DOAvenge My Village#.", x = 72, y = 88, zone = "Stonetalon Mountains", tip = "Tauren hostis lvl 15-16 na vila" },
			[6] = { str = "Volte e entregue #INAvenge My Village#.", x = 35, y = 27, zone = "The Barrens" },
			[7] = { str = "Aceite #GETKill Grundig Darkcloud#.", x = 35, y = 27, zone = "The Barrens" },
			[8] = { str = "Va ate #COORD[73,86]# em Stonetalon.", x = 73, y = 86, zone = "Stonetalon Mountains", tip = "Acampamento Grimtotem no sul de Stonetalon" },
			[9] = { str = "Mate #NPCGrundig Darkcloud# e 6 #NPCGrimtotem Brute#.", x = 73, y = 86, zone = "Stonetalon Mountains", tip = "Grundig lvl 16, dentro da area principal" },
			[10] = { str = "Volte e entregue #INKill Grundig Darkcloud# em #COORD[35,28]#.", x = 35, y = 28, zone = "The Barrens" },
			[11] = { str = "Aceite #GETKaya's Alive#.", x = 35, y = 28, zone = "The Barrens" },
			[12] = { str = "Volte pra Barrens. Proximo: 16-20 Barrens.", x = 45, y = 28, zone = "The Barrens", tip = "Siga a estrada leste de volta" },
		}
	},

-----------16-20 Barrens PART1
	--[103] = {
	--[1620] = {
	[1618] = {
		title = "16-20 Barrens (part 1)",
		items = {
			[1] = { str = "16-20 Barrens Part 1" },
			-- ENTREGAS REGTHAR
			[2] = { str = "Va ate #NPCRegthar Deathgate# em #COORD[45.3,28.4]#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			[3] = { str = "Entregue #INKolkar Leaders#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			[4] = { str = "Aceite #GETVerog the Dervish#.", x = 45.3, y = 28.4, zone = "The Barrens", tip = "Centauro boss ao sul, faremos depois" },
			[5] = { str = "Entregue #INCentaur Bracers#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			-- ENTREGAS XRS
			[6] = { str = "Va ate Crossroads em #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[7] = { str = "Entregue #INThe Zhevra# em #NPCSergra Darkthorn#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[8] = { str = "Aceite #GETProwlers of the Barrens#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[9] = { str = "Entregue #INFungal Spores# em #NPCApothecary Helbrim# #COORD[51.4,30.2]#.", x = 51.4, y = 30.2, zone = "The Barrens" },
			[10] = { str = "Aceite #GETApothecary Zamah#.", x = 51.4, y = 30.2, zone = "The Barrens", tip = "Entrega em Thunder Bluff, faremos na viagem ao sul" },
			[11] = { str = "Entregue #INThe Forgotten Pools# em #NPCTonga Runetotem# #COORD[52.3,31.9]#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[12] = { str = "Aceite #GETThe Stagnant Oasis#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[13] = { str = "Entregue #INHarpy Raiders#.", x = 52.0, y = 30.5, zone = "The Barrens" },
			[14] = { str = "Aceite #GETHarpy Lieutenants#.", x = 52.0, y = 30.5, zone = "The Barrens" },
			-- VIAGEM AO SUL - MANKRIK + CAMP TAURAJO + TB
			[15] = { str = "Va ao sul ate #COORD[49.5,50.9]#.", x = 49.5, y = 50.9, zone = "The Barrens", tip = "Esposa do Mankrik, corpo perto da cabana oeste da ponte" },
			[16] = { str = "Encontre o corpo de #NPCMankrik's Wife# para #DOLost in Battle#.", x = 49.5, y = 50.9, zone = "The Barrens", tip = "Corpo no chao ao lado de uma cabana destruida" },
			[17] = { str = "Va ate Camp Taurajo em #COORD[44,59]#.", x = 44, y = 59, zone = "The Barrens", tip = "Acampamento Tauren ao sul das Barrens" },
			[18] = { str = "Pegue o Flight Path em Camp Taurajo.", x = 44, y = 59, zone = "The Barrens" },
			[19] = { str = "Aceite #GETTribes at War# do gnoll na jaula.", x = 44, y = 59, zone = "The Barrens", tip = "Mangletooth, gnoll preso numa jaula" },
			[20] = { str = "Va ate Thunder Bluff em Mulgore.", x = 39, y = 27, zone = "Mulgore", tip = "Siga a estrada oeste entrando em Mulgore" },
			[21] = { str = "Pegue o Flight Path em Thunder Bluff.", x = 47, y = 50, zone = "Thunder Bluff", tip = "Wind Rider no topo da torre central" },
			[22] = { str = "Pegue novas habilidades no trainer.", x = 47, y = 50, zone = "Thunder Bluff" },
			[23] = { str = "Entregue #INApothecary Zamah# na caverna do Spirit Rise.", x = 29, y = 29, zone = "Thunder Bluff", tip = "Caverna abaixo do Spirit Rise em Thunder Bluff" },
			[24] = { str = "Use Hearth pra Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[25] = { str = "Entregue #INLost in Battle# em #NPCMankrik# #COORD[52.0,31.6]#.", x = 52.0, y = 31.6, zone = "The Barrens" },
			-- CIRCUITO NOROESTE - PROWLERS + HARPIAS + SAMOPHLANGE
			[26] = { str = "Va ao noroeste ate #COORD[37,20]#.", x = 37, y = 20, zone = "The Barrens", tip = "Area de Savannah Prowlers" },
			[27] = { str = "Mate #NPCSavannah Prowler# para 7 #ITEM[Prowler Claw]#.", x = 37, y = 20, zone = "The Barrens", tip = "Leoes lvl 15-16, agressivos" },
			[28] = { str = "Va ate Dry Hills em #COORD[38,14]#.", x = 38, y = 14, zone = "The Barrens" },
			[29] = { str = "Mate #NPCWitchwing Slayer# para #DOHarpy Lieutenants#.", x = 38, y = 14, zone = "The Barrens", tip = "Harpias mais fortes, lvl 15-17" },
			[30] = { str = "Va ate a maquina goblin em #COORD[52,11]#.", x = 52, y = 11, zone = "The Barrens", tip = "Console de controle do Samophlange" },
			[31] = { str = "Faca toda a chain #DOSamophlange# no console.", x = 52, y = 11, zone = "The Barrens", tip = "Clique no console, feche 3 valvulas, mate Tinkerer pela chave" },
			-- SLUDGE FEN
			[32] = { str = "Va ate Sludge Fen em #COORD[56,8]#.", x = 56, y = 8, zone = "The Barrens", tip = "Area pantanosa ao nordeste, Venture Co." },
			[33] = { str = "Faca #DOIgnition# e #DOThe Escape#.", x = 56, y = 8, zone = "The Barrens", tip = "Quest chain goblin, escolta no final" },
			[34] = { str = "Va ate #COORD[61,5]# e mate #NPCVenture Co. Overseer# para #ITEM[Cat's Eye Emerald]#.", x = 61, y = 5, zone = "The Barrens", tip = "Miner's Fortune quest, drop dos Overseers" },
			-- RATCHET ENTREGAS
			[35] = { str = "Va ate Ratchet em #COORD[62.7,36.2]#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[36] = { str = "Entregue #INStolen Booty# em #NPCGazlowe#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[37] = { str = "Entregue #INSamophlange#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[38] = { str = "Entregue #INMiner's Fortune# em #NPCWharfmaster Dizzywig# #COORD[63.4,38.5]#.", x = 63.4, y = 38.5, zone = "The Barrens" },
			-- STAGNANT OASIS + VEROG
			[39] = { str = "Va ate Stagnant Oasis em #COORD[55,42]#.", x = 55, y = 42, zone = "The Barrens", tip = "Oasis ao sudoeste de Ratchet" },
			[40] = { str = "Investigue a fissura para #DOThe Stagnant Oasis#.", x = 55, y = 42, zone = "The Barrens", tip = "Bolhas na agua, fique perto" },
			[41] = { str = "Mate #NPCVerog the Dervish# em #COORD[54,43]#.", x = 54, y = 43, zone = "The Barrens", tip = "Centauro boss lvl 16. Patrulha a area do oasis" },
			-- ENTREGAS XRS
			[42] = { str = "Va ate Crossroads em #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[43] = { str = "Entregue #INProwlers of the Barrens# em #NPCSergra Darkthorn#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[44] = { str = "Aceite #GETEcheyakee#.", x = 52.2, y = 31.0, zone = "The Barrens", tip = "Invocar um leao raro com buzina" },
			[45] = { str = "Entregue #INHarpy Lieutenants#.", x = 52.0, y = 30.5, zone = "The Barrens" },
			[46] = { str = "Aceite #GETSerena Bloodfeather#.", x = 52.0, y = 30.5, zone = "The Barrens" },
			[47] = { str = "Entregue #INThe Stagnant Oasis# em #NPCTonga Runetotem#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[48] = { str = "Aceite #GETAltered Beings#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[49] = { str = "Entregue #INVerog the Dervish# em #NPCRegthar Deathgate# #COORD[45.3,28.4]#.", x = 45.3, y = 28.4, zone = "The Barrens" },
			-- SERENA + ECHEYAKEE
			[50] = { str = "Va ate #COORD[38,11]# no noroeste.", x = 38, y = 11, zone = "The Barrens", tip = "Colinas de harpias" },
			[51] = { str = "Mate #NPCSerena Bloodfeather#.", x = 38, y = 11, zone = "The Barrens", tip = "Harpia boss lvl 17, no topo das colinas" },
			[52] = { str = "Va ate #COORD[55,17]#.", x = 55, y = 17, zone = "The Barrens" },
			[53] = { str = "Use #ITEM[Horn of Echeyakee]# para invocar #NPCEcheyakee#. Mate ele.", x = 55, y = 17, zone = "The Barrens", tip = "Leao branco lvl 16. Use o item do inventario" },
			[54] = { str = "Use Hearth pra Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[55] = { str = "Entregue #INEcheyakee# em #NPCSergra Darkthorn#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[56] = { str = "Aceite #GETThe Angry Scytheclaws#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[57] = { str = "Entregue #INSerena Bloodfeather#.", x = 52.0, y = 30.5, zone = "The Barrens" },
			[58] = { str = "Aceite #GETLetter to Jin'Zil#.", x = 52.0, y = 30.5, zone = "The Barrens", tip = "Entrega em Stonetalon mais tarde" },
		}
	},

-----------16-20 Barrens PART2
	--[104] = {
	--[1620] = {
	[1820] = {
		title = "16-20 Barrens (part 2)",
		items = {
			[1] = { str = "16-20 Barrens Part 2" },
			-- CIRCUITO SUL - ALTERED BEINGS + RAPTORS + SCYTHECLAWS
			[2] = { str = "Va ate Stagnant Oasis em #COORD[55,42]#.", x = 55, y = 42, zone = "The Barrens" },
			[3] = { str = "Mate #NPCAltered Snapjaw# para 8 #ITEM[Altered Snapjaw Shell]# (#DOAltered Beings#).", x = 55, y = 42, zone = "The Barrens", tip = "Tartarugas no oasis, lvl 15-16" },
			[4] = { str = "Va ate #COORD[51,46]# ao sul.", x = 51, y = 46, zone = "The Barrens" },
			[5] = { str = "Mate #NPCSunscale Raptor# e coloque penas em 3 ninhos para #DOThe Angry Scytheclaws#.", x = 51, y = 46, zone = "The Barrens", tip = "Raptors agressivos, ninhos no chao" },
			[6] = { str = "Va ate #COORD[57,54]# ao sudeste.", x = 57, y = 54, zone = "The Barrens" },
			[7] = { str = "Mate #NPCSavannah Huntress# para #ITEM[Raptor Horn]# (#DORaptor Horns#).", x = 57, y = 54, zone = "The Barrens", tip = "Raptors lvl 17-18 perto de Camp Taurajo" },
			[8] = { str = "Mate #NPCBristleback Quilboar# ao sul para #DOConsumed by Hatred# (60 tusks).", x = 51, y = 54, zone = "The Barrens", tip = "Quilboars ao redor de Bramblescar" },
			-- CAMP TAURAJO
			[9] = { str = "Va ate Camp Taurajo em #COORD[44,59]#.", x = 44, y = 59, zone = "The Barrens" },
			[10] = { str = "Aceite #GETWeapons of Choice#.", x = 44, y = 59, zone = "The Barrens" },
			[11] = { str = "Entregue #INTribes at War# no gnoll na jaula.", x = 44, y = 59, zone = "The Barrens" },
			[12] = { str = "Aceite #GETBlood Shards of Agamaggan#.", x = 44, y = 59, zone = "The Barrens", tip = "Colete Blood Shards dos Bristlebacks mortos" },
			[13] = { str = "Aceite #GETBetrayal from Within#.", x = 44, y = 59, zone = "The Barrens" },
			-- GRIND ATÉ 20
			[14] = { str = "Grinde mobs ate level 20.", x = 45, y = 53, zone = "The Barrens", tip = "Bestas e Bristlebacks ao norte de CT. Fique de olho em Lakota'mani e Owatanka (rares)" },
			-- ENTREGAS XRS
			[15] = { str = "Va ate Crossroads em #COORD[52.2,31.0]#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[16] = { str = "Entregue #INConsumed by Hatred# em #NPCMankrik#.", x = 52.0, y = 31.6, zone = "The Barrens" },
			[17] = { str = "Entregue #INAltered Beings# em #NPCTonga Runetotem#.", x = 52.3, y = 31.9, zone = "The Barrens" },
			[18] = { str = "Entregue #INThe Angry Scytheclaws# em #NPCSergra Darkthorn#.", x = 52.2, y = 31.0, zone = "The Barrens" },
			-- ORGRIMMAR
			[19] = { str = "Voe pra Orgrimmar.", x = 45, y = 64, zone = "Orgrimmar" },
			[20] = { str = "Pegue novas habilidades no trainer.", x = 45, y = 64, zone = "Orgrimmar" },
			[21] = { str = "Aceite #GETThe Ashenvale Hunt# em Orgrimmar.", x = 45, y = 64, zone = "Orgrimmar", tip = "Board de quests em Orgrimmar" },
			[22] = { str = "Use Hearth pra Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens" },
			-- RATCHET
			[23] = { str = "Voe pra Ratchet.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[24] = { str = "Entregue #INRaptor Horns# em Ratchet.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[25] = { str = "Aceite #GETDeepmoss Spider Eggs#.", x = 62.7, y = 36.2, zone = "The Barrens" },
			-- NORTHWATCH
			[26] = { str = "Va ate Northwatch Hold em #COORD[60,55]#.", x = 60, y = 55, zone = "The Barrens", tip = "Fortaleza Alliance ao sudeste. Mobs lvl 17-20" },
			[27] = { str = "Mate #NPCNorthwatch Marines# e destrua os canhoes para #DOThe Guns of Northwatch#.", x = 60, y = 55, zone = "The Barrens", tip = "3 canhoes pra destruir dentro da fortaleza" },
			[28] = { str = "Faca #DOFree From the Hold# (quest de escolta) se disponivel.", x = 60, y = 55, zone = "The Barrens", tip = "Escolta dentro da fortaleza. Opcional mas boa XP" },
			[29] = { str = "Entregue quests em Ratchet.", x = 62.7, y = 36.2, zone = "The Barrens" },
			[30] = { str = "Use Hearth pra Crossroads.", x = 52.2, y = 31.0, zone = "The Barrens" },
			[31] = { str = "Va pra oeste ate Stonetalon Mountains.", x = 35, y = 27, zone = "The Barrens", tip = "Proximo: Ashenvale e Stonetalon 20-30" },
    	}
	},

}
