--[[--------------------------------------------------
003_Horde_20to30.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 20 to Lvl 30
    1.04.1
        -- First Release
            Horde's Guide
            from level 20 to lever 30
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_003_Horde_20to30 = {
-----------20-21 Stonetalon Mountains
	--[201] = {
	[2021] = {
		title = "20-21 Stonetalon Mountains",
		--n = "20-21 Stonetalon Mountains",
		--pID = 104, nID = 202,
		--itemCount = 20,
		items = {
			[1] = { str = "20-21 Stonetalon Mountains" },
			[2] = { str = "Va ate Malaka'Jin em #COORD[71,94]#", x = 71, y = 94, zone = "Stonetalon Mountains" },
			[3] = { str = "Aceite #GETBlood Feeders# " },
			[4] = { str = "Entregue #INLetter to Jin'Zil# em #COORD[74,97]# na caverna ... aceite #GETJin'Zil's Forest Magic# ", x = 74, y = 97, zone = "Stonetalon Mountains" },
			[5] = { str = "Depois va aceitar #GETArachnophobia# do poster de Wanted em #COORD[59,75]#", x = 59, y = 75, zone = "Stonetalon Mountains" },
			[6] = { str = "Va fazer #DOBlood Feeders# junto com #DODeepmoss Spider Eggs# e #DOArachnophobia# perto de #COORD[54,76]# NOTA: voce pode pular Arachnophobia por enquanto, voce vai voltar aqui depois...", x = 54, y = 76, zone = "Stonetalon Mountains" },
			[7] = { str = "Depois entregue #INZiz Fizziks# pro goblin na cabana em Windshear Crag, #COORD[58,62]# ... aceite #GETSuper Reaper 6000# ", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[8] = { str = "Depois faca: #DOGoblin Invaders# e #DOSuper Reaper 6000# (os mobs estao logo ao norte em Windshear Crag)" },
			[9] = { str = "Depois entregue #INSuper Reaper 6000# #COORD[58,62]# ... aceite #GETFurther Instructions# ", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[10] = { str = "Va ate Sun Rock Retreat em #COORD[46,59]#.", x = 46, y = 59, zone = "Stonetalon Mountains" },
			[11] = { str = "Entregue #INArachnophobia# e #INKaya's Alive# se voce fez a quest de escolta" },
			[12] = { str = "Pegue o flight path la." },
			[13] = { str = "Suba pelo pequeno #VIDEOcaminho# e aceite #GETBoulderslide Ravine# e #GETTrouble in the Deeps# em #COORD[47,64]#", x = 47, y = 64, zone = "Stonetalon Mountains" },
			[14] = { str = "Depois va fazer #DOBoulderslide Ravine# em #COORD[61,92]#", x = 61, y = 92, zone = "Stonetalon Mountains" },
			[15] = { str = "Depois entregue #INBlood Feeders# #COORD[71,95]#", x = 71, y = 95, zone = "Stonetalon Mountains" },
			[16] = { str = "Entregue #INGoblin Invaders# em #COORD[35,27]# em Barrens ... aceite #GETShredding Machines#   (EU PULO #NPCThe Elder Crone# )", x = 35, y = 27, zone = "The Barrens" },
			[17] = { str = "Use Hearthstone pra XRs." },
			[18] = { str = "Va pro norte ate Ashenvale (parando no caminho pra entregar #INReport to Kadrak# (em 48.5) mas PULE #NPCThe Warsong Reports# ", x = 48, y = 5, zone = "The Barrens" },
			--[19] = { str = "." },
			--[20] = { str = "." },
		}
	},

-----------21-21 Ashenvale
	--[202] = {
	[2121] = {
		title = "21-21 Ashenvale",
		--n = "21-21 Ashenvale",
		--pID = 201, nID = 203,
		--itemCount = 11,
		items = {
			[1] = { str = "21-21 Ashenvale" },
			[2] = { str = "Va ate Splintertree Post em #COORD[73,65]#", x = 73, y = 65, zone = "Ashenvale" },
			[3] = { str = "Entregue #INThe Ashenvale Hunt# . Depois aceite e entregue #INThe Ashenvale Hunt# de novo." },
			[4] = { str = "Pegue o flight path em Splintertree Post." },
			[5] = { str = "Va ate Zoram Strand em #COORD[13,31]#, grinde mobs pelo caminho.", x = 13, y = 31, zone = "Ashenvale" },
			[6] = { str = "Pegue o flight path la. #COORD[12,33]#. Entregue #INTrouble in the Deeps# .. eu PULO #NPCThe Essence of Aku'Mai# ", x = 12, y = 33, zone = "Ashenvale" },
			[7] = { str = "Faca as seguintes quests:" },
			[8] = { str = "Aceite e faca #DONaga at the Zoram Strand# depois entregue." },
			[9] = { str = "Use Hearthstone pra voltar pra XRs, se o Hearthstone ainda estiver em cooldown, voe pra la." },
			--[10] = { str = "." },
			--[11] = { str = "." },
		}
	},

-----------22-23 Southern Barrens
	--[203] = {
	[2223] = {
		title = "22-23 Southern Barrens",
		--n = "22-23 Southern Barrens",
		--pID = 202, nID = 204,
		--itemCount = 19,
		items = {
			[1] = { str = "22-23 Southern Barrens" },
			[2] = { str = "Voe pra CT." },
			[3] = { str = "Entregue #INJorn Skyseer# ... aceite #GETIshamuhale# e #GETMelor Sends Word# " },
			[4] = { str = "Sete seu Hearthstone em CT." },
			[5] = { str = "Eu dou bloodshards pro gnoll na jaula pra ganhar agilidade/espirito aumentado." },
			[6] = { str = "Va pro sul e fique de olho no mob chamado #NPCOwatanka# perto de #COORD[45,62]#, ele dropa 'Owatanka's Tailspike' que inicia #GETOwatanka# ", x = 45, y = 62, zone = "The Barrens" },
			[7] = { str = "#DOEgg Hunt# #COORD[44,71]#", x = 44, y = 71, zone = "The Barrens" },
			[8] = { str = "#DOChen's Empty Keg# (se voce tiver)" },
			[9] = { str = "#DOBetrayal from Within# e #DOWeapons of Choice# #COORD[43,79]#", x = 43, y = 79, zone = "The Barrens" },
			[10] = { str = "Aceite #GETGann's Reclamation# de #NPCGann Stonespire#. Depois va fazer em #COORD[46,86]#. Depois entregue, aceite #GETRevenge of Gann# ", x = 46, y = 86, zone = "The Barrens" },
			[11] = { str = "Use Hearthstone pra voltar pra Camp Taurajo, entregue #INWeapons of Choice# e #INBetrayal from Within# ... aceite #GETBetrayal from Within# parte 2" },
			[12] = { str = "Voe pra XR." },
			[13] = { str = "Entregue #INBetrayal from Within# parte 2 e #INEgg Hunt# " },
			[14] = { str = "Faca #DOIshamuhale# em #COORD[60,32]#", x = 60, y = 32, zone = "The Barrens" },
			[15] = { str = "Entregue #INFurther Instructions# em Ratchet #COORD[63,37]# ... aceite #GETFurther Instructions# parte 2", x = 63, y = 37, zone = "The Barrens" },
			[16] = { str = "Entregue #INDeepmoss Spider Eggs# e #INChen's Empty Keg# " },
			[17] = { str = "Voe pra Stonetalon Mountains..." },
			--[18] = { str = "." },
			--[19] = { str = "." },
		}
	},

-----------23-25 Stonetalon Mountains
	--[204] = {
	[2325] = {
		title = "23-25 Stonetalon Mountains",
		--n = "23-25 Stonetalon Mountains",
		--pID = 203, nID = 205,
		--itemCount = 24,
		items = {
			[1] = { str = "23-25 Stonetalon Mountains" },
			[2] = { str = "Aceite todas as quests em Sun Rock Retreat (que incluem: #GETCenarius' Legacy# #GETCycle of Rebirth# e #GETHarpies Threaten# )..." },
			[3] = { str = "Sete seu Hearthstone em Sun Rock Retreat." },
			[4] = { str = "Entregue #INBoulderslide Ravine# .. EU PULO #NPCEarthen Arise# (aceite #GETElemental War# la)" },
			[5] = { str = "Faca:" },
			[6] = { str = "#DOCycle of Rebirth#, pegue as sementes perto de #COORD[48,41]#", x = 48, y = 41, zone = "Stonetalon Mountains" },
			[7] = { str = "#DOCenarius' Legacy#, feito perto de #COORD[35,14]#", x = 35, y = 14, zone = "Stonetalon Mountains" },
			[8] = { str = "#DOJin'Zil's Forest Magic#, os mobs estao perto do caminho em #COORD[45,27]#, e na area em #COORD[34,14]#", x = 45, y = 27, zone = "Stonetalon Mountains" },
			[9] = { str = "Volte pra Sun Rock Retreat e entregue #INCycle of Rebirth# ... aceite #GETNew Life# " },
			[10] = { str = "Entregue #INCenarius' Legacy# ... aceite #GETOrdanus# " },
			[11] = { str = "Va entregar #INFurther Instructions# parte 2 #COORD[58,62]#... aceite #GETGerenzo Wrenchwhistle# ", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[12] = { str = "Va fazer #DOGerenzo Wrenchwhistle# em #COORD[64,41]# e #DOShredding Machines#   (mate #NPCXT:4# e #NPCXT:9#)", x = 64, y = 41, zone = "Stonetalon Mountains" },
			[13] = { str = "Depois entregue #INGerenzo Wrenchwhistle# . #COORD[58,62]#. Se voce nao conseguiu fazer Arachnophobia, faca agora!", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[14] = { str = "Va pro sul e entregue #INJin'Zil's Forest Magic# #COORD[74,97]#", x = 74, y = 97, zone = "Stonetalon Mountains" },
			[15] = { str = "Entregue #INShredding Machines# em Barrens em #COORD[35,27]#", x = 35, y = 27, zone = "The Barrens" },
			[16] = { str = "Use Hearthstone pra voltar pra Sun Rock Retreat e entregue #INArachnophobia# se voce acabou de fazer." },
			[17] = { str = "Reabasteca comida/agua." },
			[18] = { str = "Va fazer #DOHarpies Threaten# junto com #DOElemental War# e #DONew Life# em Charred Vale, #COORD[32,67]#", x = 32, y = 67, zone = "Stonetalon Mountains" },
			[19] = { str = "Quando todas estiverem completas, certifique-se de que voce esta pelo menos 5 barras do level 25, entao talvez precise grindar um pouco." },
			[20] = { str = "Depois va entregar todas, e aceite #GETCalling in the Reserves# " },
			[21] = { str = "Depois voe pra CT..." },
			--[23] = { str = "." },
			--[24] = { str = "." },
		}
	},

-----------25-25 Southern Barrens2
	--[205] = {
	[2525] = {
		title = "25-25 Southern Barrens",
		--n = "25-25 Southern Barrens",
		--pID = 204, nID = 206,
		--itemCount = 14,
		items = {
			[1] = { str = "25-25 Southern Barrens" },
			[2] = { str = "Entregue #INIshamuhale# ... aceite #GETEnraged Thunder Lizards# " },
			[3] = { str = "Sete seu Hearthstone em CT." },
			[4] = { str = "Aceite #GETA New Ore Sample# (precisa ser lvl 25 pra pegar essa)" },
			[5] = { str = "Va pro sul e faca:" },
			[6] = { str = "#DOEnraged Thunder Lizards# " },
			[7] = { str = "Voce deve encontrar o mob #NPCWashte Pawne#, ele dropa 'Washte Pawne Feather' que inicia #GETWashte Pawne# " },
			[8] = { str = "#DORevenge of Gann# em #COORD[47,85]# Quando terminar, entregue, aceite a proxima parte...", x = 47, y = 85, zone = "The Barrens" },
			[9] = { str = "Faca #DORevenge of Gann# Parte 3 em #COORD[46,85]#, depois entregue.", x = 46, y = 85, zone = "The Barrens" },
			[10] = { str = "Va pro sul pelo caminho ate o Great Lift #COORD[44,91]#, e entregue #INCalling in the Reserves# ", x = 44, y = 91, zone = "The Barrens" },
			[11] = { str = "Aceite #GETMessage to Freewind Post# " },
			[12] = { str = "Va ate Freewind Post... #COORD[45,50]# em Thousand Needles", x = 45, y = 50, zone = "Thousand Needles" },
			--[13] = { str = "." },
			--[14] = { str = "." },
		}
	},

-----------25-26 Thousand Needles
	--[206] = {
	[2526] = {
		title = "25-26 Thousand Needles",
		--n = "25-26 Thousand Needles",
		--pID = 205, nID = 207,
		--itemCount = 23,
		items = {
			[1] = { str = "25-26 Thousand Needles" },
			[2] = { str = "Entregue #INMessage to Freewind Post# aceite #GETPacify the Centaur# " },
			[3] = { str = "Aceite #GETWanted - Arnak Grimtotem# #GETAlien Egg# e #GETWind Rider# " },
			[4] = { str = "Pegue o flight path la." },
			[5] = { str = "Va fazer (na seguinte ordem):" },
			[6] = { str = "#DOPacify the Centaur# (os mobs estao logo ao norte)" },
			[7] = { str = "#DOTest of Faith#, a caverna em #COORD[52,43]#", x = 52, y = 43, zone = "Thousand Needles" },
			[8] = { str = "#DOA New Ore Sample#   (se voce nao encontrar o drop, pule por enquanto)" },
			[9] = { str = "#DOAlien Egg#, tem 4 pontos de spawn possiveis, perto de: #COORD[52,56]# / #COORD[45,63]# / #COORD[41,60]# / #COORD[50,56]#, e pode ter mais, so cheque perto dessas areas.)", x = 52, y = 56, zone = "Thousand Needles" },
			[10] = { str = "Se voce nao esta no level 26 (ou duas barras dele), grinde ate estar." },
			[11] = { str = "Va ate Freewind Post #COORD[45,50]#..", x = 45, y = 50, zone = "Thousand Needles" },
			[12] = { str = "Entregue #INPacify the Centaur# ... aceite #GETGrimtotem Spying# " },
			[13] = { str = "Entregue #INAlien Egg# ... aceite #GETSerpent Wild# " },
			[14] = { str = "Use Hearthstone pra Camp Taurajo." },
			[15] = { str = "Entregue #INEnraged Thunder Lizards# e #INWashte Pawne# ... aceite #GETCry of the Thunderhawk# " },
			[16] = { str = "Entregue #INA New Ore Sample# " },
			[17] = { str = "Va fazer #DOCry of the Thunderhawk# depois entregue ... EU PULO #NPCMahren Skyseer# " },
			[18] = { str = "Voe pra Thunder Bluff pra pegar novas magias/habilidades." },
			[19] = { str = "Entregue #INMelor Sends Word#, #COORD[61,80]# no Hunter Rise... aceite #GETSteelsnap# ", x = 61, y = 80, zone = "Thunder Bluff" },
			[20] = { str = "Aceite #GETThe sacred Flame# #COORD[55,51]#", x = 55, y = 51, zone = "Thunder Bluff" },
			[21] = { str = "Voe pra Splintertree Post, Ashenvale..." },
			--[22] = { str = "." },
			--[23] = { str = "." },
		}
	},

-----------26-27 Ashenvale
	--[207] = {
	[2627] = {
		title = "26-27 Ashenvale",
		--n = "26-27 Ashenvale",
		--pID = 206, nID = 208,
		--itemCount = 26,
		items = {
			[1] = { str = "26-27 Ashenvale" },
			[2] = { str = "Sete seu Hearthstone aqui." },
			[3] = { str = "Faca na seguinte ordem:" },
			[4] = { str = "Aceite todas as quests, que incluem: #GETStonetalon Standstill# #GETSatyr Horns# #GETAshenvale Outrunners# (aceite essa em #COORD[71,68]#). Certifique-se de que #GETThe Ashenvale Hunt# esta entregue em #NPCSenani Thunderheart# (voce pode aceitar essa quest direto no NPC). Nota: EU PULO #NPCWarsong Supplies# e #NPCThe Lost Pages# ", x = 71, y = 68, zone = "Ashenvale" },
			[5] = { str = "Mate o primeiro dos tres mobs relacionados ao Ashenvale hunt:" },
			[6] = { str = "#DOSharptalon's Claw#, Mate #NPCSharptalon# que patrulha perto de #COORD[74,70]#, ele dropa o item que inicia essa quest. Dica: jeito facil de matar (ele e um mob lvl 31), e kitar ele ate os guardas em Splintertree Post. ", x = 74, y = 70, zone = "Ashenvale" },
			[7] = { str = "Faca: #DOAshenvale Outrunners#, perto de #COORD[71,72]#. Quando a quest estiver completa, entregue quando tiver chance.", x = 71, y = 72, zone = "Ashenvale" },
			[8] = { str = "Depois va um pouco pro oeste e faca #DOTorek's Assault# em #COORD[68,75]#", x = 68, y = 75, zone = "Ashenvale" },
			[9] = { str = "Depois va fazer #DOStonetalon Standstill# no lago em #COORD[53,70]#. Encontre e mate #NPCTideress# ele dropa um item que inicia: #GETThe Befouled Element# ", x = 53, y = 70, zone = "Ashenvale" },
			[10] = { str = "Mate #NPCUrsangous#, perto de #COORD[42,67]# pra #DOUrsangous's Paw# (Ashenvale hunt)", x = 42, y = 67, zone = "Ashenvale" },
			[11] = { str = "Mate #NPCShadumbra#, perto de #COORD[56,54]# pra #DOShadumbra's Head# (Ashenvale hunt)", x = 56, y = 54, zone = "Ashenvale" },
			[12] = { str = "#DOThe sacred Flame#: Primeiro encontre um frasco matando as dryads em #COORD[61,52]#, depois encha no moonwell em #COORD[60,72]#", x = 60, y = 72, zone = "Ashenvale" },
			[13] = { str = "Use Hearthstone pra Splintertree Post pra entregar #INStonetalon Standstill# #INThe Befouled Element# (aceite #GETJe'neu of the Earthen Ring# ) #INTorek's Assault# e todas as tres quests do 'Ashenvale Hunt', depois aceite e complete #INThe Hunt Completed# " },
			[14] = { str = "Voe pra Zoram Strand, e entregue #INJe'neu of the Earthen Ring# " },
			[15] = { str = "Aceite e faca #DOVorsha the Lasher# . Quando terminar volte e entregue." },
			[16] = { str = "Aceite e faca: #DOBetween a Rock and a Thistlefur# #COORD[34,37]# e #DOTroll Charm# na caverna em #COORD[38,30]#. #VIDEONOTA:# Enquanto voce esta na caverna, tem uma quest de escolta (um druida branco em forma de urso numa jaula) chamada #DOFreedom to Ruul# , tente fazer essa quest, voce pode ter que lutar contra 3-5 mobs de uma vez varias vezes, se falhar pode pular.", x = 34, y = 37, zone = "Ashenvale" },
			[17] = { str = "Quando ambas estiverem completas, va entregar #INBetween a Rock and a Thistlefur# e #INTroll Charm# (de volta em Zoram Strand), depois use Hearthstone pra voltar pra Splintertree Post. Entregue #INFreedom to Ruul# (se voce fez)" },
			[18] = { str = "Se eu nao estiver level 27 vou grindar ate estar." },
			[19] = { str = "Va fazer #DOOrdanus# #COORD[61,52]# (#VIDEOlute seu caminho ate ele, so mate o cara, pegue a cabeca dele e pule fora de la!#)", x = 61, y = 52, zone = "Ashenvale" },
			[20] = { str = "Va fazer #DOSatyr Horns#, feito em Night Run, #COORD[67,53]# (entrada da area e perto de #COORD[64,42]#).", x = 67, y = 53, zone = "Ashenvale" },
			[21] = { str = "Volte pra Splintertree Post (nao use Hearthstone). Entregue #INSatyr Horns#" },
			[22] = { str = "Voe pra Stonetalon Mountains..." },
			--[23] = { str = "." },
			--[24] = { str = "." },
		}
	},

-----------27-27 Stonetalon Mountains
	--[208] = {
	[2727] = {
		title = "27-27 Stonetalon Mountains",
		--n = "27-27 Stonetalon Mountains",
		--pID = 207, nID = 209,
		--itemCount = 11,
		items = {
			[1] = { str = "27-27 Stonetalon Mountains" },
			[2] = { str = "Entregue #INOrdanus# ... EU PULO #NPCThe Den# " },
			[3] = { str = "Sete seu Hearthstone em Sun Rock Retreat." },
			[4] = { str = "Aceite e faca #DOBloodfury Bloodline# , va matar Bloodfury Ripper em #COORD[30,63]# (grindando mobs pelo caminho) , depois use Hearthstone pra voltar.." },
			[5] = { str = "Entregue #INBloodfury Bloodline#." },
			[6] = { str = "Voe pra Thunder Bluff." },
			[7] = { str = "Sete seu Hearthstone em Thunder Bluff." },
			[8] = { str = "Entregue #INThe sacred Flame# em #COORD[54,51]# em TB... aceite #GETThe sacred Flame# parte 2", x = 54, y = 51, zone = "Thunder Bluff" },
			[9] = { str = "Voe pra Thousand Needles..." },
			--[10] = { str = "." },
			--[11] = { str = "." },
		}
	},

-----------27-29 Thousand Needles
	--[209] = {
	[2729] = {
		title = "27-29 Thousand Needles",
		--n = "27-29 Thousand Needles",
		--pID = 208, nID = 210,
		--itemCount = 37,
		items = {
			[1] = { str = "27-29 Thousand Needles" },
			[2] = { str = "Entregue #INThe sacred Flame# ... aceite #GETThe sacred Flame# parte 3" },
			[3] = { str = "Eu faco na seguinte ordem:" },
			[4] = { str = "#DOThe sacred Flame#, carregue o braseiro na caverna em #COORD[44,37]#.", x = 44, y = 37, zone = "Thousand Needles" },
			[5] = { str = "Va ate Whitereach Post #COORD[21,32]#, aceite #GETHypercapacitor Gizmo# , Entregue #INSerpent Wild# ...aceite #GETSacred Fire# ", x = 21, y = 32, zone = "Thousand Needles" },
			[6] = { str = "Va fazer: #DOSacred Fire# #COORD[35,36]#", x = 35, y = 36, zone = "Thousand Needles" },
			[7] = { str = "#DOWind Rider# #COORD[11,36]#", x = 11, y = 36, zone = "Thousand Needles" },
			[8] = { str = "#DOHomeward Bound#, escolta comeca em #COORD[17,40]#. (Se o Elite atrapalhar, pule).", x = 17, y = 40, zone = "Thousand Needles" },
			[9] = { str = "#DOSteelsnap#, ele patrulha perto de #COORD[16,25]#.", x = 16, y = 25, zone = "Thousand Needles" },
			[10] = { str = "Use Hearthstone pra Thunder Bluff." },
			[11] = { str = "Pegue novas magias/habilidades." },
			[12] = { str = "Entregue #INSteelsnap# (no Hunter Rise) ... aceite #GETFrostmaw# " },
			[13] = { str = "Entregue #INSacred Fire# (no Elder Rise) ... aceite #GETArikara# " },
			[14] = { str = "Voe de volta pra 1K Needles." },
			[15] = { str = "Sete seu Hearthstone em Freewind Post." },
			[16] = { str = "Entregue #INThe sacred Flame# e #INWind Rider# " },
			[17] = { str = "Va ate Darkcloud Pinnacle (a rampa de entrada e em #COORD[31,36]#), e faca as seguintes quests: #DOGrimtotem Spying#, as notas estao nos rises em #COORD[31,32]#, #COORD[33,39]#, e #COORD[39,41]#", x = 31, y = 36, zone = "Thousand Needles" },
			[18] = { str = "#DOArikara# feito em #COORD[37,35]#.", x = 37, y = 35, zone = "Thousand Needles" },
			[19] = { str = "#DOWanted - Arnak Grimtotem#, em #COORD[38,27]#.", x = 38, y = 27, zone = "Thousand Needles" },
			[20] = { str = "#DOFree at Last#, quest de escolta comeca em #COORD[38,27]#.", x = 38, y = 27, zone = "Thousand Needles" },
			[21] = { str = "Va ate Whitereach Post #COORD[21,32]#, entregue #INArikara# e #INHomeward Bound#", x = 21, y = 32, zone = "Thousand Needles" },
			[22] = { str = "Voce deve estar level 29 agora, se nao grinde ate level 29, eu grindo nos centauros perto de Camp E'Thok #COORD[18,23]#", x = 18, y = 23, zone = "Thousand Needles" },
			[23] = { str = "Depois faca #DOHypercapacitor Gizmo# (Elite) em #COORD[22,24]#. Limpe os mobs perto da jaula, liberte ele e mate ele.", x = 22, y = 24, zone = "Thousand Needles" },
			[24] = { str = "Mate o #NPCGalak Messenger#, ele dropa 'Assassination Note' que inicia #GETAssassination Plot# Entregue pra XP facil. Tambem entregue #INHypercapacitor Gizmo#" },
			[25] = { str = "Depois faca: #DOProtect Kanati Greycloud# " },
			[26] = { str = "Se voce nao esta pelo menos 4 barras do level 30, grinde ate estar. Depois use Hearthstone pra voltar pra Freewind Post." },
			[27] = { str = "Entregue #INFree at Last# #INWanted - Arnak Grimtotem# #INGrimtotem Spying#" },
			[28] = { str = "NOTA: Eu pulo #NPCTest of Endurance# " },
			[29] = { str = "Voe pra Orgrimmar" },
			[30] = { str = "Sete seu Hearthstone em Orgrimmar." },
			[31] = { str = "Pegue novas magias/habilidades." },
			[32] = { str = "Va pra Undercity (UC). Voce precisa pegar o zeppelin logo do lado de fora de Orgrimmar." },
			[33] = { str = "Va ate Tarren Mill em Hillsbrad Foothills.. (Voce pode so passar direto pela UC por enquanto se quiser e so seguir o caminho pro sul saindo de Tirisfal Glades e entrando em Silverpine Forest)" },
			--[36] = { str = "." },
			--[37] = { str = "." },
		}
	},

-----------29-30 Hillsbrad Foothills
	--[210] = {
	[2930] = {
		title = "29-30 Hillsbrad Foothills",
		--n = "29-30 Hillsbrad Foothills",
		--pID = 209, nID = 301,
		--itemCount = 19,
		items = {
			[1] = { str = "29-30 Hillsbrad Foothills" },
			[2] = { str = "Aceite #GETTime To Strike# (na Southpoint Tower, logo quando voce entra em Hillsbrad)" },
			[3] = { str = "Quando chegar em Tarren Mill:" },
			[4] = { str = "Entregue #INTime To Strike# " },
			[5] = { str = "Aceite #GETHelcular's Revenge# " },
			[6] = { str = "Aceite #GETElixir of Pain# " },
			[7] = { str = "PEGUE O FLIGHT PATH LA!!!!" },
			[8] = { str = "Comece a matar Yetis..." },
			[9] = { str = "Eu continuo grindando Yetis ate bater 30. (OPCIONAL: voce pode ir fazer RFK ao inves de grindar)" },
			[10] = { str = "Tambem, o #NPCHelcular's Rod# deve ter dropado antes de bater 30, se nao continue grindando ate dropar." },
			[11] = { str = "Assim que bater 30, eu uso Hearthstone pra Orgrimmar pra pegar novas magias/habilidades." },
			[12] = { str = "Depois volte pra Hillsbrad." },
			[13] = { str = "Entregue #INHelcular's Revenge#, aceite a proxima parte." },
			[14] = { str = "Volte pra caverna dos Yeti..." },
			[15] = { str = "Carregue a Flame of Azel e a Flame of Veraz, pra quest #DOHelcular's Revenge# " },
			[16] = { str = "Eu continuo grindando Yetis ate meu pet upar." },
			[17] = { str = "Va pra Alterac Mountains..." },
			--[18] = { str = "." },
			--[19] = { str = "." },
		}
	},
}
