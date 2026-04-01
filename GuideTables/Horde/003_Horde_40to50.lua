--[[--------------------------------------------------
003_Horde_40to50.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 40 to Lvl 50
    1.04.1
        -- First Release
            Horde's Guide
            from level 40 to lever 50
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
			Removed unavailable quests, and some elite quests
			Playtested every step.
------------------------------------------------------
Connection:
--]]--------------------------------------------------
Table_003_Horde_40to50 = {
	[4041] = {
		title = "40-41 Badlands",
		--L- Playtested, need a small fix at 6
		items = {
			[1] = { str = "40-41 Badlands" },
			[2] = { str = "O objetivo aqui e nao sair ate voce ser level 41, entao grinde mobs por onde voce for. Ao entrar em Badlands, va pro sudoeste ate #COORD[42,52]#.", x = 42, y = 52, zone = "Badlands" },
			[3] = { str = "Entregue #INMartek the Exiled# em #COORD[42,52]# , aceite #GETIndurium# e #GETBarbecued Buzzard Wings# ", x = 42, y = 52, zone = "Badlands" },
			[4] = { str = "Va pro sul um pouco e faca #DOIndurium# #COORD[51,67]#", x = 51, y = 67, zone = "Badlands" },
			[5] = { str = "Volte e entregue #INIndurium#, aceite #GETNews for Fizzle#." },
			[6] = { str = "Depois va pro noroeste e aceite #GETStudy of the Elements: Rock# em #COORD[25,44]#. NOTA: Se voce tiver o #ITEM[Frost Oil]#, o #ITEM[Gyrochronatom]#, a #ITEM[Healing Potion]#, a #ITEM[Lesser Invisibility Potion]# e os #ITEM[Patterned Bronze Bracers]#, aceite e complete todas as quests la.", x = 25, y = 44, zone = "Badlands" },
		--L- Needs to be split
			[7] = { str = "Grinde seu caminho pro oeste ate Kargath #COORD[04,46]#.", x = 4, y = 46, zone = "Badlands" },
			[8] = { str = "Pegue o flight path em Kargath. NAO sete Kargath como sua home, deveria ainda ser Booty Bay." },
			[9] = { str = "Aceite #GETCoyote Thieves#, #GETReport to Helgrum#, #GETBroken Alliances# e #GETBadlands Reagent Run#." },
			[10] = { str = "Va fazer #DOCoyote Thieves# e #DOBarbecued Buzzard Wings# perto de #COORD[14,60]#", x = 14, y = 60, zone = "Badlands" },
			[11] = { str = "Faca #DOBroken Alliances#, #NPC Tho'grun# patrulha a area em sentido anti-horario. (pule a proxima parte desta quest)." },
			[12] = { str = "Faca #DOBadlands Reagent Run#." },
			[13] = { str = "Faca #DOStudy of the Elements: Rock#, mate #NPCLesser Rock Elemental# em #COORD[19,43]#. Entregue, aceite a proxima.", x = 19, y = 43, zone = "Badlands" },
			[14] = { str = "Faca #DOStudy of the Elements: Rock#, mate #NPCRock Elemental# em #COORD[13,35]#. Entregue, aceite a proxima.", x = 13, y = 35, zone = "Badlands" },
			[15] = { str = "Faca #DOStudy of the Elements: Rock#, mate #NPCGreater Rock Elemental# em #COORD[8,84]#.", x = 8, y = 84, zone = "Badlands" },
			[16] = { str = "Depois certifique-se de que todas as quests de Badlands alem de #GETReport to Helgrum# estao feitas e entregues." },
			[17] = { str = "Voce deveria estar level 41 agora, se nao, grinde ate chegar." },
			[18] = { str = "Use Hearthstone pra BB e veja se voce tem #DODream Dust in the Swamp# no seu questlog. Se nao, va aceitar de #NPCKrazek# em #COORD[27,77]#", x = 27, y = 77, zone = "Stranglethorn Vale" },
			[19] = { str = "Voe pra Grom'gol." },
			[20] = { str = "Va entregar todos os #NPCThe Green Hills of Stranglethorn Chapters/Quests# em Nesingwary's Expedition #COORD[35,10]# se voce tiver todas as paginas, se nao voce tera outra chance de entregar depois. Voce tambem pode procurar no AH pelas paginas faltando.", x = 35, y = 10, zone = "Badlands" },
			[21] = { str = "Depois va correndo ate Swamp of Sorrows, parando no caminho pra aceitar #GETNothing But the Truth# em Duskwood em #COORD[87,35]#", x = 87, y = 35, zone = "Duskwood" },
			[22] = { str = "Entregue #INNothing But the Truth# pro cara do lado do questgiver. Pegue #GETNothing But the Truth pt.2#, depois va pra Swamp of Sorrows." },
		}
	},
	[4142] = {
		title = "41-42 Swamp of Sorrows",
		--L- Playtested, needs adjust, some of the quests at 13-16 can be grouped.
		items = {
			[1] = { str = "41-42 Swamp of Sorrows" },
			[2] = { str = "Comece fazendo #DODream Dust in the Swamp# #COORD[14,59]#.", x = 14, y = 59, zone = "Swamp of Sorrows" },
			[3] = { str = "#DONothing But the Truth# mate o #NPCMire Lord# pelo #ITEM[Mire Lord Fungus]# em #COORD[06,32]#", x = 6, y = 32, zone = "Swamp of Sorrows" },
			[4] = { str = "Encontre e mate #NPCCudgel#, ele dropa #ITEM[Noboru's Cudgel]#, que inicia #GETNoboru the Cudgel#. Spawna em #COORD[48,38]#, mas ronda a area.", x = 48, y = 38, zone = "Swamp of Sorrows" },
			[5] = { str = "Va entregar #INNoboru the Cudgel# #COORD[25,31]#, aceite #GETDraenethyst Crystals# ", x = 25, y = 31, zone = "Swamp of Sorrows" },
			[6] = { str = "Grinde seu caminho ate Stonard #COORD[45,54]#, sete como sua home, e pegue o flight path", x = 45, y = 54, zone = "Swamp of Sorrows" },
			[7] = { str = "Aceite #GETLack of Surplus# e #GETFresh Meat#, entregue #INReport to Helgrum#, aceite #GETPool of Tears# (Elite)." },
			[8] = { str = "Faca #DOPool of Tears#, #ITEM[Atal'ai Artifact]# e lootado na agua perto do temple of Atal'hakkar (Sunken Temple)." },
			[9] = { str = "Faca #DOLack of Surplus# depois entregue em #COORD[81,80]#, aceite #GETLack of Surplus pt.2# e va fazer.", x = 81, y = 80, zone = "Swamp of Sorrows" },
			[10] = { str = "Va fazer #DOFresh Meat# e #DONothing But the Truth#, coracoes de #NPCShadow Panthers#." },
			[11] = { str = "Faca #DODraenethyst Crystals#, depois entregue em #COORD[25,31]#", x = 25, y = 31, zone = "Swamp of Sorrows" },
			[12] = { str = "Faca #DOOngeku#." },
			[13] = { str = "Entregue #INLack of Surplus pt.2#, aceite #GETThreat From the Sea#" },
			[14] = { str = "Entregue #INThreat From the Sea# depois aceite #GETThreat From the Sea pt.2#." },
			[15] = { str = "Va fazer #DOThreat From the Sea pt.2# junto com #DOFresh Meat#." },
			[16] = { str = "Entregue #INThreat From the Sea pt.2#, aceite #GETContinued Threat#." },
			[17] = { str = "Va fazer #DOContinued Threat# depois entregue." },
			[18] = { str = "Use Hearthstone pra Stonard." },
			[19] = { str = "Entregue #INFresh Meat# e #INPool of Tears#, aceite #GETThe Atal'ai Exile# " },
			[20] = { str = "Voce deveria estar level 42 agora, se nao, grinde ate chegar." },
			[21] = { str = "Voe pra Grom'gol." },
		}
	},
	[4243] = {
		title = "42-43 Stranglethorn Vale",
		--L- Playtested
		items = {
			[1] = { str = "42-43 Stranglethorn Vale" },
			[2] = { str = "Aceite #GETMok'thardin's Enchantment pt.4# e #GETSplit Bone Necklace#." },
			[3] = { str = "Voe pra Booty Bay, e aceite todas as quests, #GETThe Bloodsail Buccaneers#, #GETUp to Snuff#, #GETFool's Stout#, #GETAkiris by the Bundle#, #GETVoodoo Dues#, #GETStoley's Debt#, #GETStranglethorn Fever# e #GETKeep An Eye Out#" },
			[4] = { str = "Entregue #INDream Dust in the Swamp#, sete Booty Bay como sua home." },
			[5] = { str = "Faca #DOThe Bloodsail Buccaneers# junto com #DOUp to Snuff# e #DOKeep An Eye Out# Esses sao feitos na praia perto de #COORD[31,80]#, e mais mobs podem ser encontrados em #COORD[27,70]#.", x = 31, y = 80, zone = "Stranglethorn Vale" },
			[6] = { str = "Tambem faca #DOStranglethorn Fever#, voce vai precisar de 10x #ITEM[Gorilla Fang]#, e o #NPCWitch Doctor# esta na caverna em #COORD[34,60]#", x = 34, y = 60, zone = "Stranglethorn Vale" },
			[7] = { str = "Faca #DOMok'thardin's Enchantment pt.4# junto com #DOAkiris by the Bundle# #COORD[25,63]#", x = 25, y = 63, zone = "Stranglethorn Vale" },
			[8] = { str = "Faca #DOFool's Stout# junto com #DOVoodoo Dues# #COORD[34,52]# e #COORD[39,58]#", x = 34, y = 52, zone = "Stranglethorn Vale" },
			[9] = { str = "Faca #DOSkullsplitter Tusks# junto com #DOSplit Bone Necklace# em #COORD[46,42]#. Pule #DOSplit Bone Necklace# se voce chegar a 43 antes de pegar tudo.", x = 46, y = 42, zone = "Stranglethorn Vale" },
			[10] = { str = "Se nao estiver pelo menos 2-3 barras de 43, continue grindando ate estar, depois use Hearthstone pra Booty Bay." },
			[11] = { str = "Entregue TODAS as quests e certifique-se de aceitar #GETTran'Rek# e #GETRumors for Kravel# de #NPCKrazek#, e #GETWhiskey Slim's Lost Grog# de #NPCWhiskey Slim#." },
			[12] = { str = "Voe pra Grom'gol e entregue #INMok'thardin's Enchantment pt.4# e #INSplit Bone Necklace#. Aceite #GETGrim Message#." },
			[13] = { str = "Pegue o zeppelin pra Orgrimmar" },
			[14] = { str = "La va ate #NPCBelgrom Rockmaul# em #COORD[75,34]# e aceite #GETA Threath in Feralas#", x = 75, y = 34, zone = "Orgrimmar" },
			[15] = { str = "Voe pra Thunder Bluff, pegue #ITEM[Frostmaw's Mane]# do banco se voce guardou la, depois entregue #INFrostmaw#, aceite #GETDeadmire# em #COORD[61,81]#.", x = 61, y = 81, zone = "Thunder Bluff" },
			[16] = { str = "Voe pra Desolace." },
		}
	},
	[4342] = {
		title = "43-43 Desolace",
		--L- Playtested and corrected
		items = {
			[1] = { str = "43-43 Desolace" },
			[2] = { str = "Sete Shadowprey Village como sua home." },
			[3] = { str = "Aceite #GETPortals of the Legion# em #COORD[26,68]#", x = 26, y = 68, zone = "Desolace" },
			[4] = { str = "Va entregar #INOngeku# em #COORD[36,79]#, PULE #SKIPKhan Jehn# ", x = 36, y = 79, zone = "Desolace" },
			[5] = { str = "Va ate Mannoroc Coven em #COORD[50,76]# e faca #DOPortals of the Legion# ", x = 50, y = 76, zone = "Desolace" },
			[6] = { str = "Depois use Hearthstone ou volte correndo pra Shadowprey Village" },
			[7] = { str = "Entregue #INPortals of the Legion# em #COORD[26,68]#", x = 26, y = 68, zone = "Desolace"},
			[8] = { str = "Voe pra Dustwallow Marsh." },
		}
	},
	[4343] = {
		title = "43-43 Dustwallow Marsh",
		--L- Playtested and corrected
		items = {
			[1] = { str = "43-43 Dustwallow Marsh" },
			--[2] = { str = "Accept #GETIdentifying the Brood# " },
			[2] = { str = "Va ate #COORD[40,36]# e aceite #DOQuestioning Reethe# depois faca.", x = 40, y = 36, zone = "Dustwallow Marsh" },
			[3] = { str = "Va pro sul e faca #DODeadmire# perto de #COORD[47,55]#", x = 47, y = 55, zone = "Dustwallow Marsh" },
			[4] = { str = "Faca #DOMarg Speaks#, mate os mobs perto de #COORD[58,63]#", x = 58, y = 63, zone = "Dustwallow Marsh" },
			--[6] = { str = "Do #DOIdentifying the Brood# at #COORD[46,68]#.", x = 46, y = 68, zone = "Dustwallow Marsh" },
			[5] = { str = "Depois grinde seu caminho de volta pra Brackenwall Village." },
			--[8] = { str = "Turn in #INQuestioning Reethe# and #INIdentifying the Brood#, accept #GETThe Brood of Onyxia# " },
			--[9] = { str = "Run back and forth completing #DOThe Brood of Onyxia# and #DOThe Brood of Onyxia pt.2#. Skip #SKIPThe Brood of Onyxia pt.3#" },
			[6] = { str = "Entregue #INMarg Speaks#, aceite #GETReport to Zor#." },
			[7] = { str = "Voe pra Tanaris." },
		}
	},
	[4344] = {
		title = "43-44 Tanaris",
		--L- Playtested and corrected
		items = {
			[1] = { str = "43-44 Tanaris" },
			[2] = { str = "Entre em Gadgetzan, sete como sua home." },
			[3] = { str = "Aceite: #GETWANTED: Caliph Scorpidsting# e #GETWANTED: Andre Firebeard# do #ITEMWanted! Poster#." },
			[4] = { str = "Entregue #INTran'Rek#, aceite #GETGadgetzan Water Survey#, #GETWastewander Justice# e #GETWater Pouch Bounty#." },
			[5] = { str = "Va ate Shimmering Flats em Thousand Needles, em #COORD[78,77]# e entregue #INRumors for Kravel#, #INNews for Fizzle# e #INRazzeric's Tweaking#, aceite #GETSafety First#.", x = 53, y = 76, zone = "Tanaris" },
			[6] = { str = "Aceite #GETKeeping Pace#, Entregue #INKeeping Pace# em #NPCZamek#, depois va pegar #ITEM[Rizzle's Plans]# em #COORD[77,77]#, aceite #GETRizzle's Schematics#." },
			[7] = { str = "Aceite #GETBack to Booty Bay# em #NPCKravel Koalbeard#, entregue #INRizzle's Schematics# em #NPCPozzik#." },
			[8] = { str = "Use Hearthstone de volta pra Gadgetzan." },
			[9] = { str = "Entregue #INSafety First#. #SKIPPULE a proxima parte desta quest#." },
			[10] = { str = "Depois grinde seu caminho pro leste ate Steamwheedle Port em #COORD[67,23]#", x = 67, y = 23, zone = "Tanaris" },
			[11] = { str = "Aceite #GETPirate Hats Ahoy!# e #GETScreecher Spirits#, entregue #INStoley's Debt# e aceite #GETStoley's Shipment#" },
			[12] = { str = "Faca #DOWastewander Justice# junto com #DOWater Pouch Bounty# em #COORD[64,29]# ou #COORD[60,23]#", x = 64, y = 29, zone = "Tanaris" },
			[13] = { str = "Depois faca o seguinte em Lost Rigger Cove #COORD[72,47]#; #DOPirate Hats Ahoy!#, #DOStoley's Shipment# e #DOWANTED: Andre Firebeard# ", x = 72, y = 47, zone = "Tanaris" },
			[14] = { str = "#DOShip Schedules# (encontre isso em um dos #ITEMPirate's footlocker#, lootado dos mobs em Lost Rigger Cove. Se o item nao for encontrado, apenas pule)" },
			[15] = { str = "Quando todos estiverem prontos, use Hearthstone pra Gadgetzan." },
			[16] = { str = "Entregue #INWater Pouch Bounty#, #INWastewander Justice#, aceite #GETMore Wastewander Justice#. Guarde os #ITEM[Wastewander Water Puch]# restantes." },
			[17] = { str = "Va fazer #DOGadgetzan Water Survey# em #COORD[38,29]#, grindando mobs no caminho. Depois volte e entregue.", x = 38, y = 29, zone = "Tanaris" },
			[18] = { str = "Va ate Steamwheedle Port. #COORD[67,23]#", x = 67, y = 23, zone = "Tanaris" },
			[19] = { str = "Entregue TODAS as quests la, aceite #GETDeliver to MacKinley#." },
			[20] = { str = "Depois faca #DOMore Wastewander Justice# junto com #DOWANTED: Caliph Scorpidsting# em #COORD[59,37]#.", x = 59, y = 37, zone = "Tanaris" },
			[21] = { str = "Use Hearthstone pra Gadgetzan. Coloque todos os #ITEM[Wastewander Water Pouches]# que voce tem no banco, pois voce vai precisar pra uma quest depois." },
			[22] = { str = "Entregue #INMore Wastewander Justice# e #INWANTED: Caliph Scorpidsting#." },
			[23] = { str = "Voe pra Freewind Post." },
			[24] = { str = "Va pro oeste ate Feralas, #COORD[08,11]#", x = 8, y = 11, zone = "Thousand Needles" },
		}
	},
	[4446] = {
		title = "44-46 Feralas",
		--L- Playtested and corrected, needs a check @ 27
		items = {
			[1] = { str = "44-46 Feralas" },
			[2] = { str = "Va ate Camp Mojache. #COORD[75,44]#", x = 75, y = 44, zone = "Feralas" },
			[3] = { str = "Entregue #INA Threat in Feralas#" },
			[4] = { str = "Aceite TODAS as quests la: #GETA New Cloak's Sheen#, #GETThe Ogres of Feralas#, #GETGordunni Cobalt#, #GETWar on the Woodpaw#, #GETThe Mark of Quality# e #GETA Strange Request#. Pule #SKIPNatural Materials# por enquanto." },
			[5] = { str = "Pegue o flight path, e sete Camp Mojache como sua home." },
			[6] = { str = "Depois faca #DOWar on the Woodpaw# logo ao norte de Camp Mojache, #COORD[72,39]#", x = 72, y = 39, zone = "Feralas" },
			[7] = { str = "Faca #DOThe Ogres of Feralas# junto com #DOGordunni Cobalt# #COORD[75,31]#. Certifique-se de clicar em um dos scrolls no chao pra iniciar #GETThe Gordunni Scroll#.", x = 75, y = 31, zone = "Feralas" },
			[8] = { str = "Depois faca #DOA New Cloak's Sheen# #COORD[67,48]#", x = 67, y = 48, zone = "Feralas" },
			[9] = { str = "Volte pra Camp Mojache, entregue TODAS as quests, aceite todas as novas: #GETDark Ceremony#, #GETThe Ogres of Feralas#, #GETA Grim Discovery# e #GETAlpha Strike#" },
			[10] = { str = "Va fazer #DOAlpha Strike# em #COORD[72,56]# depois entregue. Aceite #GETWoodpaw Investigation#.", x = 72, y = 56, zone = "Feralas" },
			[11] = { str = "Va entregar #INWoodpaw Investigation# em #COORD[72,56]#, clique nos #ITEM[Woodpaw Battle Plans]# em cima de uma caixa, aceite #GETThe Battle Plans# ", x = 72, y = 56, zone = "Feralas" },
			[12] = { str = "Depois va fazer #DOA Grim Discovery# #COORD[67,46]#", x = 67, y = 46, zone = "Feralas" },
			[13] = { str = "Use Hearthstone de volta pra Camp Mojache, entregue #INThe Battle Plans# e #INA Grim Discovery#, aceite todas as novas quests: #GETStinglasher#, #GETZukk'ash Infestation# e #GETA Grim Discovery#." },
			[14] = { str = "Se #ITEM[OOX-22/FE Distress Beacon]# dropar, aceite a quest #GETFind OOX-22/FE!# . Entregue #INFind OOX-22/FE!# em #COORD[53,55]#.", x = 53, y = 55, zone = "Feralas" },
			[15] = { str = "Depois va fazer o seguinte: #DOStinglasher# junto com #DOZukk'ash Infestation# #COORD[77,62]#", x = 77, y = 62, zone = "Feralas" },
			[16] = { str = "#DOScreecher Spirits# #COORD[55,56]#", x = 55, y = 56, zone = "Feralas" },
			[17] = { str = "#DOThe Mark of Quality# #COORD[53,55]#", x = 53, y = 55, zone = "Feralas" },
			[18] = { str = "#DOThe Ogres of Feralas# parte 2 #COORD[59,68]#", x = 59, y = 68, zone = "Feralas" },
			[19] = { str = "#DODark Ceremony# #COORD[59,68]#, mate Gordunni Mage-Lord", x = 59, y = 68, zone = "Feralas" },
			[20] = { str = "Certifique-se de pegar um #ITEM[Hippogryph Egg]# no sudoeste perto de #COORD[59,76]# (lootado de um ninho), isso sera entregue em Tanaris pra uma quest depois.", x = 53, y = 76, zone = "Feralas" },
			[21] = { str = "Volte pra Camp Mojache, depois va entregar essas quests. Aceite #GETThe Gordunni Orb#" },
			[22] = { str = "Voe pra Orgrimmar." },
			[23] = { str = "Aceite #GETRipple Recovery# de #NPCDran Droffers# em #COORD[59,36]#", x = 59, y = 36, zone = "Orgrimmar" },
			[24] = { str = "Depois entregue #INRipple Recovery# pro cara do lado de #NPCDran#, aceite #GETRipple Recovery# de novo." },
			[25] = { str = "Entregue #INParts of the Swarm# e #INA Grim Discovery# em #NPCBelgrom Rockmaul#, aceite #GETBetrayed# #COORD[75,34]#.", x = 75, y = 34, zone = "Orgrimmar" },
			[26] = { str = "Va entregar #INA Strange Request#, aceite #GETRetrun to Witch Doctor Uzer'i# em Cleft of Shadow, #COORD[49,50]#", x = 49, y = 50, zone = "Orgrimmar" },
			[27] = { str = "Va entregar #GETReport to Zor#, aceite/complete #DOService to the Horde# em Valley of Wisdom, #COORD[38,38]#.", x = 38, y = 38, zone = "Orgrimmar" },
		--L- Needs to be checked
			[28] = { str = "Va entregar #INThe Gordunni Orb# em Valley of Spirits, #COORD[39,86]#", x = 39, y = 86, zone = "Orgrimmar" },
			[29] = { str = "Tambem pegue novas spells/habilidades enquanto voce esta em Orgrimmar.", x = 37, y = 87, zone = "Orgrimmar" },
			[30] = { str = "Voce deveria ter 90+ gold agora, entao va comprar sua mount!" },
			[31] = { str = "Use Hearthstone de volta pra Feralas." },
			[32] = { str = "Entregue #INRetrun to Witch Doctor Uzer#, aceite #GETNatural Materials# e #GETTesting the Vessel# " },
			[33] = { str = "Depois faca #DONatural Materials#. Mate #NPCSprite Darters# em #COORD[68,48]# pelos #ITEM[Encrusted Minerals]#.", x = 68, y = 48, zone = "Feralas" },
			[34] = { str = "Mate #NPCWandering Forest Walker# (Elite) em #COORD[57,73]# pelo #ITEM[Splintered Log]#. Voce vai ter que esperar o respawn, entao enquanto isso faca o proximo passo.", x = 57, y = 73, zone = "Feralas" },
			[35] = { str = "Mate #NPCHippogryphs# em #COORD[56,62]# e ao sul pelos #ITEM[Resillent Sinew]# e #ITEM[Metallic Fragments]#.", x = 56, y = 62, zone = "Feralas" },
			[36] = { str = "Se voce nao esta level 46, continue grindando Hippogryphs ate chegar." },
			[37] = { str = "Se #ITEM[OOX-22/FE Distress Beacon]# dropar, aceite a quest #GETFind OOX-22/FE!# . Entregue #INFind OOX-22/FE!# em #COORD[53,55]#.", x = 53, y = 55, zone = "Feralas" },
			[38] = { str = "Use Hearthstone ou volte correndo pra Camp Mojache." },
			[39] = { str = "Entregue #INNatural Materials#, aceite #GETThe Sunken Temple#." },
			[40] = { str = "Voe pra Thunder Bluff" },
			[41] = { str = "Entregue #INDeadmire# em #COORD[61,81]#.", x = 61, y = 81, zone = "Thunder Bluff" },
			[42] = { str = "Voe pra Splintertree Post (Ashenvale)" },
			[43] = { str = "Depois va pro leste ate Azshara, tem uma ponte logo a leste de #COORD[92,46]#", x = 92, y = 46, zone = "Ashenvale" },
		}
	},
	[4646] = {
		title = "46-46 Azshara",
		--L- Playtested and corrected
		items = {
			[1] = { str = "46-46 Azshara" },
			[2] = { str = "Va aceitar #DOSpiritual Unrest# e #DOA Land Filled with Hatred# em #COORD[11,78]#", x = 11, y = 78, zone = "Azshara" },
			[3] = { str = "Va fazer em #COORD[17,71]# e #COORD[20,62]#, depois volte e entregue.", x = 17, y = 71, zone = "Azshara" },
			[4] = { str = "Va ate Valormok em #COORD[22,52]#", x = 22, y = 52, zone = "Azshara" },
			[5] = { str = "Entregue #INBetrayed#, #SKIPpule a proxima parte desta quest#." },
			[6] = { str = "Pegue o FP la e voe pra Orgrimmar." },
			[7] = { str = "Pegue o Zeppelin pra Undercity." },
			[8] = { str = "Va ate o Magic Quarter e aceite #GETLines of Communication# em #COORD[73,32]#", x = 73, y = 32, zone = "Undercity" },
			[9] = { str = "Va pra Apothecarium e aceite #GETSeeping Corruption# e #GETErrand for Apothecary Zinge#, la embaixo #COORD[49,70]#", x = 49, y = 70, zone = "Undercity" },
			[10] = { str = "Va entregar #GETErrand for Apothecary Zinge# em #COORD[58,55]#", x = 58, y = 55, zone = "Undercity" },
			[11] = { str = "Depois volte pro apothecary, entregando #INErrand for Apothecary Zinge#, aceite #GETInto the Field#", x = 49, y = 70, zone = "Undercity" },
			[12] = { str = "Voce pode colocar o #ITEM[Field Testing Kit]# e a #ITEM[Box of Empty Vials]# no Banco por enquanto."},
			[13] = { str = "Voe pra Tarren Mill e sete como sua home."},
			[14] = { str = "Va pra Hinterlands. Tem uma passagem perto de #COORD[85,32]#", x = 85, y = 32, zone = "Hillsbrad Foothills" },
		}
	},
	[4647] = {
		title = "46-47 Hinterlands",
		--L- Playtested and corrected
		items = {
			[1] = { str = "46-47 Hinterlands" },
			[2] = { str = "Va entregar #INRipple Recovery# em #COORD[27,49]#, aceite #GETA Sticky Situation# ", x = 27, y = 49, zone = "The Hinterlands" },
			[3] = { str = "Va cavalgando ate Revantusk Village em #COORD[77,80]#, pegue o flight path la, nas docas.", x = 77, y = 80, zone = "The Hinterlands" },
			[4] = { str = "Aceite #GETVilebranch Hooligans#, #GETCannibalistic Cousins#, #GETMessage to the Wildhammer#, #GETStalking the Stalkers#, #GETHunt the Savages# e #GETAvenging the Fallen# " },
			[5] = { str = "Depois va fazer #DOWhiskey Slim's Lost Grog#, #DOVilebranch Hooligans#, #DOCannibalistic Cousins# #DOStalking the Stalkers#, #DOHunt the Savages#, #DOTesting the Vessel#, #DOAvenging the Fallen#, #DOLines of Communication#, #DOMessage to the Wildhammer# e #DOA Sticky Situation# - entregue quando voce estiver na area." },
			[6] = { str = "Faca #DORin'ji is Trapped!#, quest de escolta que comeca em #COORD[31,48]#", x = 31, y = 48, zone = "The Hinterlands" },
			[7] = { str = "Faca #DOGrim Message#, certifique-se de aceitar #GETVenom Bottles# de uma daquelas garrafinhas na mesa. Coloque #ITEM[Nimboya's Laden Pike]# em #COORD[32,58]#", x = 32, y = 58, zone = "The Hinterlands" },
			[8] = { str = "Se #ITEMOOX-09/HL Distress Beacon# dropar, aceite a quest #GETFind OOX-09/HL!#. Entregue em #COORD[49,38]#", x = 49, y = 38, zone = "The Hinterlands" },
			[9] = { str = "Entregue #INRin'ji is Trapped!# em #COORD[86,59]#, aceite #GETRin'ji's Secret# ", x = 86, y = 59, zone = "The Hinterlands" },
			[10] = { str = "Va ate Revantusk Village, e entregue TODAS as quests." },
			[11] = { str = "Depois va ate o flight path, e voe pra Tarren Mill." },
			[12] = { str = "Entregue #INVenom Bottles#, aceite #GETUndamaged Venom Sac# " },
			[13] = { str = "Depois volte cavalgando pra Hinterlands, nao voe!" },
			[14] = { str = "Va fazer #DOUndamaged Venom Sac#, entregue #INThe Atal'ai Exile#, aceite #GETReturn to Fel'Zerul#" },
			[15] = { str = "Quando terminar, use Hearthstone pra Tarren Mill." },
			[16] = { str = "Entregue #INUndamaged Venom Sac#, PULE #SKIPConsult Master Gadrin# So aceite esta quest se voce ainda precisa comprar uma mount como orc/troll, pois voce entrega no mesmo lugar." },
			[17] = { str = "Voe pra Undercity." },
			[18] = { str = "Entregue #INLines of Communication# e #INRin'ji's Secret#. " },
			[19] = { str = "Pegue 15x #ITEM[Silk Cloth]# do banco/AH pra uma quest depois." },
			[20] = { str = "Pegue o zeppelin pra Grom'gol." },
		}
	},
	[4747] = {
		title = "47-47 Stranglethorn Vale",
		--L- Playtested and corrected
		items = {
			[1] = { str = "47-47 Stranglethorn Vale" },
			[2] = { str = "Entregue #INGrim Message#."},
			[3] = { str = "Va fazer #DORaptor Mastery#, mate #NPCTethis# em #COORD[28,44]#, e va entregar", x = 28, y = 44, zone = "Stranglethorn Vale" },
			[4] = { str = "Aceite #GETBig Game Hunter# (Elite), va fazer, depois entregue." },
			[5] = { str = "Va ate Grom'gol depois voe pra Booty Bay." },
			[6] = { str = "Aceite #GETThe Bloodsail Buccaneers pt.5#, entregue #INWhiskey Slim's Lost Grog#." },
			[7] = { str = "Sete Booty Bay como sua home." },
			[8] = { str = "Entregue #INBack to Booty Bay# e #INDeliver to MacKinley# " },
			[9] = { str = "Encontre #ITEM[Half-Buried Bottle]# na praia a leste de Booty Bay #COORD[33,76]#, ate #ITEM[Carefully Folded Note]# dropar, que inicia #GETMessage in a Bottle# ", x = 33, y = 76, zone = "Stranglethorn Vale" },
			[10] = { str = "Va entregar #INMessage in a Bottle# em #COORD[38,80]# #SKIPPULE a proxima parte#, e um elite 51.", x = 38, y = 80, zone = "Stranglethorn Vale" },
			[11] = { str = "Depois va fazer #DOThe Bloodsail Buccaneers pt.5#, mate os tres piratas nos tres navios, enquanto faz isso, encontre #GETCortello's Riddle#, geralmente e um scrollzinho la embaixo no navio do meio." },
			[12] = { str = "Depois use Hearthstone de volta pra Booty Bay, se o Hearthstone ainda estiver em cooldown, morra de proposito." },
			[13] = { str = "Entregue #INThe Bloodsail Buccaneers pt.5#" },
			[14] = { str = "Voe pra Kargath (Badlands)." },
			[15] = { str = "Entre em Searing Gorge pela passagem em #COORD[03,62].", x = 3, y = 62, zone = "Badlands" },
		}
	},
	[4748] = {
		title = "47-48 Searing Gorge",
		--L- Playtested and massively corrected
		items = {
			[1] = { str = "47-48 Searing Gorge" },
			[2] = { str = "Va pro sudeste e faca #DOCaught!#, cara na casinha #COORD[65,62]#, depois entregue. Aceite #GETLedger from Tanaris#, pegue o #ITEM[Goodsteel Ledger]# do lado da casinha.", x = 65, y = 62, zone = "Searing Gorge" },
			[3] = { str = "Mate #NPCGlassweb Spiders# pra quest #DOLedger from Tanaris#." },
			[4] = { str = "Fale com #NPCKalaran Windblade# em #COORD[39,38]# no seu caminho ate Thorium Point #COORD[35,25]#. Ouca ele pra fazer #DODivine Retribution#, complete e pegue #GETThe Flawless Flame#.", x = 35, y = 25, zone = "Searing Gorge" },
			[5] = { str = "Va ate Thorium Point, pegue o flight path, e aceite #GETWhat the Flux?#.", x = 35, y = 25, zone = "Searing Gorge" },
			[6] = { str = "Faca #DOWhat the Flux?# -os planos estao logo atras de #NPCOverseer Maltorius#, e #DOThe Flawless Flame# matando #NPCHeavy War Golem# e #NPCBlazing/Magma Elemental#." },
			[7] = { str = "Entregue #INThe Flawless Flame# e aceite #GETForging the Shaft#, va entregar #INWhat the Flux?#, e aceite #GETJOB OPPORTUNITY: Culling the Competition# da #ITEMSign#." },
			[8] = { str = "Va fazer #DOForging the Shaft# e #DOJOB OPPORTUNITY: Culling the Competition#." },
			[9] = { str = "Se #ITEM[Grimeslit Outhouse Key]# dropar, aceite a quest, e va entregar na casinha em #COORD[65,62]#. Se voce estiver longe de 48, voce pode grindar um pouco por ela.", x = 65, y = 62, zone = "Searing Gorge" },
			[10] = { str = "Entregue #INForging the Shaft#, PULE #SKIPThe Flame's Casing#, entregue #INJOB OPPORTUNITY: Culling the Competition#." },
			[11] = { str = "Certifique-se de ter todos os 20 #ITEM[Solid Crystal Leg Shaft]#, depois va pro sul ate Burning Steppes, via Black Rock Mountains #COORD[34,77]#.", x = 34, y = 77, zone = "Searing Gorge" },
			[12] = { str = "Pegue o flight path la em #COORD[65,25]#, e voe direto pra Stonard (Swamp of Sorrows).", x = 65, y = 25, zone = "Burning Steppes" },
		}
	},
	[4848] = {
		title = "48-48 Swamp of Sorrows",
		--L- Playtested and corrected
		items = {
			[1] = { str = "48-48 Swamp of Sorrows" },
			[2] = { str = "NAO sete Stonard como sua home, deveria ainda ser Booty Bay." },
			[3] = { str = "Va ate o #NPCFallen Hero of the Horde# #COORD[34,66]#, continue falando com ele ate voce pegar a quest #GETThe Disgraced One# ", x = 34, y = 66, zone = "Swamp of Sorrows" },
			[4] = { str = "Depois va fazer #DOCortello's Riddle# em #COORD[22,48]#, embaixo da ponte clique em #ITEM[A Soggy Scroll]#. Aceite #GETCortello's Riddle pt.2#", x = 22, y = 48, zone = "Swamp of Sorrows" },
			[5] = { str = "Volte pra Stonard e entregue #INThe Disgraced One# e #INReturn to Fel'Zerul#. Aceite #GETThe Missing Orders#" },
			[6] = { str = "Va entregar #INThe Missing Orders# na inn, aceite #GETThe Swamp Talker# " },
			[7] = { str = "Va fazer #DOThe Swamp Talker# na caverna em #COORD[65,78]#", x = 65, y = 78, zone = "Swamp of Sorrows" },
			[8] = { str = "Depois va pro nordeste e mate o mob #NPCJarquia# perto de #COORD[94,50]# ou #COORD[92,65]#, ele dropa #ITEMGoodsteel's Balanced Flameberge# pra quest #DOLedger from Tanaris# ", x = 94, y = 50, zone = "Swamp of Sorrows" },
			[9] = { str = "Va ate o #NPCFallen Hero of the Horde# #COORD[34,66]# e entregue #INThe Swamp Talker#. Aceite e faca #DOA Tale of Sorrow#, apenas fale com ele. PULE #SKIPThe Stones That Binds Us#.", x = 34, y = 66, zone = "Swamp of Sorrows" },
			[10] = { str = "Use Hearthstone pra Booty Bay, e pegue o barco pra Ratchet." },
			[11] = { str = "Voe pra Brackenwall Village (Dustwallow Marsh)." },
			--[11] = { str = "Fly to Brackenwall Village (Dustwallow Marsh). Once there accept #GETThe Brood of Onyxia pt.3# " },
			[12] = { str = "Va pro sul e pegue o #ITEMOverdue Package# pra quest #DOLedger from Tanaris# em #COORD[54,55]#", x = 54, y = 55, zone = "Dustwallow Marsh" },
			--[13] = { str = "Go down a bit and do #DOThe Brood of Onyxia#, the #ITEM[Eggs of Onyxia]# can be found at #COORD[53,72]# and #COORD[48,75]#", x = 53, y = 72, zone = "Dustwallow Marsh" },
			[13] = { str = "Depois va ate a caverna Bloodfen Burrow #COORD[32,66]#, e faca #DOCortello's Riddle#, clique no #ITEM[Musty Scroll] dentro da caverna, entregue e aceite a proxima parte.", x = 32, y = 66, zone = "Dustwallow Marsh" },
			--[15] = { str = "Turn in #INThe Brood of Onyxia#, accept #GETChallenge Overlord Mok'Morokk#. Do #DOChallenge Overlord Mok'Morokk# Then turn it in." },
			[14] = { str = "Volte pra Brackenwall Village, depois voe pra Gadgetzan (Tanaris)." },
			[15] = { str = "Entregue #INLedger from Tanaris# e #INInto the Field#, aceite e complete #DOSlake that Thirst# usando #ITEM[Wastewander Water Pouch]# do seu banco. Coloque o #ITEM[Power Source]# no banco por enquanto." },
			[16] = { str = "Voe pra Camp Mojache (Feralas)." },
		}
	},
	[4849] = {
		title = "48-49 Feralas",
		--L- Playtested and corrected
		items = {
			[1] = { str = "48-49 Feralas" },
			[2] = { str = "Sete Camp Mojache como sua home. Entregue #INTesting the Vessel#, aceite #GETHippogryph Muisek#, #GETVengeance on the Northspring# e #GETDark Heart# (Elite)." },
		--L-  ,  #GETImproved Quality# not available!?
			[3] = { str = "Va fazer #DOHippogryph Muisek# em #COORD[56,63]#", x = 56, y = 63, zone = "Feralas" },
			[4] = { str = "Use Hearthstone de volta pra Camp Mojache, Entregue #INHippogryph Muisek# e aceite #GETFaerie Dragon Muisek#." },
			[5] = { str = "Va fazer #DOFaerie Dragon Muisek# em #COORD[68,48]#, entregue, aceite #GETTreant Muisek# (Elite).", x = 68, y = 48, zone = "Feralas" },
			[6] = { str = "Va fazer #DOTreant Muisek# (Elite) em #COORD[57,73]#, entregue, aceite #GETMountain Giant Muisek# (Elite).", x = 57, y = 73, zone = "Feralas" },
			[7] = { str = "Va aceitar #GETZapped Giants# em #COORD[45,43]#.", x = 45, y = 43, zone = "Feralas" },
			[8] = { str = "Faca #DOMountain Giant Muisek# (Elite) junto com #DOZapped Giants# em #COORD[39,21]#. Zape depois mate os #NPCCliff Giants#, pra deixa-los mais faceis de matar.", x = 39, y = 21, zone = "Feralas" },
			[9] = { str = "Faca #DOVengeance on the Northspring# e #DODark Heart# (Elite)." },
		--L- #DOImproved Quality#, #DOPerfect Yeti Hide#, not available! 1.12.2!?
			[10] = { str = "Volte correndo e entregue #INZapped Giants#, depois use Hearthstone pra Camp Mojache." },
			[11] = { str = "Entregue #INMountain Giant Muisek# (Elite), aceite #GETWeapons of Spirit#, depois entregue." },
			[12] = { str = "Entregue #INVengeance on the Northspring# e #INDark Heart#." },
			[13] = { str = "Aceite #GETThe Strength of Corruption#." },
			[14] = { str = "Voe pra Gadgetzan (Tanaris)." },
		}
	},
	[4950] = {
		title = "49-50 Tanaris",
		--L- Needs playtest
		items = {
			[1] = { str = "49-50 Tanaris" },
			[2] = { str = "Va ate a maquina #ITEMEgg-O-Matic# em Gadgetzan, e entregue o #ITEM[Hippogryph Egg]# pra #DOThe Super Egg-O-Matic#." },
			[3] = { str = "Sete Gadgetzan como sua home." },
			[4] = { str = "Aceite #GETThe Thirsty Goblin#, #GETNoxious Lair Investigation#, #GETSuper Sticky#, #GETThistleshrub Valley# e #GETThe Dunemaul Compound#." },
			[5] = { str = "Va entregar #INThe Sunken Temple# em #COORD[53,46]#, aceite #GETThe Stone Circle# e #GETGahz'ridian#.", x = 52, y = 45, zone = "Tanaris" },
			[6] = { str = "Faca #DOThe Dunemaul Compound# na area em #COORD[40,58]#, #NPCGor'marok# esta na caverna em #COORD[41,57]#. Procure por #ITEM[Gahz'ridian Ornaments]# pra #DOGahz'ridian# enquanto faz essas proximas quests.", x = 40, y = 58, zone = "Tanaris" },
			[7] = { str = "Faca #DONoxious Lair Investigation# em #COORD[34,47]#.", x = 34, y = 47, zone = "Tanaris" },
			[8] = { str = "Faca #DOThistleshrub Valley# junto com #DOThe Thirsty Goblin# em #COORD[28,65]#.", x = 28, y = 65, zone = "Tanaris" },
			[9] = { str = "Faca #DOTooga's Quest#, quest de escolta da tartaruga que comeca em Thistleshrub Valley, leve #NPCTooga# ate #NPCTorta# em #COORD[66,25]#.", x = 66, y = 25, zone = "Tanaris" },
			--[10] = { str = "If you haven't completed #DOGahz'ridian# yet, get the rest of the #ITEM[Gahz'ridian Ornaments]# at #COORD[39,73]#.", x = 39, y = 73, zone = "Tanaris" },
			[10] = { str = "Entregue #INTooga's Quest# junto com #INScreecher Spirits#, PULE #SKIPThe Prophecy of Mosh'Aru#." },
			[11] = { str = "Volte pra Gadgetzan e entregue #INThe Thirsty Goblin#, aceite #GETIn Good Taste# entregue, aceite #GETSprinkle's Secret Ingredient#, entregue #INThistleshrub Valley#, #INThe Dunemaul Compound# e #INNoxious Lair Investigation#, aceite #GETThe Scrimshank Redemption#." },
			[12] = { str = "Pegue seu #ITEM[Sampling Kit]# e #ITEM[Power Source]# do banco, aceite #GETTanaris Field Sampling# dele, depois va fazer. Entregue #INGahz'ridian# em #COORD[52,45]#.", x = 52, y = 45, zone = "Tanaris" },
			[13] = { str = "Faca #DOThe Scrimshank Redemption#, na caverna em #COORD[56,70]# O segredo pra encontrar o item desta quest e sempre virar a direita na caverna e isso vai te levar ate ele.", x = 53, y = 70, zone = "Tanaris" },
			[14] = { str = "Se o #ITEM[OOX-17/TN Distress Beacon]# dropar, aceite a quest #GETFind OOX-17/TN!# e entregue em #COORD[60,64]#.", x = 60, y = 64, zone = "Tanaris" },
			[15] = { str = "Use Hearthstone pra Gadgetzan." },
			[16] = { str = "Entregue #INTanaris Field Sampling#, aceite #GETReturn to Apothecary Zinge#." },
			[17] = { str = "Entregue #INThe Scrimshank Redemption#, aceite #GETInsect Part Analysis#." },
			[18] = { str = "Entregue #INInsect Part Analysis#, aceite #GETInsect Part Analysis pt.2#." },
			[19] = { str = "Entregue #INInsect Part Analysis pt.2#, aceite #GETRise of the Silithid#." },
			[20] = { str = "Voe pra Orgrimmar, e sete como sua home." },
			[21] = { str = "Pegue a #ITEM[Box of Empty Vials]# do seu Banco." },
			[22] = { str = "Voe pra Azshara." },
		}
	},
}
