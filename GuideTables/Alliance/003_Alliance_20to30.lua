--[[--------------------------------------------------
003_Alliance_20to30.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 20 to Lvl 30
	1.04.1
		-- First Release
			Alliance's Guide
			from level 20 to lever 30
	1.04.2
		-- no changes in here for this revision
	1.04.3
		-- Added color codes
			Fixed various spelling errors
			Adjustment to coordinate visibility
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_003_Alliance_20to30 = {
	[2021] = {
		title = "20-21 Darkshore",
		--L- Needs playtest
		items = {
			[1] = { str = "20-21 Darkshore" },
			[2] = { str = "Primeiro voe pra Darnassus e pegue suas novas Skills." },
			[3] = { str = "Entregue #INOnu# em #COORD[43,76]# aceite #GETThe Master's Glaive#.", x = 43, y = 76, zone = "Darkshore" },
			[4] = { str = "Va ate #COORD[39,85]# deve aparecer que voce encontrou #DOMaster's Glaive(complete)# agora use o #ITEM[Phial of Scrying]#. Clique e entregue #INThe Master's Glaive# aceite #GETThe Twilight Camp#", x = 39, y = 85, zone = "Darkshore" },
			[5] = { str = "Clique no #ITEM[Book]# em #COORD[38,86]# entregue #INThe Twilight Camp# aceite #GETReturn to Onu#.", x = 38, y = 86, zone = "Darkshore" },
			[6] = { str = "Aceite #GETTherylune's Escape (escort)# em #COORD[38,87]# e faca.", x = 38, y = 87, zone = "Darkshore" },
			[7] = { str = "Entregue #INThe Absent Minded Prospector pt.1# em #COORD[35,83]# aceite #GETThe Absent Minded Prospector pt.2# e faca.", x = 35, y = 83, zone = "Darkshore" },
			[8] = { str = "Va a oeste ate #COORD[31,83]# e #COORD[31,85]# e aceite #GETBeached Sea Turtle# nos dois.", x = 31, y = 83, zone = "Darkshore" },
			[9] = { str = "Volte ate #COORD[43,76]# e entregue #INReturn to Onu# aceite #GETMathystra Relics#.", x = 43, y = 76, zone = "Darkshore" },
			[10] = { str = "Aceite #GETThe Sleeper Has Awakened (escort)# do urso dormindo atras de Onu. Coloque a buzina na sua hotbar porque ele adormece a cada minuto. Essa quest vai te levar ate Ashenvale. A buzina esta na caixa ao lado dele. Nota: como ele te segue, com aspect of the cheetah voce pode pular os mobs correndo pela estrada ou fora dela." },
		}
	},
	[2122] = {
		title = "21-22 Ashenvale",
		--L- Needs playtest
		items = {
			[1] = { str = "21-22 Ashenvale" },
			[2] = { str = "Va ate #COORD[26,36]# Maestra's Post em Ashenvale, e isso vai completar #DOThe Sleeper Has Awakened# Va entregar logo em frente na casa.", x = 26, y = 36, zone = "Ashenvale" },
			[3] = { str = "Aceite #GETBathran's Hair#." },
			[4] = { str = "Mate mobs ao redor de #COORD[31,31]# nas ruinas de Ordil'Aran para #DOThe Tower of Althalaxx pt.4# Limpe o acampamento 4 vezes no total. Se eu achar cedo, ainda limpo 4 vezes. Depois disso estarei na metade do caminho para o nivel 22.", x = 31, y = 31, zone = "Ashenvale" },
			[5] = { str = "Pegue os pacotes de plantas para #DOBathran's Hair# em #COORD[31,21]# em Bathran's Haunt", x = 31, y = 21, zone = "Ashenvale" },
			[6] = { str = "Volte para Maestra's Post em #COORD[26,38]# e entregue #INThe Tower of Althalaxx pt.4# Aceite #GETThe Tower of Althalaxx pt.5#.", x = 26, y = 36, zone = "Ashenvale" },
			[7] = { str = "Entregue #INBathran's Hair# aceite #GETOrendil's Cure#." },
			[8] = { str = "Va ate #COORD[22,51]# entregue #INTherylune's Escape#.", x = 22, y = 51, zone = "Ashenvale" },
			[9] = { str = "Va ate Astranaar em #COORD[33,48]# e pegue o FP", x = 33, y = 48, zone = "Ashenvale" },
			[10] = { str = "Aceite #GETThe Zoram Strand# logo na entrada da cidade." },
			[11] = { str = "Aceite #GETOn Guard in Stonetalon pt.1# na casa a direita." },
			[12] = { str = "Atravesse a estrada perto do gazebo aceite #GETJourney to Stonetalon Peak#" },
			[13] = { str = "Na Inn aceite #GETRaene's Cleansing pt.1# e #GETCulling the Threat#." },
			[14] = { str = "Sete Astranaar como seu Hearthstone." },
			[15] = { str = "Entregue #INOrendil's Cure# na ultima casa aceite #GETElune's Tear#" },
			[16] = { str = "Va ate The Zoram Strand. Pare em #COORD[14,31]# aceite #GETThe Ancient Statuette#", x = 14, y = 31, zone = "Ashenvale" },
			[17] = { str = "Faca #DOThe Zoram Strand# Nagas por toda essa area." },
			[18] = { str = "E #DOThe Ancient Statuette# em #COORD[14,20]# esta no chao. ", x = 14, y = 20, zone = "Ashenvale" },
			[19] = { str = "Entregue #INThe Ancient Statuette# em #COORD[14,31]# aceite #GETRuuzel#", x = 14, y = 31, zone = "Ashenvale" },
			[20] = { str = "Faca #DORuuzel# em 9,15 Voce nao precisa matar Ruuzel. Mate Lady Vespia. Uma elite fraca nivel 22 e nao tem guardas como Ruuzel", x = 9, y = 15, zone = "Ashenvale" },
			[21] = { str = "Entregue #INRuuzel# em #COORD[14,20]#.", x = 14, y = 20, zone = "Ashenvale" },
			[22] = { str = "Entregue #INRaene's Cleansing pt.1# em #COORD[20,42]# aceite #GETRaene's Cleansing pt.2# Mate murlocs para pegar a gema", x = 20, y = 42, zone = "Ashenvale" },
			[23] = { str = "Use Hearthstone para Astranaar" },
			[24] = { str = "Entregue #INThe Zoram Strand# logo na entrada da cidade aceite #GETPridewings of Stonetalon#" },
			[25] = { str = "Va ate a Inn Entregue #INRaene's Cleansing pt.2# aceite #GETRaene's Cleansing pt.3# e #GETAn Aggressive Defense#" },
			[26] = { str = "Grinde ate #COORD[46,46]# e aceite #GETElune's Tear#", x = 46, y = 46, zone = "Ashenvale" },
			[27] = { str = "Va ate #COORD[49,56]# depois grinde para o norte ate #COORD[53,46]# entregue #INRaene's Cleansing pt.3# aceite #GETRaene's Cleansing pt.4#.", x = 49, y = 56, zone = "Ashenvale" },
			[28] = { str = "Voce ja deve estar no nivel 22. Va ate #COORD[55,61]# e faca #DOAn Aggressive Defense#", x = 55, y = 61, zone = "Ashenvale" },
			[29] = { str = "Use Hearthstone para Astranaar" },
			[30] = { str = "Entregue #INAn Aggressive Defense#" },
			[31] = { str = "Va ate a casa da saida leste, entregue #INElune's Tear# aceite #GETThe Ruins of Stardust#" },
			[32] = { str = "Saia de Astranaar pela saida leste siga o caminho sul ate #COORD[33,66]# e pegue os arbustos cobertos de poeira estelar para #DOQUEATThe Ruins of Stardust#", x = 33, y = 66, zone = "Ashenvale" },
			[33] = { str = "Grinde para o leste ate Talondeep path em #COORD[42,71]#", x = 42, y = 71, zone = "Ashenvale" },
		}
	},

-----------22-23 Stonetalon Mountains
	--[203] = {
	[2223] = {
		title = "22-23 Stonetalon Mountains",
		--n = "22-23 Stonetalon Mountains",
		--pID = 202, nID = 204,
		--itemCount = 10,
		items = {
			[1] = { str = "22-23 Stonetalon Mountains" },
			[2] = { str = "Desga por Stonetalon ate a cabana em #COORD[58,62]# aceite #GETSuper Reaper 6000#", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[3] = { str = "Depois va ate #COORD[59,66]# e entregue #INOn Guard in Stonetalon pt.1# aceite #GETOn Guard in Stonetalon pt.2#.", x = 59, y = 66, zone = "Stonetalon Mountains" },
			[4] = { str = "Entregue logo atras de voce aceite #GETA Gnome's Respite#" },
			[5] = { str = "Mate Loggers e Deforesters para #DOA Gnome's Respite# e Operators para #DOSuper Reaper 6000# por toda Windshear Crag. Operators ficam so ao redor dos predios." },
			[6] = { str = "Entregue #INSuper Reaper 6000# na cabana #COORD[58,62]# PULE #VIDEOFurther Instructions# A menos que voce queira ir ate Ratchet.", x = 58, y = 62, zone = "Stonetalon Mountains" },
			[7] = { str = "Depois va ate #COORD[59,66]# e entregue #INA Gnome's Respite# aceite #GETAn Old Colleague# e #GETA Scroll From Mauren# Faremos essas depois.", x = 59, y = 66, zone = "Stonetalon Mountains" },
			[8] = { str = "Pare no Mirkfallon Lake em #COORD[48,40]# e mate Pridewings para #NPCPridewings of Stonetalon# ao sul e leste dele.", x = 48, y = 40, zone = "Stonetalon Mountains" },
			[9] = { str = "Va ate 37,8 entregue #INJourney to Stonetalon Peak# PULE #VIDEOReclaiming The Charred Vale# por enquanto", x = 37, y = 8, zone = "Stonetalon Mountains" },
			[10] = { str = "Pegue o FP em 36,7 e Voe pra Auberdine.", x = 36, y = 7, zone = "Stonetalon Mountains" },
		}
	},

-----------23-24 Darkshore
	--[204] = {
	[2324] = {
		title = "23-24 Darkshore",
		--n = "23-24 Darkshore",
		--pID = 203, nID = 205,
		--itemCount = 20,
		items = {
			[1] = { str = "23-24 Darkshore" },
			[2] = { str = "Entregue ambas #INBeached Sea Turtle# no deck" },
			[3] = { str = "Sete Auberdine como seu Hearthstone" },
			[4] = { str = "Entregue #INThe Absent Minded Prospector pt.2# logo fora da casa do mercador aceite #GETThe Absent Minded Prospector pt.3#." },
			[5] = { str = "Va na ultima casa aceite #GETA Lost Master#." },
			[6] = { str = "Voe pra Darnassus e entregue #INThe Absent Minded Prospector pt.3# fora do Temple of the Moon em #COORD[31,84]# aceite #GETThe Absent Minded Prospector pt.4# Pegue talentos se precisar.", x = 31, y = 84, zone = "Darnassus" },
			[7] = { str = "Voe de volta pra Auberdine." },
			[8] = { str = "Va ate por volta de #COORD[58,21]# para #DOMathystra Relics# As reliquias estao por toda parte.", x = 58, y = 21, zone = "Darkshore" },
			[9] = { str = "Pare em #COORD[56,13]# aceite #GETGyromast's Retrieval# Mate raging reef crawlers por aqui e Murlocs ao norte perto do navio em #COORD[55,12]#", x = 56, y = 13, zone = "Darkshore" },
			[10] = { str = "Va ao norte das Ruins of Mathystra matando sire's e matriach's para #DOA Lost Master# Tambem mate Foreststriders para #DOGyromast's Retrieval#" },
			[11] = { str = "Entregue #INGyromast's Retrieval# em #COORD[56,13]# aceite #GETGyromast's Revenge#.", x = 56, y = 13, zone = "Darkshore" },
			[12] = { str = "Gire a chave no The First Mate em #COORD[55,18]# em algum momento no meio ele vai te atacar. Voce tem que matar ele. Depois entregue em #COORD[56,13]#", x = 55, y = 18, zone = "Darkshore" },
			[13] = { str = "Volte para Auberdine." },
			[14] = { str = "Entregue #INA Lost Master pt.1# na primeira casa da cidade. Aceite #GETA Lost Master pt.2#" },
			[15] = { str = "Desga ate #COORD[43,76]# entregue #INMathystra Relics#.", x = 43, y = 76, zone = "Darkshore" },
			[16] = { str = "Desga ate #COORD[41,81]# e faca /wave no Grimclaw Ele vai apontar para sudoeste na caverna. Va ate ela em #COORD[45,85]# e entregue #INA Lost Master pt.2# aceite #GETEscape Through Force# Leve ele de volta para o Grimclaw em #COORD[41,81]#.", x = 41, y = 81, zone = "Darkshore" },
			[17] = { str = "Se voce nao esta no nivel 24 ainda ou falta 1750 xp para o nivel 24, grinde ate upar." },
			[18] = { str = "Use Hearthstone para Auberdine." },
			[19] = { str = "Entregue #INEscape Through Force# na casa antes de sair da cidade. Aceite #GETTrek to Ashenvale#" },
			[20] = { str = "Voe pra Darnassus e pegue novas skills depois voe pra Astranaar." },
		}
	},

-----------24-25 Ashenvale
	--[205] = {
	[2425] = {
		title = "24-25 Ashenvale",
		--n = "24-25 Ashenvale",
		--pID = 204, nID = 206,
		--itemCount = 16,
		items = {
			[1] = { str = "24-25 Ashenvale" },
			[2] = { str = "Entregue #INTrek to Ashenvale# logo na sua frente quando voce usar o Hearthstone." },
			[3] = { str = "Va ate a casa do lado leste, entregue #INThe Ruins of Stardust# aceite #GETFallen Sky Lake#." },
			[4] = { str = "Va ate o lado oeste da cidade, entregue #INPridewings of Stonetalon# aceite #GETKayneth Stillwind#" },
			[5] = { str = "Grinde todos os mobs descendo ate Fire Scar Shrine e mate #NPCIlkruk Mathrull# em #COORD[25,61]# para #DOThe Tower of Althalaxx pt.5# Mate ele o mais rapido possivel. Ele invoca 2 voidwalkers se voce demorar muito.", x = 25, y = 61, zone = "Ashenvale" },
			[6] = { str = "Grinde um caminho ate entre #COORD[35,33]# e #COORD[36,36]# (ele patrulha) e mate #NPCDal Bloodclaw# para #DOCulling the Threat#.", x = 35, y = 33, zone = "Ashenvale" },
			[7] = { str = "Depois grinde furbolgs ate estar na metade do caminho para o nivel 25" },
			[8] = { str = "Depois va ate Maestra's Post em #COORD[26,38]# entregue #INThe Tower of Althalaxx pt.5# aceite #GETThe Tower of Althalaxx pt.6#.", x = 26, y = 38, zone = "Ashenvale" },
			[9] = { str = "Aceite #GETSupplies to Auberdine (escort)# pode parecer fora do caminho, voce enfrenta uma luta de 4, e 2 lutas de 3. Voce so vai ate a fronteira de Darkshore e completa. 2900 xp faceis, nao e tao longe. Entregue de volta em #COORD[26,38]#.", x = 26, y = 38, zone = "Ashenvale" },
			[10] = { str = "Va ate Astranaar" },
			[11] = { str = "Entregue #INCulling the Threat# na Inn" },
			[12] = { str = "Desga ate Silverwing Refuge em #COORD[49,67]# e aceite #GETElemental Bracers# faca no lago aqui.", x = 49, y = 67, zone = "Ashenvale" },
			[13] = { str = "Assim que tiver todos os 5 bracers inativos, use o scroll neles e depois entregue de volta em #COORD[49,67]# PULE #VIDEOMage Summoner#. ", x = 49, y = 67, zone = "Ashenvale" },
			[14] = { str = "Eu geralmente estou a 1 barra do nivel 25 entao grindo ate o nivel 25 nos elementais" },
			[15] = { str = "Use Hearthstone para Auberdine" },
			[16] = { str = "Pegue o barco para Menethil Harbor." },
		}
	},

-----------25-27 Wetlands
	--[206] = {
	[2526] = {
		title = "25-27 Wetlands",
		--n = "25-27 Wetlands",
		--pID = 205, nID = 207,
		--itemCount = 53,
		items = {
			[1] = { str = "25-27 Wetlands" },
			[2] = { str = "Pare no final das docas, aceite #GETClaws From the Deep#" },
			[3] = { str = "No lado oeste da cidade aceite #GETYoung Crocolisk Skins#" },
			[4] = { str = "Va ao topo do castelo, aceite #GETWar Banners#" },
			[5] = { str = "No lado leste da cidade aceite #GETDigging Through the Ooze#" },
			[6] = { str = "Na frente da Inn aceite #GETThe Third Fleet# e #GETThe Greenwarden#" },
			[7] = { str = "Va ate #COORD[49,56]# depois grinde para o norte ate #COORD[53,46]# entregue #INRaene's Cleansing pt.3# aceite #GETRaene's Cleansing pt.4#.", x = 53, y = 46, zone = "Wetlands" },
			[8] = { str = "Sete Menethil Harbor como seu Hearthstone" },
			[9] = { str = "Va no andar de cima da Inn, entregue #INThe Absent Minded Prospector pt.4# aceite #GETThe Absent Minded Prospector pt.5#" },
			[10] = { str = "Compre um #NPCFlagon of Mead# do bartender para #DOThe Third Fleet# e de para o cara fora da Inn. Aceite #GETThe Cursed Crew#" },
			[11] = { str = "Na ponte aceite #GETIn Search of the Excavation Team pt.1#" },
			[12] = { str = "Mate Young Crocolisks logo a leste da ponte por volta de #COORD[14,52]# e ao norte na terra do lago tambem ao longo da estrada para o greenwarden para #DOYoung Crocolisk Skins#", x = 14, y = 52, zone = "Wetlands" },
			[13] = { str = "Mate Bluegill Murlocs e Gobbler em #COORD[18,40]# para #DOClaws From the Deep#", x = 18, y = 40, zone = "Wetlands" },
			[14] = { str = "Mate Mottled Raptors e Screechers por volta de #COORD[25,46]# para #DOThe Absent Minded Prospector pt.5#", x = 25, y = 46, zone = "Wetlands" },
			[15] = { str = "Entre no local da escavacao em #COORD[34,40]#.", x = 34, y = 40, zone = "Wetlands" },
			[16] = { str = "Suba pelo caminho da esquerda e pegue o fossil perto dos 2 NPCs em #COORD[38,52]# para #DOThe Absent Minded Prospector pt.5#", x = 38, y = 52, zone = "Wetlands" },
			[17] = { str = "Entregue #INIn Search of the Excavation Team pt.1# aceite #GETIn Search of the Excavation Team pt.2#" },
			[18] = { str = "Aceite #GETUncovering the Past#." },
			[19] = { str = "Fora da caverna aceite #GETOrmer s Revenge pt.1.#" },
			[20] = { str = "Volte para onde voce matou os raptors minutos atras em #COORD[25,46]# e faca #DOOrmer's Revenge pt.1# matando mottled raptors e screechers.", x = 25, y = 46, zone = "Wetlands" },
			[21] = { str = "Volte ate a caverna em #COORD[38,52]# e entregue #INOrmer's Revenge pt.1# aceite #GETOrmer's Revenge pt.2#", x = 38, y = 52, zone = "Wetlands" },
			[22] = { str = "Agora faca ambas #DOOrmer's Revenge pt.2# matando Scythclaw e Razormaw Raptors abaixo, e #DOUncovering the Past# as reliquias estao por toda parte ao redor dos raptors. Existem 4 diferentes que spawnam aleatoriamente mas cada uma tem seu proprio formato: (Modr=Vaso Fino Vermelho) (Golm=Vaso Gordo Amarelo) (Neru=Monte de Terra) (Ados=Tumba)." },
			[23] = { str = "Volte ate #COORD[38,52]# e entregue #INOrmer's Revenge pt.2# aceite #GETOrmer's Revenge pt.3#", x = 38, y = 52, zone = "Wetlands" },
			[24] = { str = "Entregue #INUncovering the Past#" },
			[25] = { str = "Faca #DOOrmer's Revenge pt.3# no topo da colina em #COORD[32,51]# #NPCSarltooth# e nivel 29 Mas e tao facil quanto os outros. Va entregar de volta em #COORD[38,52]#.", x = 32, y = 51, zone = "Wetlands" },
			[26] = { str = "Entre no Angerfang Encampment em #COORD[43,40]# e faca #DOWar Banners#", x = 43, y = 40, zone = "Wetlands" },
			[27] = { str = "Pare em #COORD[49,39]# aceite #GETDaily Delivery#.", x = 49, y = 39, zone = "Wetlands" },
			[28] = { str = "Va direto para o leste daqui ate #COORD[56,40]# e entregue #INThe Greenwarden# aceite #GETTramping Paws#", x = 56, y = 40, zone = "Wetlands" },
			[29] = { str = "Mate #NPCMosshide# por volta de #COORD[56,74]# para Tramping Paws no acampamento. Eles respawnam rapido, eu nao conseguia matar rapido o suficiente. Entregue em #COORD[56,40]# e aceite #GETFire Taboo# Voce deve estar no nivel 26 agora, se nao estara em breve", x = 56, y = 74, zone = "Wetlands" },
			[30] = { str = "Faca #DOFire Taboo# matando qualquer mosshide menos os que voce acabou de matar, Os flints dropam facilmente dos que estao por volta de #COORD[44,33]# tem alguns la.", x = 44, y = 33, zone = "Wetlands" },
			[31] = { str = "Entregue #INFire Taboo# em #COORD[56,40]# aceite #GETBlisters on the Land# Essa e uma daquelas quests que voce faz no caminho. Fen Creepers sao elementais stealth que ficam na agua. Se voce ver um, mate.", x = 56, y = 40, zone = "Wetlands" },
			[32] = { str = "Use Hearthstone para Menethil Harbor." },
			[33] = { str = "Entregue #INThe Absent Minded Prospector pt.5# no 2o andar da Inn" },
			[34] = { str = "Entre no castelo no andar de cima, entregue #INWar Banners# aceite #GETNek'Rosh's Gambit#" },
			[35] = { str = "No lado oeste da cidade entregue #INDaily Delivery# e #INYoung Crocolisk Skins# aceite #GETApprentice's Duties#" },
			[36] = { str = "Va ate a doca e entregue #INClaws From the Deep# aceite #GETReclaiming Goods#" },
			[37] = { str = "Na ponte entregue #INIn Search of the Excavation Team pt.2#." },
			[38] = { str = "Voce deve estar no nivel 26 nesse ponto e perto da metade para o 27. Voce pode esperar ate voar por IF para pegar talentos ou fazer agora." },
			[39] = { str = "Toque na caixa danificada em #COORD[13,41]# entregue #INReclaiming Goods# aceite #GETThe Search Continues#.", x = 13, y = 41, zone = "Wetlands" },
			[40] = { str = "Va logo ao norte para o proximo acampamento toque no barril selado em #COORD[13,38]# entregue #INThe Search Continues# aceite #GETSearch More Hovels#.", x = 13, y = 38, zone = "Wetlands" },
			[41] = { str = "Va ao norte de novo toque no barril meio enterrado em #COORD[13,34]# entregue #INSearch More Hovels# aceite #GETReturn the Statuette#", x = 13, y = 34, zone = "Wetlands" },
			[42] = { str = "Pare nos navios naufragados por volta de #COORD[14,28]# #COORD[14,25]# e mate os mortos-vivos em qualquer navio para #DOThe Cursed Crew# Tente ficar em cima dos navios. Mate #NPCSnellig# na parte quebrada do primeiro navio na traseira perto da costa para pegar a caixa.", x = 14, y = 28, zone = "Wetlands" },
			[43] = { str = "Daqui para o norte voce deve encontrar Giant crocolisks para #DOApprentice's Duties# assim como os fen dwellers (track hidden) nas aguas por toda essa area enquanto voce vai ate Ironbeard's Tomb em #COORD[44,25]# para #DODigging Through the Ooze# Mate oozes para pegar a bolsa.", x = 44, y = 25, zone = "Wetlands" },
			[44] = { str = "Agora quando todos os seus fen creepers estiverem mortos volte para o greenwarden em #COORD[56,40]# e entregue.", x = 56, y = 40, zone = "Wetlands" },
			[45] = { str = "Use Hearthstone para Menethil Harbor." },
			[46] = { str = "Logo fora entregue #INThe Cursed Crew# aceite #GETLifting the Curse#." },
			[47] = { str = "Va um pouco ao norte e entregue #INDigging Through the Ooze#" },
			[48] = { str = "Va ate o lado oeste da cidade, entregue #INApprentice's Duties#." },
			[49] = { str = "Depois desga ate as docas, entregue #INReturn the Statuette#" },
			[50] = { str = "Voce deve estar no nivel 27 agora. " },
			[51] = { str = "Voe pra IF, pegue novas skills, entregue #INAn Old Colleague# em #COORD[71,51]# PULE a proxima parte", x = 71, y = 51, zone = "Wetlands" },
			[52] = { str = "Voe pra SW, entregue #INA Gnome's Respite# em #COORD[43,80]# PULE a proxima parte", x = 43, y = 80, zone = "Wetlands" },
			[53] = { str = "Voe pra Lakeshire" },
		}
	},

-----------27-28 Lakeshire
	--[207] = {
	[2728] = {
		title = "27-28 Lakeshire",
		--n = "27-28 Lakeshire",
		--pID = 206, nID = 208,
		--itemCount = 18,
		items = {
			[1] = { str = "27-28 Lakeshire" },
			[2] = { str = "Aceite #GETBlackrock Bounty# logo na frente do FP perto da ponte " },
			[3] = { str = "Aceite #GETBlackrock Menace# logo depois de cruzar a ponte na direita." },
			[4] = { str = "Entre na prefeitura, aceite #GETSolomon's Law#" },
			[5] = { str = "Aceite #GETWanted: Lieutenant Fangore# Fora da Inn na parede" },
			[6] = { str = "Sete Lakeshire como seu Hearthstone" },
			[7] = { str = "Logo a oeste da cidade na casa depois da Inn, aceite #GETAn Unwelcome Guest# agora va fazer logo a oeste dessa casa em #COORD[16,49]# (Bellygrub) mate ele depois entregue de volta.", x = 16, y = 49, zone = "Redridge Mountains" },
			[8] = { str = "Va ate Render's Camp em #COORD[44,19]# e mate os orcs aqui para #DOBlackrock Menace# enquanto segue para NW ate 34,7 para #DOBlackrock Bounty#", x = 44, y = 19, zone = "Redridge Mountains" },
			[9] = { str = "Chegando na caverna mate para pegar os machados e champions Va pela esquerda quando entrar em direcao a area mais baixa com agua, tem uma quest de escolta aqui." },
			[10] = { str = "Voce deve ter seus machados e champions mortos ate chegar na escolta. Se nao, voce pode matar eles na saida." },
			[11] = { str = "Pegue a quest de escolta #GETMissing In Action# em #COORD[28,12]# na caverna e escolte ele para fora. Ele e um elite 25 entao nao morre facil. Assim que voce sair do acampamento ele comeca a correr de volta para Lakeshire, entregue a quest logo onde voce parar assim como #INBlackrock Menace# PULE #VIDEOTharil'Zun#", x = 28, y = 12, zone = "Redridge Mountains" },
			[12] = { str = "Atravesse a ponte perto do FP entregue, #INBlackrock Bounty#" },
			[13] = { str = "Mate os Gnolls por volta de #COORD[74,42]# para #DOSolomon's Law# e fique de olho em #DOWanted: Lieutenant Fangore# ele esta em #COORD[80,40]# Certifique-se de limpar os mobs ao redor dele ou eles vem correndo", x = 74, y = 42, zone = "Redridge Mountains" },
			[14] = { str = "Quando terminar ambos, grinde nesses shadowhide ate faltar mais ou menos 4k ou 2 barras para o nivel 28" },
			[15] = { str = "Use Hearthstone para Lakeshire" },
			[16] = { str = "Entre na prefeitura e entregue ambas #INSolomon's Law# e #INWanted: Lieutenant Fangore#" },
			[17] = { str = "Voce deve ter chegado no nivel 28 depois disso." },
			[18] = { str = "Desga ate o canto SW de Redridge Mountains, e pegue o caminho que bifurca para o sul ate Duskwood" },
		}
	},

-----------28-29 Duskwood
	--[208] = {
	[2829] = {
		title = "28-29 Duskwood",
		--n = "28-29 Duskwood",
		--pID = 207, nID = 209,
		--itemCount = 48,
		items = {
			[1] = { str = "28-29 Duskwood" },
			[2] = { str = "Nota sobre Duskwood, tem algumas cadeias longas e sem sentido que voce so faz algumas partes, depois PULA o resto" },
			[3] = { str = "Siga a estrada ate chegar em Darkshire e pegue o FP em #COORD[72,44]#", x = 72, y = 44, zone = "Duskwood" },
			[4] = { str = "Va ate a casa logo ao sul do FP em #COORD[79,47]# aceite #GETLook to the Stars pt.1# Compre um bronze tube do engenheiro gnomo logo ao sul daqui em #COORD[78,48]# e entregue de volta, aceite #GETLook to the Stars pt.2#", x = 79, y = 47, zone = "Duskwood" },
			[5] = { str = "Va em direcao a cidade e a primeira casa grande na esquerda, fora dela aceite #GETWorgen in the Woods pt.1#" },
			[6] = { str = "Entre na casa e aceite #GETRaven Hill# #GETThe Hermit# e #GETDeliveries to Sven#" },
			[7] = { str = "Saia da casa e va direto para a casa do outro lado da rua e aceite #GETThe Legend of Stalvan pt.1# e #GETThe Totem of Infliction#." },
			[8] = { str = "Saia pela porta e va direto para a Inn e sete como seu Hearthstone." },
			[9] = { str = "Saia e va para a direita, aceite #GETThe Night Watch pt.1#" },
			[10] = { str = "Entregue #INThe Legend of Stalvan pt.1# PULE o resto" },
			[11] = { str = "Comece fazendo #DOWorgen in the Woods pt.1# a leste de Duskwood por volta de #COORD[64,46]# matando Nightbane Shadow Weaver", x = 64, y = 46, zone = "Duskwood" },
			[12] = { str = "Entregue #INWorgen in the Woods pt.1# de volta no centro da cidade, aceite #GETWorgen in the Woods pt.2#" },
			[13] = { str = "Volte para por volta de #COORD[64,46]# e mate Nightbane Dark Runners agora para #DOWorgen in the Woods pt.2# Tem muitos nos acampamentos", x = 64, y = 46, zone = "Duskwood" },
			[14] = { str = "Va entregar #INWorgen in the Woods pt.2# no centro da cidade de novo e aceite #GETWorgen in the Woods pt.3#" },
			[15] = { str = "Va ate a casa em #COORD[81,59]# entregue #INLook to the Stars pt.2# aceite #GETLook to the Stars pt.3#", x = 81, y = 59, zone = "Duskwood" },
			[16] = { str = "Faca #DOThe Night Watch pt.1# e a parte dos dedos de esqueleto de #DOThe Totem of Infliction# no Tranquil Garden Cemetary por volta de #COORD[79,70]#.", x = 79, y = 70, zone = "Duskwood" },
			[17] = { str = "Pegue Mary's Looking Glass para #DOLook to the Stars pt.3# dentro da capela do insane ghoul" },
			[18] = { str = "Mate os mobs por volta de #COORD[73,73]# dentro e fora da caverna para #DOWorgen in the Woods pt.3#.", x = 73, y = 73, zone = "Duskwood" },
			[19] = { str = "Use Hearthstone para Darkshire." },
			[20] = { str = "Logo fora da Inn, entregue #INThe Night Watch pt.1# aceite #GETThe Night Watch pt.2#." },
			[21] = { str = "Va para o leste daqui e entregue #INWorgen in the Woods pt.3# aceite #GETWorgen in the Woods pt.4# entre na casa e entregue." },
			[22] = { str = "Va logo ao sul do FP ate #COORD[79,47]# entregue #INLook to the Stars pt.3# aceite #GETLook to the Stars pt.4#", x = 79, y = 47, zone = "Duskwood" },
			[23] = { str = "Voce deve estar acima da metade do caminho para o nivel 29, mais perto de 3/4" },
			[24] = { str = "Pare na caverna do morro dos ogros em #COORD[33,75]# e mate #NPCZzarc' Vul# para #DOLook to the Stars pt.4# Fique na esquerda dentro da caverna", x = 33, y = 75, zone = "Duskwood" },
			[25] = { str = "Pare na frente de Raven Hill em #COORD[18,56]# e entregue #INRaven Hill# PULE o resto pois estao cinza", x = 18, y = 56, zone = "Duskwood" },
			[26] = { str = "Va ao norte ate o cemiterio e mate esqueletos para #DOThe Night Watch pt.2# e aranhas aqui para #DOThe Totem of Infliction#." },
			[27] = { str = "Mate ghouls na parte norte do cemiterio em #COORD[22,38]# para pegar ghoul fangs para #DOThe Totem of Infliction#", x = 22, y = 38, zone = "Duskwood" },
			[28] = { str = "Mate black widows a leste do cemiterio para a ultima parte de #DOThe Totem of Infliction#" },
			[29] = { str = "Va ate a cabana NE de Raven Hill em #COORD[28,31]# e entregue #INThe Hermit# aceite #GETSupplies From Darkshire#.", x = 28, y = 31, zone = "Duskwood" },
			[30] = { str = "Va ate #COORD[17,29]# no tumulo e aceite #GETThe Weathered Grave#", x = 17, y = 29, zone = "Duskwood" },
			[31] = { str = "Va ate 7,34 e entregue #INDeliveries to Sven# aceite #GETSven's Revenge#", x = 7, y = 34, zone = "Duskwood" },
			[32] = { str = "Use Hearthstone para Darkshire" },
			[33] = { str = "Logo na frente da Inn, entregue #INThe Night Watch pt.2# aceite #GETThe Night Watch pt.3#" },
			[34] = { str = "Entre na prefeitura, entregue #INThe Weathered Grave# aceite #GETMorgan Ladimore# Entregue logo na frente da prefeitura PULE #VIDEOMor'Ladim#" },
			[35] = { str = "Entre na casa a leste da Inn, entregue #INThe Totem of Infliction# e #INSupplies From Darkshire# aceite #GETGhost Hair Thread#" },
			[36] = { str = "Entre na ultima casa a leste, entregue #INLook to the Stars pt.4#." },
			[37] = { str = "Va ate Blind Mary na casa em #COORD[81,59]# entregue #INGhost Hair Thread# aceite #GETReturn the Comb# Va entregar na casa a leste da Inn, aceite #GETDeliver the Thread#", x = 81, y = 59, zone = "Duskwood" },
			[38] = { str = "Va ate #COORD[49,77]# (voce pode desviar de tudo indo em direcao a STV e depois ate esse local) e entregue #INSven's Revenge# aceite #GETSven's Camp#", x = 49, y = 77, zone = "Duskwood" },
			[39] = { str = "Suba ate a cabana NE de Raven Hill e entregue #INDeliver the Thread# aceite #GETZombie Juice#" },
			[40] = { str = "Va ate o subterraneo em #COORD[23,35]# mate plagued spreaders por aqui e la embaixo para #DOThe Night Watch pt.3# voce provavelmente nao vai completar tudo de uma vez.", x = 23, y = 35, zone = "Duskwood" },
			[41] = { str = "Grinde seu caminho de volta e depois ate Sven em 7,34 entregue #INSven's Revenge# aceite #GETThe Shadowy Figure#", x = 7, y = 34, zone = "Duskwood" },
			[42] = { str = "Use Hearthstone para Darkshire" },
			[43] = { str = "Entregue #INZombie Juice# logo na sua frente, PULE o resto" },
			[44] = { str = "Entregue #INThe Night Watch pt.3# logo fora da Inn" },
			[45] = { str = "Entregue #INThe Shadowy Figure# na casa a leste da Inn aceite #GETThe Shadowy Search Continues#" },
			[46] = { str = "Entregue na prefeitura, aceite #GETInquire at the Inn# PULE o resto" },
			[47] = { str = "Se voce encontrou #NPCAn Old History Book# (dropa de todos os mobs em Duskwood) comece a quest #GETAn Old History Book# e Voe pra SW e entregue em 74,7 e aceite #GETSouthshore#", x = 74, y = 7, zone = "Duskwood" },
			[48] = { str = "Voe pra Menethil Harbor e pegue o barco para Auberdine, Voe pra Ashenvale" },
		}
	},

-----------29-30 Ashenvale
	--[209] = {
	[2930] = {
		title = "29-30 Ashenvale",
		--n = "29-30 Ashenvale",
		--pID = 208, nID = 210,
		--itemCount = 18,
		items = {
			[1] = { str = "29-30 Ashenvale" },
			[2] = { str = "Sete Astranaar como seu Hearthstone." },
			[3] = { str = "Pare em #COORD[66,56]# e toque no cristal para a primeira parte de #DOThe Tower of Althalaxx pt.6#.", x = 66, y = 56, zone = "Ashenvale" },
			[4] = { str = "Mate Withered Ancients para a Wooden Key para #DORaene's Cleansing pt.4# por volta de #COORD[55,35]# depois use a chave no bau em #COORD[54,35]#", x = 55, y = 35, zone = "Ashenvale" },
			[5] = { str = "Va ate #COORD[53,46]# entregue #INRaene's Cleansing pt.4# aceite #GETRaene's Cleansing pt.5#", x = 53, y = 46, zone = "Ashenvale" },
			[6] = { str = "Va ate #COORD[85,44]# e entregue #INKayneth Stillwind# aceite #GETForsaken Diseases#", x = 85, y = 44, zone = "Ashenvale" },
			[7] = { str = "Va ate #COORD[81,48]# e pegue a segunda parte de #GETThe Tower of Althalaxx pt.6#", x = 81, y = 48, zone = "Ashenvale" },
			[8] = { str = "Va ate #COORD[66,81]# e faca #DOFallen Sky Lake# o mob esta no centro", x = 66, y = 81, zone = "Ashenvale" },
			[9] = { str = "Mate rotting slimes ate um bau cair a leste da estrada perto do lago para #DORaene's Cleansing pt.5#" },
			[10] = { str = "Va ate #COORD[75,71]# e faca #DOForsaken Diseases# a garrafa esta na mesa.", x = 75, y = 71, zone = "Ashenvale" },
			[11] = { str = "Entregue #INForsaken Diseases# em #COORD[85,44]# PULE a proxima parte.", x = 85, y = 44, zone = "Ashenvale" },
			[12] = { str = "Use Hearthstone para Astranaar" },
			[13] = { str = "Entregue #INFallen Sky Lake# na ultima casa do lado leste da cidade" },
			[14] = { str = "Va ate #COORD[53,46]# entregue #INRaene's Cleansing pt.5# aceite #GETRaene's Cleansing pt.5# Va entregar no santuario dentro da arvore em #COORD[56,49]# aceite #GETRaene's Cleansing pt.6# Entregue de volta no moonwell em #COORD[53,46]# aceite #GETRaene's Cleansing pt.7# morra para aparecer perto da cidade", x = 53, y = 46, zone = "Ashenvale" },
			[15] = { str = "Entregue #INRaene's Cleansing pt.7# na Inn, PULE o resto mas guarde a vara, voce pode usar pra sempre para se transformar por diversao =P" },
			[16] = { str = "Va ate #COORD[26,38]# entregue #INThe Tower of Althalaxx pt.6# PULE o resto", x = 26, y = 38, zone = "Ashenvale" },
			[17] = { str = "Voe pra Darnassus e pegue seus talentos do nivel 30" },
			[18] = { str = "Voe pra Auberdine depois pegue o barco para Menethil Harbor" },
		}
	},

-----------30-30 Wetlands
	--[210] = {
	[3030] = {
		title = "30-30 Wetlands",
		--n = "30-30 Wetlands",
		--pID = 209, nID = 301,
		--itemCount = 18,
		items = {
			[1] = { str = "30-30 Wetlands" },
			[2] = { str = "Sete Menethil Harbor como seu Hearthstone." },
			[3] = { str = "Va ate #COORD[14,25]# e mate Captain Halyndor para pegar a chave dele no topo do navio, o bau esta no fundo do navio. Mande seu pet para pegar todo o aggro, depois mande ele atacar um murloc para que treine todos para fora. Toque no bau e entregue #INLifting the Curse# aceite #GETThe Eye of Paleth#", x = 14, y = 25, zone = "Wetlands" },
			[4] = { str = "Toque na catapulta em #COORD[47,47]#, entregue #INNek'Rosh's Gambit# aceite #GETDefeat Nek'Rosh#", x = 47, y = 47, zone = "Wetlands" },
			[5] = { str = "Va ate #COORD[53,55]# e limpe o lado esquerdo, suba e contorne por tras, para fazer #DODefeat Nek'Rosh# limpe tudo que ele possa aggar, morra fazendo isso se precisar. Ele e meio fraco. Bem facil para um elite 32.", x = 53, y = 55, zone = "Wetlands" },
			[6] = { str = "Use Hearthstone para Menethil Harbor." },
			[7] = { str = "Entregue #INThe Eye of Paleth# logo na sua frente, aceite #GETCleansing the Eye#." },
			[8] = { str = "Va ao topo do castelo, entregue #INDefeat Nek'Rosh#." },
			[9] = { str = "Aceite #GETFall of Dun Modr# logo fora da Inn " },
			[10] = { str = "Entregue #INFall of Dun Modr# em #COORD[49,18]# aceite #GETThe Thandol Span pt.1#", x = 49, y = 18, zone = "Wetlands" },
			[11] = { str = "Va ate a metade da ponte em 51,8 e entre na porta que desce, procure o corpo do anao morto, entregue #INThe Thandol Span pt.1# aceite #GETThe Thandol Span pt.2# entregue de volta no acampamento em #COORD[49,18]# aceite #GETThe Thandol Span pt.3#", x = 51, y = 8, zone = "Wetlands" },
			[12] = { str = "Volte pela ponte, logo a direita tem uma ponte menor. Atravesse e destrua o carrinho de explosivos para #DOThe Thandol Span pt.3# em #COORD[48,88]# aceite #GETPlea to the Alliance#", x = 48, y = 88, zone = "Wetlands" },
			[13] = { str = "Va ate Arathi Highlands ate Refuge Point em #COORD[45,47]# e entregue #INPlea to the Alliance#.", x = 45, y = 47, zone = "Arathi Highlands" },
			[14] = { str = "Pegue o FP" },
			[15] = { str = "Voce deve estar na metade do caminho para o nivel 31 ou mais agora." },
			[16] = { str = "Va em direcao a Hillsbrad Foothills." },
			[17] = { str = "Pare em #COORD[27,49]# e va para o sul ate Stormgarde Keep, na primeira intersecao va para a direita e siga a parede pela ponte, compre todos os 3 livros de first aid em #COORD[26,58]#", x = 27, y = 49, zone = "Arathi Highlands" },
			[18] = { str = "Continue indo para Hillsbrad" },
		}
	},
}