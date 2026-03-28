--[[--------------------------------------------------
003_Alliance_30to40.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 003 From Lvl 30 to Lvl 40
	1.04.1
		-- First Release
			Alliance's Guide
			from level 30 to lever 40
	1.04.2
		-- no changes in here for this revision
	1.04.3
		-- Added color codes
			Fixed various spelling errors
			Adjustment to coordinate visibility
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_003_Alliance_30to40 = {
-----------30-31 Hillsbrad Foothills
	--[301] = {
	[3031] = {
		title = "30-31 Hillsbrad Foothills",
		--n = "30-31 Hillsbrad Foothills",
		--pID = 210, nID = 302,
		--itemCount = 13,
		items = {
			[1] = { str = "30-31 Hillsbrad Foothills" },
			[2] = { str = "Va ate Southshore em #COORD[49,52]# e pegue o FP", x = 49, y = 52, zone = "Hillsbrad Foothills" },
			[3] = { str = "Pare no celeiro a leste do FP, aceite #GETCostly Menace#" },
			[4] = { str = "Va ate a casa em frente ao celeiro, entregue #INSouthshore# PULE a proxima parte " },
			[5] = { str = "Va em frente a Inn, aceite #GETHints of a New Plague#" },
			[6] = { str = "Entre na Inn, sete seu Hearthstone aqui, depois aceite #GETDown the Coast#." },
			[7] = { str = "Em frente ao town hall, aceite #GETCrushridge Bounty#" },
			[8] = { str = "Entre no town hall, aceite #GETSyndicate Assassins#" },
			[9] = { str = "Va ate o SW de Southshore e faca #DODown the Coast# na praia, matando murlocs. Entregue na Inn quando terminar, aceite #GETFarren's Proof pt.1#" },
			[10] = { str = "Faca #DOFarren's Proof pt.1# de novo na praia, se eu nao estiver level 31 quando terminar de pegar as cabecas, eu grindo ate estar." },
			[11] = { str = "Volte pra Inn, entregue #INFarren's Proof pt.1# aceite #GETFarren's Proof pt.2# entregue logo na frente da Inn, aceite #GETFarren's Proof pt.3# Volte pra dentro da Inn, entregue e aceite #GETStormwind ho!# " },
			[12] = { str = "Faca #DOStormwind ho!# logo a SE do dock agora, mate os naga na praia." },
			[13] = { str = "Volte pra Inn e entregue Stormwind ho! , aceite #GETReassignment#" },
		}
	},

-----------31-31 Alterac Mountains
	--[302] = {
	[3131] = {
		title = "31-31 Alterac Mountains",
		--n = "31-31 Alterac Mountains",
		--pID = 301, nID = 303,
		--itemCount = 8,
		items = {
			[1] = { str = "31-31 Alterac Mountains" },
			[2] = { str = "Va ate Alterac Mountains perto da entrada do AV em #COORD[64,38]# e mate leoes para #DOCostly Menace# Eles ficam ao longo da borda sul perto do AV. Eu geralmente pego todos em frente e a Oeste do AV", x = 64, y = 38, zone = "Alterac Mountains" },
			[3] = { str = "Va a leste do AV e faca #DOSyndicate Assassins# no acampamento em #COORD[55,67]#. Tem um acampamento perto do AV mas esse tem uma quest que voce pode pegar perto das tendas na mesa. Limpe o acampamento e toque no documento do Syndicate, aceite #GETForeboding Plans# e #GETEncrypted Letter#", x = 55, y = 67, zone = "Alterac Mountains" },
			[4] = { str = "Use Hearthstone pra Southshore" },
			[5] = { str = "Entre no town hall, entregue #INSyndicate Assassins# e #INForeboding Plans# aceite #GETNoble Deaths#" },
			[6] = { str = "Pare na casa ao Norte da Inn, entregue #INEncrypted Letter# aceite #GETLetter to Stormpike#" },
			[7] = { str = "Va ate o celeiro e entregue #INCostly Menace#" },
			[8] = { str = "Voe pra Refuge Point" },
		}
	},

-----------31-32 Arathi Highlands
	--[303] = {
	[3132] = {
		title = "31-32 Arathi Highlands",
		--n = "31-32 Arathi Highlands",
		--pID = 302, nID = 304,
		--itemCount = 10,
		items = {
			[1] = { str = "31-32 Arathi Highlands" },
			[2] = { str = "Aceite #GETNorthfold Manor# grinde ate la em #COORD[33,27]# Eu grindo aqui ate level 32", x = 33, y = 27, zone = "Arathi Highlands" },
			[3] = { str = "Use Hearthstone pra Southshore, Voe pra Refuge point, entregue #INNorthfold Manor# Voe pra IF" },
			[4] = { str = "Va ate o hall of explorers em #COORD[69,20]# em IF aceite #GETReclaimers' Business# em Desolace depois va entreguar #INLetter to Stormpike# aceite #GETFurther Mysteries#", x = 69, y = 20, zone = "Arathi Highlands" },
			[5] = { str = "Aceite #GETThe Brassbolts Brothers# no Hall of Arms em #COORD[72,93]# depois pegue novas skills", x = 72, y = 93, zone = "Arathi Highlands" },
			[6] = { str = "Sete seu Hearthstone em IF em #COORD[18,51]# Compre alguns #NPCBloodstone Ore# pra uma quest depois em STV. Se nao tiver nenhum, confira a AH em Booty Bay", x = 18, y = 51, zone = "Arathi Highlands" },
			[7] = { str = "Voe pra SW" },
			[8] = { str = "Va ate o Keep em #COORD[72,15]# e entregue #INReassignment#", x = 72, y = 15, zone = "Stormwind City" },
			[9] = { str = "Va ate #COORD[39,27]# na Cathedral e entregue #INCleansing the Eye#", x = 39, y = 27, zone = "Stormwind City" },
			[10] = { str = "Voe pra Duskwood, depois va ate #COORD[44,66]# e va pro sul em STV", x = 44, y = 66, zone = "Duskwood" }
		}
	},

-----------32-32 Stranglethorn Vale
	--[304] = {
	[3232] = {
		title = "32-32 Stranglethorn Vale",
		--n = "32-32 Stranglethorn Vale",
		--pID = 303, nID = 305,
		--itemCount = 19,
		items = {
			[1] = { str = "32-32 Stranglethorn Vale" },
			[2] = { str = "Va ate o Rebel Camp em 37,3 fica logo a oeste quando voce entra.", x = 37, y = 3, zone = "Stranglethorn Vale" },
			[3] = { str = "Aceite #GETThe Second Rebellion# e #GETBad Medicine#" },
			[4] = { str = "Depois aceite #GETKrazek's Cookery#" },
			[5] = { str = "Va ate o Nessingway's em #COORD[35,10]# e aceite #GETWelcome to the Jungle# depois entregue atras de voce. Isso libera os 3 quest givers aqui.", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[6] = { str = "Agora aceite #GETRaptor Mastery pt.1# #GETPanther Mastery pt.1# #GETTiger Mastery pt.1# Nao aceite a quest de colecionar paginas ate ter todas as paginas." },
			[7] = { str = "Faca #DOPanther Mastery pt.1# e #DOTiger Mastery pt.1# Tigres ficam logo atras do Nessingway's, e as Panteras ficam um pouco a leste centralizadas em 41,9", x = 41, y = 9, zone = "Stranglethorn Vale" },
			[8] = { str = "Va ate #COORD[44,10]# e faca #DOThe Second Rebellion# e a caixa de suprimentos Kurzen em 44,9 em frente a Inn para #DOBad Medicine# os remedios tem drop baixo dos medicine men.", x = 44, y = 10, zone = "Stranglethorn Vale" },
			[9] = { str = "Volte ao rebel camp em 37,3 Entregue #INThe Second Rebellion# e #INBad Medicine# PULE #VIDEOSpecial Forces#.", x = 37, y = 3, zone = "Stranglethorn Vale" },
			[10] = { str = "Volte ao Nessingway's em #COORD[35,10]# e entregue #INPanther Mastery# pt.1 e #INTiger Mastery pt.1# aceite #GETPanther Mastery pt.2# e #GETTiger Mastery pt.2#.", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[11] = { str = "Mate Stranglethorn Tigers em #COORD[29,10]# para #DOTiger Mastery pt.2# e as Panteras em #COORD[28,12]# para #DOPanther Mastery pt.2#.", x = 29, y = 10, zone = "Stranglethorn Vale" },
			[12] = { str = "Mate Stranglethorn Raptors em #COORD[26,15]# #DORaptor Mastery pt.1#", x = 26, y = 15, zone = "Stranglethorn Vale" },
			[13] = { str = "Volte ao Nessingway's em #COORD[35,10]# e entregue #INTiger Mastery pt.2#, #INPanther Mastery pt.2#, e #INRaptor Mastery pt.1#. Aceite #GETTiger Mastery pt.3#, #GETPanther Mastery pt.3# e #GETRaptor Mastery pt.2#", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[14] = { str = "Va ate Booty Bay e pegue o FP." },
			[15] = { str = "Entregue #INKrazek's Cookery# no ultimo andar da inn, aceite e entregue de volta (os bloodstone ores) #GETFavor for Krazek# depois aceite #GETReturn to Corporal Kaleb# (essa quest da seu primeiro helm) tambem aceite #GETInvestigate the Camp# e #GETSupplies to Private Thorsen#" },
			[16] = { str = "Pegue o Barco pra Rachet" },
			[17] = { str = "Pegue o FP" },
			[18] = { str = "Agora uma corridinha por territorio Horde. Va ate o sul dos Barrens ate o great lift e desca pra 1k needles. Pule se voce for atacado." },
			[19] = { str = "Va ate o sul dos Barrens ate o great lift e desca pra 1k needles. Pule se voce for atacado." },
		}
	},

-----------32-33 Thousand Needles (Shimmering Flats)
	--[305] = {
	[3233] = {
		title = "32-33 Thousand Needles (Shimmering Flats)",
		--n = "32-33 Thousand Needles (Shimmering Flats)",
		--pID = 304, nID = 306,
		--itemCount = 19,
		items = {
			[1] = { str = "32-33 Thousand Needles (Shimmering Flats)" },
			[2] = { str = "Agora pegue o FP no lado oeste dessa zona em 8,18, fica logo dentro de Feralas. Isso vai economizar muito tempo depois.", x = 8, y = 18, zone = "Thousand Needles" },
			[3] = { str = "Voce deve estar perto do level 33 entao grinde ate la no caminho pro Shimmering Flats." },
			[4] = { str = "Va ate #COORD[78,77]# e entregue #INThe Brassbolts Brothers# aceite #GETHardened Shells# e #GETSalt Flat Venom#", x = 78, y = 77, zone = "Thousand Needles" },
			[5] = { str = "Va um pouco ao lado desses caras e pegue #GETRocket Car Parts#, #GETWharfmaster Dizzywig# e #GETHemet Nesingwary#" },
			[6] = { str = "Va a leste ate #COORD[80,75]# e aceite #GETLoad Lightening#", x = 80, y = 75, zone = "Thousand Needles" },
			[7] = { str = "Va ate #COORD[81,77]# e aceite #GETA Bump in the Road#", x = 81, y = 77, zone = "Thousand Needles" },
			[8] = { str = "Agora as pecas do carro para #DORocket Car Parts# estao espalhadas por aqui, entao pegue enquanto faz quests. Os Buzzards para #DOLoad Lightening# tambem ficam por todo lado entao mate se voce ver um." },
			[9] = { str = "Comece indo pro sul e matando gazers e crystalhide em #COORD[76,87]# para #DOA Bump in the Road#", x = 76, y = 87, zone = "Thousand Needles" },
			[10] = { str = "Mate escorpioes em #COORD[71,74]# e ao norte daqui para #DOSalt Flat Venom#", x = 71, y = 74, zone = "Thousand Needles" },
			[11] = { str = "Mate Basilisks em #COORD[73,59]# para #DOA Bump in the Road#", x = 73, y = 59, zone = "Thousand Needles" },
			[12] = { str = "Mate Tartarugas em #COORD[82,54]# para #DOHardened Shells#", x = 82, y = 54, zone = "Thousand Needles" },
			[13] = { str = "Pare em #COORD[86,66]# e faca #DOLoad Lightening#", x = 86, y = 66, zone = "Thousand Needles" },
			[14] = { str = "Volte pra #COORD[77,77]# entregue #INRocket Car Parts#", x = 77, y = 77, zone = "Thousand Needles" },
			[15] = { str = "Va ate os 2 NPCs logo a leste daqui e entregue #INSalt Flat Venom# e #INHardened Shells# depois aceite #GETMartek the Exiled#" },
			[16] = { str = "Va a leste ate #COORD[80,75]# entregue #INLoad Lightening# aceite #GETGoblin Sponsorship pt.1#", x = 80, y = 75, zone = "Thousand Needles" },
			[17] = { str = "Va ate #COORD[81,77]# e entregue #INA Bump in the Road#", x = 81, y = 77, zone = "Thousand Needles" },
			[18] = { str = "Va pro sul ate Tanaris e pegue o FP em Gadgetzan" },
			[19] = { str = "Use Hearthstone de volta pra IF e voe pra Menethil Harbor, pegue o barco pra Theramore, pegue o FP e voe pra Stonetalon Mountains ou volte e navegue pra Darkshore." },
		}
	},

-----------33-33 Stonetalon Mountains
	--[306] = {
	[3333] = {
		title = "33-33 Stonetalon Mountains",
		--n = "33-33 Stonetalon Mountains",
		--pID = 305, nID = 307,
		--itemCount = 2,
		items = {
			[1] = { str = "33-33 Stonetalon Mountains" },
			[2] = { str = "Aceite #GETReclaiming the Charred Vale# em frente ao moonwell depois va fazer em Charred Vale em #COORD[32,66]# enquanto vai em direcao a Desolace ", x = 32, y = 66, zone = "Stonetalon Mountains" },
		}
	},

-----------33-35 Desolace
	--[307] = {
	[3335] = {
		title = "33-35 Desolace",
		--n = "33-35 Desolace",
		--pID = 306, nID = 308,
		--itemCount = 38,
		items = {
			[1] = { str = "33-35 Desolace" },
			[2] = { str = "Sete seu Hearthstone em Nijel's Point depois voe de volta pra Stonetalon e entregue #INReclaiming the Charred Vale# PULE a proxima parte." },
			[3] = { str = "Use Hearthstone de volta pra Desolace" },
			[4] = { str = "Va ao sul da Inn, entregue #INReclaimers' Business# em Desolace aceite #GETReagents for Reclaimers Inc pt.1# e #GETThe Karnitol Shipwreck pt.1#" },
			[5] = { str = "Eu PULO as duas quests de faccao dos centauros. E so um grind inutil por 2 quests que nao valem a pena." },
			[6] = { str = "Aceite #GETCentaur Bounty#" },
			[7] = { str = "Va um pouco mais pro sul e aceite #GETVahlarriel's Search pt.1#" },
			[8] = { str = "Va a oeste ate #COORD[56,17]# #DOVahlarriel's Search pt.1# aceite #GETVahlarriel's Search pt.2#", x = 56, y = 17, zone = "Desolace" },
			[9] = { str = "Va a leste ate Sargeron em #COORD[75,20]# e mate os demonios para #DOReagents for Reclaimers Inc pt.1#", x = 75, y = 20, zone = "Desolace" },
			[10] = { str = "Volte pra Nijel's, entregue #INVahlarriel's Search pt.2# aceite #GETVahlarriel's Search pt.3#" },
			[11] = { str = "Suba um pouco mais, entregue #INReagents for Reclaimers Inc pt.1# aceite #GETReagents for Reclaimers Inc pt.2#" },
			[12] = { str = "Agora comece grindando nos escorpioes e outras coisas para #DOReagents for Reclaimers Inc pt.2# enquanto vai ate #COORD[62,38]# e aceite #GETBone Collector# ja que os escorpioes tem drop rate baixo so mate enquanto estiver andando", x = 62, y = 38, zone = "Desolace" },
			[13] = { str = "Va a leste ate a vila kolkar em #COORD[72,45]#. Mate eles para #DOCentaur Bounty# Se voce nao for 34 quando terminar, grinde ate ser", x = 72, y = 45, zone = "Desolace" },
			[14] = { str = "Grinde ate #COORD[60,61]# e aceite #GETKodo Roundup# Essa e uma quest unica onde voce doma um kodo no GY e traz de volta ate ter 5.", x = 60, y = 61, zone = "Desolace" },
			[15] = { str = "Se voce ver o bando de aged kodo's correndo mate 3 deles para #DOReagents for Reclaimers Inc pt.2# se nao voce pode encontrar alguns dentro do kodo graveyard." },
			[16] = { str = "Va ate o Kodo Graveyard em #COORD[51,58]#. Faca #DOBone Collector# toda vez que vier pegar um kodo pro roundup.", x = 51, y = 58, zone = "Desolace" },
			[17] = { str = "Quando terminar #DOKodo Roundup# entregue e va NW do GY em direcao a agua. Matando escorpioes se ainda precisar." },
			[18] = { str = "Pegue #GETSceptre of Light# em #COORD[38,27]# perto da torre grande", x = 38, y = 27, zone = "Desolace" },
			[19] = { str = "Va pro sul na praia ate #COORD[36,30]# e termine #DOThe Karnitol Shipwreck pt.1# aceite #GETThe Karnitol Shipwreck pt.2# depois aceite #GETClaim Rackmore's Treasure!# do log do Rackmore. Se seu quest log estiver cheio descarte centaur bounty.", x = 36, y = 30, zone = "Desolace" },
			[20] = { str = "Mate Drysnaps nas aguas bem aqui pra chave de prata de #DOClaim Rackmore's Treasure!# e os Slitherblades logo ao Norte daqui pra chave dourada." },
			[21] = { str = "Va ate Thunder Axe Fortress em #COORD[56,29]# e entre no predio principal no centro e entregue #INVahlarriel's Search pt.3# em #COORD[54,26]# aceite #GETSearch for Tyranis#", x = 54, y = 26, zone = "Desolace" },
			[22] = { str = "Saia e va pra direita, mate um seer em cima de uma torre para #DOSceptre of Light#" },
			[23] = { str = "Va ate o predio a oeste da entrada em #COORD[53,29]# mate Tyranis Malem para #DOSearch for Tyranis# depois entregue de volta dentro do predio principal. Limpe o caminho no predio principal pra direita porque uma escolta vem a seguir.", x = 53, y = 29, zone = "Desolace" },
			[24] = { str = "Aceite a quest de escolta #GETReturn to Vahlarriel# NAO ataque nada a menos que bata nela ou ela vai ignorar e continuar andando. A razao parece ser que os melees so a seguem, apenas os magos podem bater nela pra iniciar combate." },
			[25] = { str = "Va ate #COORD[62,38]# e entregue #INBone Collector#", x = 62, y = 38, zone = "Desolace" },
			[26] = { str = "Volte pra #COORD[38,27]# e entregue #INSceptre of Light# aceite #GETBook of the Ancients#", x = 38, y = 27, zone = "Desolace" },
			[27] = { str = "Nade ate o NW do mapa ate Ranazjar Isle e abra o bau em 30,9 para #DOClaim Rackmore's Treasure!#", x = 30, y = 9, zone = "Desolace" },
			[28] = { str = "Va ate o fundo da ilha e limpe tudo ao redor da estatua da serpente em 28,7. Voce vai fazer #DOBook of the Ancients# Essa quest buga se voce nao clicar na gem no inventario e depois na estatua. Nao so clique na estatua. Ele e 38 mas super facil.", x = 28, y = 7, zone = "Desolace" },
			[29] = { str = "Nade de volta pra #COORD[38,27]# e entregue #INBook of the Ancients#", x = 38, y = 27, zone = "Desolace" },
			[30] = { str = "Use Hearthstone pra Nijel's" },
			[31] = { str = "Va ao sul da Inn e entregue #INReagents for Reclaimers Inc pt.2# PULE a pt.3 por agora, e #GETThe Karnitol Shipwreck pt.2# PULE o resto." },
			[32] = { str = "Va um pouco mais pro sul, entregue #INCentaur Bounty#" },
			[33] = { str = "Finalmente entregue #INReturn to Vahlarriel#" },
			[34] = { str = "Voce deve estar a 2 barras do level 35 agora. Eu grindo nos Centauros em Gelkis Village em #COORD[37,80]# ate level 35", x = 37, y = 80, zone = "Desolace" },
			[35] = { str = "Va pro sul ate Feralas pra pegar o FP, isso vai economizar mais tempo depois." },
			[36] = { str = "Pegue o Barco em #COORD[43,42]# e pegue o FP em Feathermoon. Voe pra Theramore, depois pra Rachet.", x = 43, y = 42, zone = "Desolace" },
			[37] = { str = "Va ate a cabana do engenheiro em #COORD[62,36]# e entregue #INGoblin Sponsorship pt.1# aceite #GETGoblin Sponsorship pt.2# Depois va ate o dock e entregue #INWharfmaster Dizzywig# aceite #GETParts for Kravel#", x = 62, y = 36, zone = "Desolace" },
			[38] = { str = "Pegue o barco pra Booty Bay" },
		}
	},

-----------35-36 Stranglethorn Vale
	--[308] = {
	[3536] = {
		title = "35-36 Stranglethorn Vale",
		--n = "35-36 Stranglethorn Vale",
		--pID = 307, nID = 309,
		--itemCount = 38,
		items = {
			[1] = { str = "35-36 Stranglethorn Vale" },
			[2] = { str = "Entregue #INGoblin Sponsorship pt.2# ao descer do barco, aceite #GETGoblin Sponsorship pt.3#" },
			[3] = { str = "Entre na Inn e sete seu Hearthstone em BB, aceite #GETSinging Blue Shards#" },
			[4] = { str = "Aceite #GETHostile Takeover# e #GETBloodscalp Ears#" },
			[5] = { str = "Aceite #GETThe Haunted Isle# e entregue logo do lado de fora da porta, aceite #GETThe Stone of the Tides# Depois entregue #INGoblin Sponsorship pt.3# aceite #GETGoblin Sponsorship pt.4#" },
			[6] = { str = "Entre na loja Tan-Your-Hide Leatherworks e aceite #GETSupply and Demand# (fica descendo a rampa do FP)" },
			[7] = { str = "Va ate #COORD[48,21]# e mate Shadowmaw Panthers para #DOPanther Mastery pt.3#", x = 48, y = 21, zone = "Stranglethorn Vale" },
			[8] = { str = "Va a oeste ate o Venture Co. Base Camp em #COORD[43,18]# e mate os goblins aqui para #DOHostile Takeover# enquanto sobe a Operations Tower atras da base para #DOGoblin Sponsorship pt.4# Voce vai subir e matar Foreman Cozzle pra pegar a chave dele.", x = 43, y = 18, zone = "Stranglethorn Vale" },
			[9] = { str = "Se ainda nao tiver todos os cristais mate os goblins ate ter, depois entre na cabana pequena ao lado da base em #COORD[43,20]# e abra o bau pra pegar os blueprints para #DOGoblin Sponsorship pt.4#", x = 43, y = 20, zone = "Stranglethorn Vale" },
			[10] = { str = "Mate Lashtail Raptors em #COORD[37,22]# para #DORaptor Mastery pt.2#", x = 37, y = 22, zone = "Stranglethorn Vale" },
			[11] = { str = "Mate Elder Tigers em #COORD[33,18]# para #DOTiger Mastery pt.3#", x = 33, y = 18, zone = "Stranglethorn Vale" },
			[12] = { str = "Va em direcao ao Nessingways e mate os crocs no rio ao redor pra #DOSupply and Demand#" },
			[13] = { str = "Va ate o Nessingways e entregue #INTiger Mastery pt.3#, #INPanther Mastery pt.3#, #INRaptor Mastery pt.2#, e #INHemet Nesingwary#, Aceite #GETTiger Mastery pt.4# #GETPanther Mastery pt.4# e #GETRaptor Mastery pt.3#" },
			[14] = { str = "Volte pro sul ate o topo da colina em #COORD[32,17]# e mate Sin'Dall para #DOTiger Mastery pt.4# depois entregue de volta no Nessingways", x = 32, y = 17, zone = "Stranglethorn Vale" },
			[15] = { str = "Va ate o rebel camp em 37,3 e entregue #INSupplies to Private Thorsen#, Se ele nao estiver aqui procure ao sul do camp, se voce salva-lo quando ele patrulha voce tambem pode pegar #GETJungle Secrets# depois entregue no camp e pegue #GETBookie Herod#", x = 37, y = 3, zone = "Stranglethorn Vale" },
			[16] = { str = "Entregue #INReturn to Corporal Kaleb# pegue seu helm" },
			[17] = { str = "Aceite #GETSpecial Forces#" },
			[18] = { str = "Va ate o predio tipo Inn em 43,9 toque no livro no 2o andar e entregue #INBookie Herod# aceite #GETThe Hidden Key#", x = 43, y = 9, zone = "Stranglethorn Vale" },
			[19] = { str = "Entre na caverna em 45,7 e mate os mobs aqui para #DOSpecial Forces# e va ate o bau para #DOBookie Herod# , fica descendo a primeira bifurcacao, so 1 nivel abaixo depois nas caixas. Aceite #GETThe Spy Revealed!# (Facil daqui pra frente)", x = 45, y = 7, zone = "Stranglethorn Vale" },
			[20] = { str = "Agora grinde de volta pra fora ja que voce deve estar perto do level 36. Quando sair volte ao rebel camp." },
			[21] = { str = "Entregue #INSpecial Forces# PULE a proxima parte" },
			[22] = { str = "Entregue #INThe Spy Revealed!# aceite #GETPatrol Schedules# vire e entregue, aceite #GETReport to Doren# depois vire de novo e entregue (falei que era facil)" },
			[23] = { str = "Voce definitivamente deve ser level 36 agora. Vamos pegar skills em breve" },
			[24] = { str = "Va pro sul em direcao ao GY, depois va a oeste ao norte do rio e mate basilisks para #DOSinging Blue Shards# se nao pegar todos agora nao se preocupe tem mais pro sul." },
			[25] = { str = "Mate Bloodscalp em #COORD[29,19]# para #DOBloodscalp Ears# Voce provavelmente vai ter que limpar 2-3 vezes. Sao faceis", x = 29, y = 19, zone = "Stranglethorn Vale" },
			[26] = { str = "Mate Basilisks pra terminar #DOSinging Blue Shards# logo a oeste daqui acima da praia." },
			[27] = { str = "Va pro sul na Ilha ate dizer completo para #DOThe Stone of the Tides# Volte e mate basilisks se precisar." },
			[28] = { str = "Use Hearthstone pra BB" },
			[29] = { str = "Entregue #INSinging Blue Shards# PULE a proxima por agora" },
			[30] = { str = "Suba, entregue #INInvestigate the Camp#, #INBloodscalp Ears#" },
			[31] = { str = "Va logo la fora, entregue #INThe Stone of the Tides# e #INGoblin Sponsorship pt.4# Aceite #GETWater Elementals# e #GETGoblin Sponsorship pt.5#" },
			[32] = { str = "Entre na loja Tan-Your-Hide Leatherworks e entregue #INSupply and Demand# (fica descendo a rampa do FP) aceite #GETSome assembly required#" },
			[33] = { str = "Eu estou na metade do level 37 nesse ponto" },
			[34] = { str = "Voe pra IF pegue novas skills depois voe pra Menethil Harbor, sete seu Hearthstone la, e navegue pra Theramore" },
			[35] = { str = "Se seu first aid estiver em 225 va fazer #GETTriage# depois voe pra Gadgetzan" },
			[36] = { str = "Va ate Shimmering Flats em #COORD[77,77]# e entregue #INParts for Kravel# aceite #GETDelivery to the Gnomes# depois vire e entregue", x = 77, y = 77, zone = "Stranglethorn Vale" },
			[37] = { str = "Va um pouco a Leste e entregue #INGoblin Sponsorship pt.5# aceite #GETThe Eighteenth Pilot# depois entregue a 2 passos, aceite #GETRazzeric's Tweaking#" },
			[38] = { str = "Pegue #GETThe Rumormonger# em #COORD[77,77]# depois use Hearthstone pra Menethil Harbor", x = 77, y = 77, zone = "Stranglethorn Vale" },
		}
	},

-----------36-37 Alterac Mountains
 	--[309] = {
 	[3637] = {
		title = "36-37 Alterac Mountains",
		--n = "36-37 Alterac Mountains",
		--pID = 308, nID = 310,
		--itemCount = 10,
		items = {
			[1] = { str = "36-37 Alterac Mountains" },
			[2] = { str = "Va ate o Town Hall e entregue #INFurther Mysteries# aceite #GETDark Council# e #GETNoble Deaths#" },
			[3] = { str = "Sete seu Hearthstone em Southshore" },
			[4] = { str = "Va ate Alterac Mountains em #COORD[47,55]# e mate ogros pra Crushridge Bounty", x = 47, y = 55, zone = "Alterac Mountains" },
			[5] = { str = "Grinde ate Strahnbrad em #COORD[60,43]# e mate os syndicate e pegue seus aneis para #DONoble Deaths# Voce tambem pode matar shadow mages aqui para #DODark Council# que e mais facil do que matar nos camps depois", x = 60, y = 43, zone = "Alterac Mountains" },
			[6] = { str = "Grinde seu caminho a oeste ate a casa em #COORD[39,16]# e mate #NPCNagaz# para #DODark Council#. Eu limpo o primeiro camp que encontro depois grindo qualquer coisa no meu caminho a oeste que nao esteja em um camp. ", x = 39, y = 16, zone = "Alterac Mountains" },
			[7] = { str = "Voce quer estar pelo menos a 2 barras do level 37, se sim use Hearthstone pra SS" },
			[8] = { str = "Va do outro lado da Inn, entregue #INCrushridge Bounty# PULE a proxima" },
			[9] = { str = "Entre na Inn, entregue #INDark Council# e #INNoble Deaths#" },
			[10] = { str = "Voe pra Arathi Highlands" },
		}
	},

-----------37-38 Arathi Highlands
	--[310] = {
	[3738] = {
		title = "37-38 Arathi Highlands",
		--n = "37-38 Arathi Highlands",
		--pID = 309, nID = 311,
		--itemCount = 28,
		items = {
			[1] = { str = "37-38 Arathi Highlands" },
			[2] = { str = "Aceite #GETWorth Its Weight In Gold#" },
			[3] = { str = "Va ate #COORD[62,33]# toque no cristal e aceite #GETThe Princess Trapped#", x = 62, y = 33, zone = "Arathi Highlands" },
			[4] = { str = "Va logo a leste de Hammerfall em #COORD[80,40]#. (Compre bloodstone ore aqui, voce pode vender por alguns g a cada 4 em BB) Essa e uma arvore, atras dela esta o caminho que sobe pra caverna pra matar kobolds para #DOThe Princess Trapped# Se voce pegar todos antes do fim da caverna voce tem que continuar ate o fim pra entregar tocando nos Iridescent Shards e aceitar #GETStones of Binding#", x = 80, y = 40, zone = "Arathi Highlands" },
			[5] = { str = "Voce deve estar mais ou menos em 1/4 desse level quando sair da caverna." },
			[6] = { str = "Va ate o circle of east binding, logo a oeste de Hammerfall em #COORD[80,36]# e pegue a cresting key da pedra.", x = 80, y = 36, zone = "Arathi Highlands" },
			[7] = { str = "Pare em #COORD[60,53]# e entregue #INHints of a New Plague? Pt.1# aceite #GETHints of a New Plague? Pt.2# Se voce ver o courier mate ele. Simplesmente mande seu pet pegar aggro, quando estiver machucado deu multi shot nele. Ele e facil, so feign e deixe o pet morrer quando o courier morrer. O courier anda entre refuge e tarren mill.", x = 60, y = 53, zone = "Arathi Highlands" },
			[8] = { str = "Mate os trolls ao redor do lago em #COORD[67,69]# para #DOWorth Its Weight In Gold# voce pode pegar tusks e medicine bags dos caras aqui, pra pegar a dagger voce tem que matar Shadow Hunters na caverna em #COORD[68,74]#", x = 68, y = 74, zone = "Arathi Highlands" },
			[9] = { str = "Va ate o circle of outer binding em #COORD[52,50]# e pegue a thundering key da pedra.", x = 52, y = 50, zone = "Arathi Highlands" },
			[10] = { str = "Va ate refuge point e entregue #INWorth Its Weight In Gold# isso libera #GETWand Over Fist# de outro NPC" },
			[11] = { str = "Faca #DOWand Over Fist# matando #NPCColdrage# na caverna em #COORD[53,77]# (siga o caminho da esquerda) volte pro Refuge e entregue, PULE o resto", x = 53, y = 77, zone = "Arathi Highlands" },
			[12] = { str = "Va ate o circle of west binding em #COORD[25,30]# e pegue a burning key da pedra.", x = 25, y = 30, zone = "Arathi Highlands" },
			[13] = { str = "Eu encontrei o courier nesse ponto na estrada (varia ja que ele viaja)" },
			[14] = { str = "Va ate o circle of inner binding em #COORD[36,57]# e entregue #INStones of Binding# na pedra, PULE o resto.", x = 36, y = 57, zone = "Arathi Highlands" },
			[15] = { str = "Va SW daqui, tem um caminho que leva atras de Stromgarde em #COORD[31,64]# siga ele ate o caminho da caverna em #COORD[21,75]#", x = 31, y = 64, zone = "Arathi Highlands" },
			[16] = { str = "Nade ate o navio e aceite #GETLand HO!# depois vire e entregue." },
			[17] = { str = "Aceite #GETDeep Sea Salvage#" },
			[18] = { str = "Va perto da fogueira aceite #GETDrowned Sorrows# e #GETSunken Treasure pt.1#" },
			[19] = { str = "Faca #DOSunken Treasure pt.1# escoltando ele logo atras de voce na caverna. Entregue, aceite #GETSunken Treasure pt.2#" },
			[20] = { str = "Va pro sul perto dos navios afundados, em #COORD[24,84]# e faca #DOSunken Treasure pt.2# (use os oculos pra achar facil), #DODrowned Sorrows# (nagas), e #DODeep Sea Salvage# (2 em cada navio)", x = 24, y = 84, zone = "Arathi Highlands" },
			[21] = { str = "Entregue #INDeep Sea Salvage# no dock" },
			[22] = { str = "Entregue #INDrowned Sorrows# perto da fogueira, depois #INSunken Treasure pt.2# aceite #GETSunken Treasure pt.3#" },
			[23] = { str = "Entregue no dock aceite #GETSunken Treasure pt.4#" },
			[24] = { str = "Volte em direcao a Go'Shek Farm, se voce nao encontrou o courier ainda abandone a quest e use Hearthstone pra SS. Se sim va ate #COORD[60,53]# e entregue #INHints of a New Plague? Pt.2# aceite #GETHints of a New Plague? Pt.3# depois entregue de volta aceite #GETHints of a New Plague? Pt.4#", x = 60, y = 53, zone = "Arathi Highlands" },
			[25] = { str = "Escolte ela, quando terminar entregue de volta e aceite #GETHints of a New Plague? Pt.5# Grinde ate estar a 3500 xp do level 38" },
			[26] = { str = "Use Hearthstone pra Southshore" },
			[27] = { str = "Entregue #INHints of a New Plague? Pt.5# logo fora da Inn" },
			[28] = { str = "Voe pra Stormwind pra novas skills e pegue a quest #GETMorgan Stern# de Angus Stern em 41 89, depois voe pra Menethil e navegue pra Theramore", x = 41, y = 89, zone = "Stormwind" },
		}
	},

-----------38-38 Dustwallow Marsh
	--[311] = {
	[3838] = {
		title = "38-38 Dustwallow Marsh",
		--n = "38-38 Dustwallow Marsh",
		--pID = 310, nID = 312,
		--itemCount = 30,
		items = {
			[1] = { str = "38-38 Dustwallow Marsh" },
			[2] = { str = "Va perto da Inn, aceite #GETThey Call Him Smiling Jim#" },
			[3] = { str = "Entre na Inn, aceite #GETMudrock Soup and Bugs# e sete seu Hearthstone em Theramore. " },
			[4] = { str = "Va ate o 2o andar do castelo atras da Inn, nao a torre, entregue #INThey Call Him Smiling Jim# Isso da dicas sobre algumas quests na old Inn perto dos Barrens." },
			[5] = { str = "Compre 3 soothing spices do vendedor de trade supplies na casa em #COORD[66,51]# (pra uma quest proxima) ", x = 66, y = 51, zone = "Dustwallow Marsh" },
			[6] = { str = "Logo ao sair de Theramore, va pra direita e mate Mudrock turtles na praia para #DOMudrock Soup and Bugs#" },
			[7] = { str = "Va ate a casa em #COORD[55,26]# e aceite #GETSoothing Spices# depois entregue de volta, aceite #GETJarl Needs eyes#", x = 55, y = 26, zone = "Dustwallow Marsh" },
			[8] = { str = "Toque no monte de terra ao lado da casa, aceite #GETThe Orc Report#" },
			[9] = { str = "Va ate Darkmist Cavern em #COORD[32,23]# e mate aranhas dentro e fora para #DOJarl Needs eyes# Elas dropam 1-2 por kill", x = 32, y = 23, zone = "Dustwallow Marsh" },
			[10] = { str = "Pare em #COORD[35,38]# e pegue #GETHungry!#", x = 35, y = 38, zone = "Dustwallow Marsh" },
			[11] = { str = "Va ate #COORD[29,47]#, a shady rest inn, e pegue essas 3 quests, toque nas pegadas logo na frente #GETSuspicious Hoofprints# o distintivo no chao nas tabuas (e um distintivo pequeno) #GETLieutenant Paval Reethe pt.1# e o escudo sobre a lareira #GETThe Black Shield pt.1# ", x = 29, y = 47, zone = "Dustwallow Marsh" },
			[12] = { str = "Va ate #COORD[54,56]# e abra a caixa de envio para #DORazzeric's Tweaking#", x = 54, y = 56, zone = "Dustwallow Marsh" },
			[13] = { str = "Use Hearthstone pra Theramore" },
			[14] = { str = "Entregue #INMudrock Soup and Bugs# em frente a voce, aceite #GET… and bugs#" },
			[15] = { str = "Va ate os docks na torre e entregue #INThe Orc Report# aceite #GETCaptain Vimes# Va no castelo atras da Inn e entregue" },
			[16] = { str = "Entregue #INLieutenant Paval Reethe pt.1# aceite #GETLieutenant Paval Reethe pt.2#" },
			[17] = { str = " Entregue #INThe Black Shield pt.1# aceite #GETThe Black Shield pt.2#" },
			[18] = { str = "Entregue #INSuspicious Hoofprints# aceite a proxima quest " },
			[19] = { str = "Vire e entregue #INLieutenant Paval Reethe pt.2# aceite #GETDaelin's Men# depois vire e entregue aceite #GETThe Deserters pt.1#" },
			[20] = { str = "Va ate a casa do blacksmith, entregue #INThe Black Shield pt.2# aceite #GETThe Black Shield pt.3# va entregar de volta no castelo" },
			[21] = { str = "Va ate #COORD[55,26]# e entregue #INJarl Needs eyes# PULE a proxima", x = 55, y = 26, zone = "Dustwallow Marsh" },
			[22] = { str = "Va logo NE daqui e mate murlocs para #DOHungry!#" },
			[23] = { str = "Pare em #COORD[46,17]# e limpe alguns raptors ate estar 50% ou mais no 39, depois aceite #GETStinky's Escape# so siga ele, e mate o que atacar ele. Muito facil.", x = 46, y = 17, zone = "Dustwallow Marsh" },
			[24] = { str = "Pare em #COORD[35,38]# entregue #INHungry!#", x = 35, y = 38, zone = "Dustwallow Marsh" },
			[25] = { str = "Va ate a torre em #COORD[35,53]# e ataque Balos Jacken, com 1/4 de vida ele fica amigavel e depois entregue #INThe Deserters pt.1# aceite #GETThe Deserters pt.2#", x = 35, y = 53, zone = "Dustwallow Marsh" },
			[26] = { str = "Morra pra aparecer perto de Theramore" },
			[27] = { str = "Entregue #INStinky's Escape# na Inn " },
			[28] = { str = "Suba no castelo, entregue #INThe Deserters pt.2#" },
			[29] = { str = "Voe pra Gadgetzan e va ate Shimmering Flats em #COORD[80,76]# entregue #INRazzeric's Tweaking# aceite #GETSafety First pt.1# entregue em Gadget e aceite #GETSafety First pt.2# depois volte pras flats e entregue", x = 80, y = 76, zone = "Dustwallow Marsh" },
			[30] = { str = "Use Hearthstone pra Theramore e voe pra Rachet, pegue o barco pra BB" },
		}
	},

-----------38-40 Stranglethorn Vale
	--[312] = {
	[3840] = {
		title = "38-40 Stranglethorn Vale",
		--n = "38-40 Stranglethorn Vale",
		--pID = 311, nID = 401,
		--itemCount = 38,
		items = {
			[1] = { str = "38-40 Stranglethorn Vale" },
			[2] = { str = "Va em direcao a Inn, aceite #GETThe Bloodsail Buccaneers pt.1# no caminho" },
			[3] = { str = "Entre no predio ao lado do meio barco de cabeca pra baixo, aceite #GETScaring Shaky#" },
			[4] = { str = "Entre na Inn, sete seu Hearthstone aqui, aceite #GETVenture Company Mining#" },
			[5] = { str = "Suba, entregue #INThe Rumormonger# aceite #GETDream Dust In the Swamp# e #GETSkullsplitter Tusks#" },
			[6] = { str = "Va logo la fora, entregue #INSunken Treasure pt.4# PULE a proxima" },
			[7] = { str = "Va ate #COORD[33,39]# e mate raptors para #DORaptor Mastery pt.3#", x = 33, y = 39, zone = "Stranglethorn Vale" },
			[8] = { str = "Mate Snapjaw Crocolisks do riacho em #COORD[38,30]# ate o lago em #COORD[41,19]# para #DOSome assembly required#", x = 38, y = 30, zone = "Stranglethorn Vale" },
			[9] = { str = "Va ate a Ilha em #COORD[20,23]# e mate elementais para #DOWater Elementals# Voce deve estar perto do level 39 agora, grinde nos elementais ou raptors e basilisks em #COORD[33,39]#", x = 20, y = 23, zone = "Stranglethorn Vale" },
			[10] = { str = "Quando for level 39, grinde seu caminho a leste ate a estrada depois ate #COORD[41,41]# e mate os goblins para #DOVenture Company Mining#", x = 41, y = 41, zone = "Stranglethorn Vale" },
			[11] = { str = "Va ate os camps em #COORD[42,37]# e faca #DOSkullsplitter Tusks#", x = 42, y = 37, zone = "Stranglethorn Vale" },
			[12] = { str = "Agora voce vai ter que encontrar Bhag'thera para #DOPanther Mastery pt.4# ela fica em qualquer lugar entre logo ao norte de Mosh'ogg em #COORD[49,25]# ate logo ao norte da entrada de ZG em #COORD[48,17]# ela e elite. Jeito facil de fazer e colocar immolation trap e correr ela pra cima, quando o pet estiver com metade da vida deu fear e continue atacando", x = 48, y = 25, zone = "Stranglethorn Vale" },
			[13] = { str = "Use Hearthstone de volta pra BB" },
			[14] = { str = " Entregue #INVenture Company Mining#" },
			[15] = { str = "Suba, entregue #INSkullsplitter Tusks#" },
			[16] = { str = "Saia, entregue #INWater Elementals# PULE a proxima" },
			[17] = { str = "Entre na loja Tan-Your-Hide Leatherworks e entregue #INSome assembly required# aceite #GETExcelsior#" },
			[18] = { str = "Saia de BB e vire a esquerda pro camp de piratas em #COORD[27,69]# e toque na carta no barril, entregue #INThe Bloodsail Buccaneers pt.1# aceite #GETThe Bloodsail Buccaneers pt.2#", x = 27, y = 69, zone = "Stranglethorn Vale" },
			[19] = { str = "Mate gorilas em #COORD[32,65]# logo NE de BB para #DOScaring Shaky#", x = 32, y = 65, zone = "Stranglethorn Vale" },
			[20] = { str = "Volte pra BB" },
			[21] = { str = "Vire a direita depois do tunel, entregue #INScaring Shaky# aceite #GETReturn to MacKinley#" },
			[22] = { str = "Siga o dock de baixo em direcao a Inn, entregue #INThe Bloodsail Buccaneers pt.2# aceite #GETThe Bloodsail Buccaneers pt.3#" },
			[23] = { str = "Entre na casa em frente ao meio navio, entregue #INReturn to MacKinley# aceite #GETVoodoo Dues#" },
			[24] = { str = "Suba na Inn, aceite #GETUp To Snuff#" },
			[25] = { str = "Va logo la fora, entregue #INThe Bloodsail Buccaneers pt.3# aceite #GETThe Bloodsail Buccaneers pt.4#" },
			[26] = { str = "Voce deve ter quase todas as paginas de STV, se nao compre as poucas que faltam. Voce nao precisa de 1-27 elas vao nessa ordem. 1,4,6,8,#COORD[10,11]#,#COORD[14,16]#,#COORD[18,20]#,#COORD[21,24]#,#COORD[25,26]#,27" },
			[27] = { str = "Va perto de Grom'Gol, procure na praia la pelo croc elite 38 para #DOExcelsior# fique longe da base ou os guardas vao te pegar" },
			[28] = { str = "Va ate Nessingways em #COORD[35,10]# e entregue #INRaptor Mastery pt.3# e #INPanther Mastery pt.4# aceite #GETRaptor Mastery pt.4#", x = 35, y = 10, zone = "Stranglethorn Vale" },
			[29] = { str = "Aceite #GETThe Green Hills of Stranglethorn# depois entregue" },
			[30] = { str = "Voce deve estar pelo menos a 25% ou menos do level 40 agora va grindar em basilisks e raptors em #COORD[33,39]# ate ser 40.", x = 33, y = 39, zone = "Stranglethorn Vale" },
			[31] = { str = "Use Hearthstone pra BB" },
			[32] = { str = "Entre na loja Tan-Your-Hide Leatherworks e entregue #INExcelsior#" },
			[33] = { str = "Agora voe pra IF e aceite #GETIronband Wants You# de Prospector Stormpike em 74 11, e va pra Darnassus pegar suas novas skills e sua montaria, ou pegue skills em IF e prepare-se pra algumas quests de badlands comprando um frost oil e um gyrochronatom (nao compre gyro se nao achar frost oil) Depois uma healing potion e lesser invisibility potion. De novo nao pegue as potions se nao achar frost oil ou gyro.", x = 74, y = 11, zone = "Iron Forge" },
			[34] = { str = "Voe pra Loch Modan, guarde seu pet, e sete seu Hearthstone em Thelsamar" },
			[35] = { str = "Entre na casa atras da Inn, aceite #GETBadlands Reagent Run#" },
			[36] = { str = "Va ate #COORD[65,65]# e aceite #GETFind Agmond#", x = 65, y = 65, zone = "Loch Modan" },
			[37] = { str = "Desca ate Badlands em #COORD[46,76]#", x = 46, y = 76, zone = "Loch Modan" },
		}
	},
}
