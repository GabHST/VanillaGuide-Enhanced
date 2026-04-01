--[[--------------------------------------------------
003_Horde_30to40.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 30 to Lvl 40
    1.04.1
        -- First Release
            Horde's Guide
            from level 30 to lever 40
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
------------------------------------------------------
Connection:
--]]--------------------------------------------------
Table_003_Horde_30to40 = {
	[3029] = {
		title = "30-30 Alterac Mountains",
		--L- Needs playtest
		items = {
			[1] = { str = "30-30 Alterac Mountains" },
			[2] = { str = "Faca #DOElixir of Pain#, matando os #NPCMountain Lions# level 32-34 nos planaltos." },
			[3] = { str = "Carregue a terceira chama #ITEMFlame of Uzel#, pra quest #DOHelcular's Revenge# " },
			[4] = { str = "Mate #NPCFrostmaw# (mob level 37), e uma batalha dificil entao se prepare! Um grupo pode ser necessario." },
			[5] = { str = "Va ate Southshore, pra fincar a vara no #ITEMHelcular's grave#, completando #INHelcular's Revenge# " },
			[6] = { str = "Volte pra Tarren Mill" },
			[7] = { str = "Entregue #INElixir of Pain# " },
			[8] = { str = "Aceite #GETThe Hammer May Fall#" },
			[9] = { str = "Va ate Arathi Highlands." },
		}
	},
	[3030] = {
		title = "30-30 Arathi Highlands",
		--L- Needs playtest
		items = {
			[1] = { str = "30-30 Arathi Highlands" },
			[2] = { str = "Faca #DOThe Hammer May Fall# em #COORD[34,45]#", x = 34, y = 45, zone = "Arathi Highlands" },
			[3] = { str = "Depois va ate Hammerfall em #COORD[73,36]#", x = 73, y = 36, zone = "Arathi Highlands" },
			[4] = { str = "Aceite #GETHammerfall#." },
			[5] = { str = "Entregue #INHammerfall#, aceite #GETRaising Spirits# " },
			[6] = { str = "Entregue #INThe Hammer May Fall# " },
			[7] = { str = "Pegue o flight path de la." },
			[8] = { str = "Depois faca #DORaising Spirits#, logo a esquerda de Hammerfall perto de #COORD[64,37]#. Entregue e aceite #GETRaising Spirits pt.2#", x = 64, y = 37, zone = "Arathi Highlands" },
			[9] = { str = "Entregue #INRaising Spirits pt.2#, aceite #GETRaising Spirits pt.3#" },
			[10] = { str = "Entregue #INRaising Spirits pt.3#, pule #SKIPGuile of the Raptor# por enquanto" },
			[11] = { str = "Use Hearthstone pra Orgrimmar. Coloque #ITEM[Frostmaw's Mane]# no banco pra economizar espaco na bag. So vai ser entregue no level 43." },
			[12] = { str = "Voe pra Crossroads." },
			[13] = { str = "Va pro oeste em Crossroads, aceite #GETThe Swarm Grows# " },
			[14] = { str = "Depois va pro oeste de Crossroads ate o cara na cabana, aceite #GETThe Kolkar of Desolace# " },
			[15] = { str = "Volte pra Crossroads e sete seu Hearthstone la." },
			[16] = { str = "Voe pra Ratchet e pegue o barco pra Booty Bay." },
		}
	},
	[3031] = {
		title = "30-31 Stranglethorn Vale",
		--L- Needs playtest
		items = {
			[1] = { str = "30-31 Stranglethorn Vale" },
			[2] = { str = "Pegue o flight path em Booty Bay, e suba ate Grom'Gol, pegando o flight path de la tambem." },
			[3] = { str = "Va pro norte #COORD[35,10]# e comece a fazer as quests de caca de Stranglethorn", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[4] = { str = "#DOWelcome to the Jungle#, aceite e entregue." },
			[5] = { str = "#DOTiger Mastery#, #NPCYoung Stranglethorn Tigers# em #COORD[33,10]#", x = 33, y = 10, zone = "Stranglethorn Vale" },
			[6] = { str = "#DOPanther Mastery#, #NPCYoung Panthers# em #COORD[41.09]#", x = 41, y = 9, zone = "Stranglethorn Vale" },
			[7] = { str = "#DOPanther Mastery#, #NPCPanthers# em #COORD[30,11]#", x = 30, y = 11, zone = "Stranglethorn Vale" },
			[8] = { str = "#DOTiger Mastery#, #NPCStranglethorn Tigers# em #COORD[30,10]#", x = 30, y = 11, zone = "Stranglethorn Vale" },
			[9] = { str = "#DORaptor Mastery#, #NPCStranglethorn Raptors# em #COORD[25,15]#", x = 25, y = 15, zone = "Stranglethorn Vale" },
			[10] = { str = "Aceite #GETTiger Mastery#, #NPCElder Stranglethorn Tigers#, mas nao faca agora." },
			[11] = { str = "Aceite #GETRaptor Mastery#, #NPCLashtail Raptors#, mas nao faca agora." },
			[12] = { str = "Pule o resto por enquanto." },
			[13] = { str = "Voce deveria estar level 31 com certeza, se nao grinde ate la" },
			[14] = { str = "Use Hearthstone pra Crossroads." },
			[15] = { str = "Voe pra Thousand Needles." },
			[16] = { str = "Va pro leste em Shimmering Flats em #COORD[77,77]#.", x = 77, y = 77, zone = "Thousand Needles" },
		}
	},
	[3132] = {
		title = "31-32 TN (Shimmering Flats)",
		--L- Needs playtest
		items = {
			[1] = { str = "31-32 Thousand Needles (Shimmering Flats)" },
			[2] = { str = "Aceite #GETHemet Nesingwary# e #GETWharfmaster Dizzywig#." },
			[3] = { str = "Aceite e faca as seguintes juntas: #DOA Bump in the Road#, #DOHardened Shells#, #DOLoad Lightening#, #DORocket Car Parts#, #DOSalt Flat Venom#." },
			[4] = { str = "Entregue todas. Aceite #GETGoblin Sponsorship# e #GETMartk the Exiled#, PULE #SKIPEncrusted Tail Fins# (Elite)." },
			[5] = { str = "Va pro sul em Tanaris pra pegar o flight path em Gadgetzan em #COORD[51,25]#", x = 51, y = 25, zone = "Tanaris" },
			[6] = { str = "Use Hearthstone pra Crossroads, depois voe pra Orgrimmar." },
			[7] = { str = "Entregue #INThe Swarm Grows# em #COORD[75,34]#, aceite #GETThe Swarm Grows pt.2#.", x = 75, y = 34, zone = "Orgrimma" },
			[8] = { str = "Aceite #GETAlliance Relations# de #NPCCraven Drok# no Cleft of Shadow, #COORD[47,50]#", x = 47, y = 50, zone = "Orgrimmar" },
			[9] = { str = "Depois va ate #NPCKeldran# em Orgrimmar #COORD[23,53]# pra aceitar #GETAlliance Relations pt.2#.", x = 23, y = 53, zone = "Orgrimmar" },
			[10] = { str = "Voe pra Stonetalon Mountains, e va ate Desolace." },
		}
	},
	[3234] = {
		title = "32-34 Desolace",
		--L- Needs playtest
		items = {
			[1] = { str = "32-34 Desolace" },
			[2] = { str = "Primeira coisa a fazer aqui e comecar a matar mobs na Thunder Axe Fortress #COORD[55,24]# ate #ITEM[Flayed Demon Skin]# dropar, que inicia #GETThe Corrupter#.", x = 55, y = 24, zone = "Desolace" },
			[3] = { str = "Depois de pegar, va fazer #DOKodo Roundup#, comeca em #COORD[60,61]#.", x = 60, y = 61, zone = "Desolace" },
			[4] = { str = "Depois va ate Ghost Walker Post #COORD[56,59]#", x = 56, y = 59, zone = "Desolace" },
			[5] = { str = "Entregue #INThe Kolkar of Desolace#, aceite #GETKhan Dez'hepah#." },
			[6] = { str = "Aceite #GETGelkis Alliance#, pule #SKIPMagram Alliance#." },
			[7] = { str = " Aceite #GETCatch of the Day#. Entregue #INAlliance Relations#, aceite #GETAlliance Relations pt.2# e #GETBefouled by Satyr# " },
			[8] = { str = "Entregue #INThe Corrupter#, aceite #GETThe Corrupter pt.2#." },
			[9] = { str = "Entregue #INAlliance Relations pt.2#, aceite #GETThe Burning of Spirits#." },
			[10] = { str = "Va fazer #DOBefouled by Satyr# e #DOThe Corrupter pt.2# em #COORD[75,22]#.", x = 75, y = 22, zone = "Desolace" },
			[11] = { str = "Faca #DOKhan Dez'hepah#, em #COORD[73,48]#", x = 73, y = 48, zone = "Desolace" },
			[12] = { str = "Faca #DOGelkis Alliance#, em #COORD[68,71]#", x = 68, y = 71, zone = "Desolace" },
			[13] = { str = "Volte pra Ghost Walker Post #COORD[56,59]#, e entregue #INKhan Dez'hepah#, aceite #GETCentaur Bounty#. Entregue #INBefouled by Satyr# e #INThe Corrupter pt.2#, aceite #GETThe Corrupter pt.3#.", x = 56, y = 59, zone = "Desolace" },
			[14] = { str = "Depois va ate Shadowprey Village, parando no caminho pra entregar #INGelkis Alliance# em #COORD[36,79]#, aceite #GETStealing Supplies# ", x = 36, y = 79, zone = "Desolace" },
			[15] = { str = "Aceite todas as quests em Shadowprey Village em #COORD[24,71]#; #GETHunting in Stranglethorn#, #GETHand of Iruxos#, #GETClam Bait# e #GETOther Fish to Fry# ", x = 24, y = 71, zone = "Desolace" },
			[16] = { str = "Sete seu Hearthstone em Shadowprey Village." },
			[17] = { str = "Va na agua e colete 10 #NPCShellfish#, das armadilhas de Shellfish." },
			[18] = { str = "Entregue em #NPCJinar'Zillen# por 2 #ITEMBloodbelly Fish#." },
			[19] = { str = "Suba pela agua, coletando #ITEMSoft-shelled Clam Meat# pra quest #DOClam Bait# no caminho" },
			[20] = { str = "Aceite #GETClaim Rackmore's Treasure!# no bau/barco naufragado na costa, #COORD[36,30]#. A #ITEM[Silver Key]# dropa de um #NPCDrysnap#, e a #ITEM[Golden Key]# dropa de um #NPCSlitherblade#.", x = 36, y = 30, zone = "Desolace" },
			[21] = { str = "Va aceitar #GETSceptre of Light# de #NPCAzore Aldamort# em #COORD[38,27]#", x = 38, y = 27, zone = "Desolace" },
			[22] = { str = "Depois va ate Thunder Axe Fortress #COORD[54,29]# e faca #DOThe Burning of Spirits#, #DOSceptre of Light# e #DOHand of Iruxos#.", x = 54, y = 29, zone = "Desolace" },
			[23] = { str = "Grinde seu caminho de volta ate #NPCAzore Aldamort# #COORD[38,27]#, entregue #INSceptre of Light# e pegue #GETBook of the Ancients#.", x = 38, y = 27, zone = "Desolace" },
			[24] = { str = "Depois va fazer #DOOther Fish to Fry#, #DOClam Bait#, #DOThe Corrupter pt.3#, #DOClaim Rackmore's Treasure!# e #DOBook of the Ancients# pela costa ate #COORD[27,06]#", x = 27, y = 6, zone = "Desolace" },
			[25] = { str = "Entregue #INClaim Rackmore's Treasure!# no bauzinho em #COORD[29,08]#.", x = 29, y = 8, zone = "Desolace" },
			[26] = { str = "Entregue #INBook of the Ancients# em #COORD[38,27]#", x = 38, y = 27, zone = "Desolace" },
			[27] = { str = "Depois va aceitar #GETBone Collector# em #COORD[62,38]#, grindando mobs no caminho.", x = 62, y = 38, zone = "Desolace" },
			[28] = { str = "Va ate Ghost Walker Post #COORD[56,59]#, entregue #INCatch of the Day# aceite e entregue #INThe Burning of Spirits#, entregue #INThe Corrupter pt.3#, aceite e entregue #INThe Corrupter pt.4#. Aceite #GETAlliance Relations# Pule #SKIPThe Corrupter pt.5#.", x = 56, y = 59, zone = "Desolace" },
			[29] = { str = "Depois faca #DOBone Collector# no cemiterio de kodos #COORD[51,58]#", x = 51, y = 58, zone = "Desolace" },
			[30] = { str = "Depois #DOCentaur Bounty# e #DOStealing Supplies# #COORD[70,74]#", x = 70, y = 74, zone = "Desolace" },
			[31] = { str = "Depois va entregar #INCentaur Bounty# em #COORD[56,59]#", x = 56, y = 59, zone = "Desolace" },
			[32] = { str = "Entregue #INBone Collector# em #COORD[62,38]#", x = 62, y = 38, zone = "Desolace" },
			[33] = { str = "Use Hearthstone pra Shadowprey Village." },
			[34] = { str = "Entregue todas as quests, #INHand of Iruxos#, #INOther Fish to Fry# e #INClam Bait#. Voce deveria estar level 34 agora." },
			[35] = { str = "Entregue #INStealing Supplies# em #COORD[36,79]# e aceite #GETOngeku#.", x = 36, y = 79, zone = "Desolace" },
			[36] = { str = "Voe pra Camp Taurajo (Barrens), depois va pro sudeste em Dustwallow Marsh #COORD[51,79]#.", x = 51, y = 79, zone = "The Barrens" },
			[37] = { str = "Colete os 3 objetos de quest no Shady Rest Inn" },
			[38] = { str = "#GETSuspicious Hoofprints#, logo a direita do lado de fora na frente da inn." },
			[39] = { str = "#GETLieutenant Paval Reethe#, deitado em uma das tabuas no chao." },
			[40] = { str = "#GETThe Black Shield#, em cima da lareira." },
			[41] = { str = "Agora va ate Brackenwall Village #COORD[35,29]#", x = 35, y = 29, zone = "Dustwallow Marsh" },
			[42] = { str = "Entregue essas 3 quests, #INSuspicious Hoofprints# #INLieutenant Paval Reethe# e #INThe Black Shield#, aceite e depois entregue #INThe Black Shield pt.2# Pule #SKIPThe Black Shield pt.3#." },
		--L- Need to check Black Shield quests
			[43] = { str = "Pare no vendedor troll, compre os 3 livros de first aid." },
			[44] = { str = "Voe pra Ratchet pra entregar #INGoblin Sponsorship# e #INWharfmaster Dizzywig#, aceite #GETGoblin Sponsorship pt.2# e #GETParts for Kravel#." },
			[45] = { str = "Pegue o barco pra Booty Bay." },
		}
	},
	[3435] = {
		title = "34-35 Stranglethorn Vale",
		--L- Needs playtest
		items = {
			[1] = { str = "34-35 Stranglethorn Vale" },
			[2] = { str = "Entregue #INGoblin Sponsorship pt.2#, aceite #GETGoblin Sponsorship pt.3# Sete seu Hearthstone em Booty Bay! Aceite #GETSinging Blue Shards#, #GETBloodscalp Ears#, #GETHostile Takeover# e #GETInvestigate the Camp#. Entregue #INGoblin Sponsorship pt.3# em #NPCBaron Revilgaz#, aceite #GETGoblin Sponsorship pt.4#." },
			[3] = { str = "Voe pra Grom'gol, e pegue todas as quests de la; #GETThe Defense of Grom'gol#, #GETMok'thardin's Enchantment#, #GETBloodscalp Insight#, #GETHunt for Yenniku#, #GETTrollbane#, #GETBloody Bone Necklaces#, #GETThe Vile Reef#." },
			[4] = { str = "Certifique-se de guardar qualquer pagina de #ITEM[Green Hills of Stranglethorn]# que encontrar e envie por correio pro seu alt pra guardar, voce vai precisar pra uma quest depois." },
			[5] = { str = "Voce vai precisar dos seguintes: Chapter 1: 1, 4, 6 e 8. Chapter 2: 10, 11, 14 e 16. Chapter 3: 18, 20, 21 e 24. Chapter 4: 25, 26, e 27." },
			[6] = { str = "Faca #DOSinging Blue Shards# em #COORD[25,19]#", x = 25, y = 19, zone = "Stranglethorn Vale" },
			[7] = { str = "Faca #DOTiger Mastery#, matando #NPCElder Stranglethorn Tigers# em #COORD[31,19]#", x = 31, y = 19, zone = "Stranglethorn Vale" },
			[8] = { str = "Faca #DOBloodscalp Ears#, #DOHunt for Yenniku# e #DOBloody Bone Necklaces# (nao precisa completar a ultima agora)." },
			[9] = { str = "Faca #DORaptor Mastery# e #DOThe Defense of Grom'gol# matando #NPCLashtail Raptors# logo fora de Grom'gol." },
			[10] = { str = "Va ate Grom'gol e entregue #INHunt for Yenniku#, aceite #GETHeadhunting#, entregue #INThe Defense of Grom'gol#, aceite #GETThe Defense of Grom'gol pt.2#" },
			[11] = { str = "Faca #DOHeadhunting# enquanto termina #DOBloody Bone Necklaces# em #COORD[21,14]#", x = 21, y = 14, zone = "Stranglethorn Vale" },
			[12] = { str = "Faca #DOThe Vile Reef# junto com #DOEncrusted Tail Fins# em #COORD[24,24]#. Cuidado pra nao se afogar.", x = 24, y = 24, zone = "Stranglethorn Vale" },
			[13] = { str = "Depois va ate Nesingwary's Expedition #COORD[35,10]#, entregue TODAS as quests e aceite todas as novas, exceto #SKIPThe Green Hills of Stranglethorn#.", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[14] = { str = "Faca #DOTiger Mastery# matando #NPCSin'Dall#, ele geralmente fica no topo da colina em #COORD[31,17]#. Va entregar quando terminar.", x = 31, y = 17, zone = "Stranglethorn Vale" },
			[15] = { str = "Faca #DOHostile Takeover# junto com #DOGoblin Sponsorship# em #COORD[44,19]#", x = 44, y = 19, zone = "Stranglethorn Vale" },
			[16] = { str = "Faca #DOPanther Mastery# junto com #DOMok'thardin's Enchantment#, mate #NPCShadowmaw Panthers# em #COORD[48,21]#", x = 48, y = 21, zone = "Stranglethorn Vale" },
			[17] = { str = "Faca #DOThe Defense of Grom'gol pt.2# em #COORD[36,30]#", x = 36, y = 30, zone = "Stranglethorn Vale" },
			[18] = { str = "Va pro norte e entregue #INPanther Mastery#, aceite #GETPanther Mastery#, #NPCBhag'thera#, mas nao faca agora." },
			[19] = { str = "Use Hearthstone pra Booty Bay, entregue #INSinging Blue Shards#, #INHostile Takeover#, #INBloodscalp Ears# e #INInvestigate the Camp#." },
			[20] = { str = "Entregue #INGoblin Sponsorship pt.4#, aceite #GETGoblin Sponsorship pt.5#." },
			[21] = { str = "Voe pra Grom'gol e entregue todas as quests, #INThe Defense of Grom'gol#, #INMok'thardin's Enchantment#, #INHeadhunting#, #INBloody Bone Necklaces# e #INThe Vile Reef#." },
			[22] = { str = "Voce deveria estar level 36 agora, se nao, grinde ate la. Aceite #GETTrollbane#." },
			[23] = { str = "Pegue o zeppelin pra Undercity." },
			[24] = { str = "Aceite #GETTo Steal From Thieves# #COORD[63,49]#", x = 63, y = 49, zone = "Undercity" },
			[25] = { str = "Depois voe pra Hammerfall." },
		}
	},
	[3537] = {
		title = "35-37 Arathi Highlands",
		--L- Needs playtest
		items = {
			[1] = { str = "35-37 Arathi Highlands" },
			[2] = { str = "Sete seu Hearthstone em Hammerfall." },
			[3] = { str = "Entregue #INTrollbane#, PULE #SKIPSigil of Strom#." },
			[4] = { str = "Aceite #GETCall to Arms#, #GETFoul Magics# e #GETGuile of the Raptor# " },
			[5] = { str = "Grinde seu caminho pro sul e faca #DOCall to Arms#." },
			[6] = { str = "Depois va pro oeste de Hammerfall e aceite #GETThe Princess Trapped# #COORD[62,33]#", x = 62, y = 33, zone = "Arathi Highlands" },
			[7] = { str = "Depois va fazer #DOThe Princess Trapped# enquanto grinda seu caminho dentro da caverna." },
			[8] = { str = "Entregue #INThe Princess Trapped# na caverna, e aceite #GETStones of Binding#." },
			[9] = { str = "Entregue #INCall to Arms#, aceite #GETCall to Arms pt.2# " },
			[10] = { str = "Faca #DOStones of Binding# Primeira chave, logo a oeste de Hammerfall em #COORD[66,29]#", x = 66, y = 29, zone = "Arathi Highlands" },
			[11] = { str = "Faca #DOTo Steal From Thieves# em #COORD[54,40]#", x = 54, y = 40, zone = "Arathi Highlands" },
			[12] = { str = "Va um pouco pro sul e pegue a proxima chave pra #DOStones of Binding#, em #COORD[52,50]#", x = 52, y = 50, zone = "Arathi Highlands" },
			[13] = { str = "Faca #DOCall to Arms pt.2# matando #NPCOgres#, e #DOGuile of the Raptor# matando #NPCHighland Fleshstalkers# perto de #COORD[50,75]#", x = 50, y = 75, zone = "Arathi Highlands" },
			[14] = { str = "Faca #DOFoul Magics# em #COORD[31,28]#", x = 31, y = 28, zone = "Arathi Highlands" },
			[15] = { str = "Depois va pro oeste e pegue a ultima chave pra #DOStones of Binding# em #COORD[25,31]#", x = 25, y = 31, zone = "Arathi Highlands" },
			[16] = { str = "Va descobrir Stromguard, e entregue #INStones of Binding#, no Circle of Inner Binding #COORD[36,57]#. PULE #SKIPBreaking the Keystone# (Elite), a menos que consiga um grupo.", x = 36, y = 57, zone = "Arathi Highlands" },
			[17] = { str = "Use Hearthstone pra Hammerfall." },
			[18] = { str = "Entregue #INFoul Magics#, #INGuile of the Raptor# e #INCall to Arms pt.2# " },
			[19] = { str = "Complete a cadeia de quests #DOGuile of the Raptor# indo e voltando." },
			[20] = { str = "Voe pra Tarren Mill." },
		}
	},
	[3736] = {
		title = "37-37 Alterac Mountains",
		--L- Needs playtest
		items = {
			[1] = { str = "37-37 Alterac Mountains" },
			[2] = { str = "Quando chegar em Tarren Mill, aceite #GETStone Tokens# e #GETPrison Break In#, depois va fazer em Alterac Mountains em Dalaran." },
			[3] = { str = "Depois entregue e aceite #GETDalaran Patrols# e #GETBracers of Binding#, fazendo um pouco mais ao norte que as duas ultimas." },
			[4] = { str = "Quando ambas estiverem completas, morra de proposito, pra acabar em Tarren Mill." },
			[5] = { str = "Entregue, depois voe pra Undercity." },
			[6] = { str = "Quando chegar em Undercity, entregue #INTo Steal From Thieves# e compre 3x#NPCSoothing Spices" },
			[7] = { str = "Pegue o zeppelin pra Orgrimmar." },
			[8] = { str = "Quando chegar em Orgrimmar, entregue #INAlliance Relations# em #NPCKeldran# em #COORD[21,53]#", x = 21, y = 53, zone = "Orgrimmar" },
			[9] = { str = "Voe pra Crossroads, sete seu Hearthstone la." },
			[10] = { str = "Voe pra Freewind Post (Thousand Needles)." },
		}
	},
	[3737] = {
		title = "37-37 Thousand Needles",
		--L- Needs playtest
		items = {
			[1] = { str = "37-37 Thousand Needles" },
			[2] = { str = "Va em direcao ao Shimmering Flats.." },
			[3] = { str = "Entregue #INThe Swarm Grows#, aceite #GETThe Swarm Grows pt.2# em #COORD[67,63]#", x = 67, y = 63, zone = "Thousand Needles" },
			[4] = { str = "Pare nos goblins e entregue #INParts for Kravel#, aceite #GETDelivery to the Gnomes#, entregue #INDelivery to the Gnomes#, entregue #INGoblin Sponsorship pt.3#, aceite #GETThe Eighteenth Pilot#, entregue #INThe Eighteenth Pilot#, aceite #GETRazzeric's Tweaking#, entregue #INEncrusted Tail Fins#, por ultimo aceite #GETThe Rumormonger#." },
			[5] = { str = "Faca #DOThe Swarm Grows# e #DOParts of the Swarm# (quest comeca de um item dropado) em #COORD[71,85]#", x = 71, y = 85, zone = "Thousand Needles" },
			[6] = { str = "Depois va entregar #INThe Swarm Grows# em #COORD[67,63]#", x = 67, y = 63, zone = "Thousand Needles" },
			[7] = { str = "Use Hearthstone pra Crossroads" },
			[8] = { str = "Entregue #INParts of the Swarm#, aceite #GETParts of the Swarm pt.2#" },
			[9] = { str = "Voe pra Dustwallow Marsh." },
		}
	},
	[3738] = {
		title = "37-38 Dustwallow Marsh",
		--L- Needs playtest
		items = {
			[1] = { str = "37-38 Dustwallow Marsh" },
			[2] = { str = "Aceite #GETTheramore Spies# e #GETThe Black Shield pt.3# " },
			[3] = { str = "Va um pouco ao sul de Brackenwall Village e aceite #GETHungry!# do ogro em #COORD[35,37]#", x = 35, y = 37, zone = "Dustwallow Marsh" },
			[4] = { str = "Faca #DOTheramore Spies# e #DOThe Black Shield pt.3#. Faca #DOHungry!# em #COORD[58,23]#", x = 58, y = 23, zone = "Dustwallow Marsh" },
		--L- Is Hungry available elysium?
			[5] = { str = "Pare na cabana do Jarl #COORD[55,25]#, pegue #GETThe Lost Report# clicando no monte de terra ao lado da cabana, entregue #INSoothing Spices# e aceite #GETJarl Needs Eyes#.", x = 55, y = 25, zone = "Dustwallow Marsh" },
			[6] = { str = "Va pro sul em #COORD[54,56]# pra pegar o #ITEM[Seaforium Booster]# pro Razzeric.", x = 54, y = 56, zone = "Dustwallow Marsh" },
			[7] = { str = "Faca #DOJarl Needs Eyes#." },
			[8] = { str = "Faca a quest de escolta #DOStinky's Escape# que comeca em #COORD[47,18]#.", x = 47, y = 18, zone = "Dustwallow Marsh" },
			[9] = { str = "Pare em Brackenwall Village e entregue todas as quests, aceite novas. Entregue #INHungry!#" },
			[10] = { str = "Va ate a cabana do Jarl em #COORD[55,25]#, va ate o #ITEMDirt Mound# de novo pra pegar #GETThe Severed Head#, entregue #INJarl Needs Eyes#, PULE #SKIPJarl Needs a Blade#", x = 55, y = 25, zone = "Dustwallow Marsh" },
			[11] = { str = "Grinde um pouco nos raptors e tal, nesse ponto voce deveria estar um pouco acima da metade do caminho pro 39." },
			[12] = { str = "Faca #DOThe Theramore Docks#, o #ITEM[Captain's Documents]# esta debaixo d'agua em #COORD[71,51]#" , x = 71, y = 51, zone = "Dustwallow Marsh" },
			[13] = { str = "Depois morra de proposito, pra acabar em Brackenwall Village." },
			[14] = { str = "Entregue #INThe Theramore Docks# e #INThe Severed Head#, aceite #GETThe Troll Witchdoctor#" },
			[15] = { str = "Use Hearthstone pra Crossroads, voe pra Ratchet e entregue #INStinky's Escape#, depois pegue o barco pra Booty Bay." },
		}
	},
	[3840] = {
		title = "38-40 Stranglethorn Vale",
		--L- Needs playtest
		items = {
			[1] = { str = "38-40 Stranglethorn Vale" },
			[2] = { str = "Aceite #GETThe Bloodsail Buccaneers#, #GETVenture Company Mining# e #GETScaring Shaky#." },
			[3] = { str = "Sete seu Hearthstone em Booty Bay, depois suba as escadas e entregue #INThe Rumormonger#. Voe pra Grom'gol." },
			[4] = { str = "Aceite #GETMok'thardin's Enchantment#, entregue #INThe Troll Witchdoctor#, depois clique com o botao direito no caldeirao e aceite #GETMarg Speaks#." },
		--L- Is this available elysium?
			[5] = { str = "Faca #DORaptor Mastery# junto com #DOMok'thardin's Enchantment# em #COORD[31,41]#, mate #NPCJungle Stalkers#.", x = 31, y = 41, zone = "Stranglethorn Vale" },
			[6] = { str = "Grinde em raptors/cold eye basilisks ate level 39." },
			[7] = { str = "Faca #DOVenture Company Mining# em #COORD[40,42]#", x = 40, y = 42, zone = "Stranglethorn Vale" },
			[8] = { str = "Quando terminar, volte pra Grom'Gol e entregue #INMok'thardin's Enchantment pt.2#, aceite #GETMok'thardin's Enchantment pt.3#." },
			[9] = { str = "Faca #DOPanther Mastery#, mate #NPCBhag'thera# (ele tem 3 pontos de spawn diferentes, #COORD[48,20]#, #COORD[49,23]#, e #COORD[47,26]#)", x = 48, y = 20, zone = "Stranglethorn Vale" },
			[10] = { str = "Entregue #INPanther Mastery# e #INRaptor Mastery# em Nesingwary's Expedition #COORD[35,10]#", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[11] = { str = "Aceite #GETRaptor Mastery# pro #NPCTethis#, mas nao faca agora." },
			[12] = { str = "Use Hearthstone pra Booty Bay, entregue #INVenture Company Mining#." },
			[13] = { str = "Va fazer #DOThe Bloodsail Buccaneers# a noroeste de Booty Bay em #COORD[27,69]#, tem uma notinha num barril, clique nela, aceite a nova quest. ", x = 27, y = 69, zone = "Stranglethorn Vale" },
			[14] = { str = "Faca #DOScaring Shaky# junto com #DOMok'thardin's Enchantment pt.3# em #COORD[32,66]#.", x = 32, y = 66, zone = "Stranglethorn Vale" },
			[15] = { str = "Volte pra Booty Bay, entregue #INScaring Shaky#, aceite #GETReturn to MacKinley#, entregue #INThe Bloodsail Buccaneers#, aceite #GETThe Bloodsail Buccaneers pt.2#, entregue #INReturn to MacKinley#, depois entregue #INThe Bloodsail Buccaneers# em #NPCFleet Master Seahorn#." },
			[16] = { str = "Voe pra Grom'gol, entregue #INMok'thardin's Enchantment pt.3#, aceite #GETMok'thardin's Enchantment pt.4#" },
			[17] = { str = "Voce deveria estar level 40 com certeza agora. Se nao, grinde o resto do caminho ate 40 em Raptors/Cold Eye Basilisks." },
			[18] = { str = "Depois pegue o zeppelin pra Undercity." },
			[19] = { str = "Verifique a Auction House por #ITEM[Frost Oil]#, #ITEM[Gyrochronatom]#, #ITEM[Healing Potion]#, #ITEM[Lesser Invisibility Potion]# e #ITEM[Patterned Bronze Bracers]# pra umas quests rapidas em Badlands." },
			[20] = { str = "Voe pra Hammerfall, depois va ate Badlands." },
		}
	},
}