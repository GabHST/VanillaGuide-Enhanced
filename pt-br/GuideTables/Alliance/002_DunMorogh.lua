--[[--------------------------------------------------
002_DunMorogh.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 002 DunMorogh
	1.04.1
		-- First Release
			Dwarves&Gnomes DunMorogh's Guide
			from level 1 to lever 12
	1.04.2
		-- no changes in here for this revision
	1.04.3
		-- Added color codes
			Fixed various spelling errors
			Adjustment to coordinate visibility
------------------------------------------------------
Connection:
--]]--------------------------------------------------
Table_002_DunMorogh = {
	[0106] = {
		title = "1-6 Cold Ridge Valley",
		--L- Needs playtest
		items = {
			[1] = { str = "1-6 Cold Ridge Valley" },
			[2] = { str = "Logo na sua frente onde voce comeca aceite #GETDwarven Outfitters#" },
			[3] = { str = "Va ao sul perto de #COORD[28,73]# e mate #NPCWolves# para o #ITEM[Tough Wolf Meat]# depois volte para #COORD[29,71]# e entregue #INDwarven Outfitters# depois aceite #GETEncrypted Rune# e #GETColdridge Valley Mail Delivery pt.1# ", x = 29, y = 71, zone = "Dun Morogh" },
			[4] = { str = "A sua esquerda aceite #GETA New Threat# " },
			[5] = { str = "Em #COORD[30,74]# mate #NPCBurly Troggs# e em #COORD[26,72]# tem um acampamento de #NPCRockjaw Troggs#, mate eles para #DOA New Threat# ", x = 26, y = 72, zone = "Dun Morogh" },
			[6] = { str = "Volte para #COORD[29,71]# e entregue #INA New Threat# voce deve estar level 3 agora " },
			[7] = { str = "Va ate Anvilmar em #COORD[28,69]# e entregue a quest de skill da sua classe que era Encrypted Rune para um rogue", x = 28, y = 69, zone = "Dun Morogh" },
			[8] = { str = "Aceite #GETA Refugee's Quandary# la dentro " },
			[9] = { str = "Siga a estrada ao sul ate #COORD[22,71]# e entregue #INColdridge Valley Mail Delivery pt.1# aceite #GETColdridge Valley Mail Delivery pt.2# e #GETThe Boar Hunter#", x = 22, y = 71, zone = "Dun Morogh" },
			[10] = { str = "Logo atras dele comece a matar #NPCSmall Crag Boar# ate ter 12 para #DOThe Boar Hunter# depois volte para #COORD[22,71]# e entregue" },
			[11] = { str = "Em #COORD[20,76]# limpe a frente da tenda e pegue #ITEMFelix's Box# para #DOA Refugee's Quandary#", x = 20, y = 76, zone = "Dun Morogh" },
			[12] = { str = "Em #COORD[22,80]# limpe a frente da tenda e pegue #ITEMFelix's Chest# para #DOA Refugee's Quandary#", x = 22, y = 80, zone = "Dun Morogh" },
			[13] = { str = "Va ate #COORD[25,75]# (e o final da estrada no mapa) e entregue #INColdridge Valley Mail Delivery pt.2# e aceite #GETThe Troll Cave# ", x = 25, y = 75, zone = "Dun Morogh" },
			[14] = { str = "Em #COORD[26,79]# limpe a frente da caverna e pegue #ITEMFelix's Bucket of Bolts# para #DOA Refugee's Quandary# depois mate os #NPCFrostmane Troll Whelp# dentro e fora dela ate completar #DOThe Troll Cave#", x = 26, y = 79, zone = "Dun Morogh" },
			[15] = { str = "Volte ate #COORD[25,75]# e entregue #INThe Troll Cave# aceite #GETThe Stolen Journal# voce deve estar level 5 ou muito perto agora.", x = 25, y = 75, zone = "Dun Morogh" },
			[16] = { str = "Volte na caverna em #COORD[26,79]# e va a esquerda nas 3 direcoes ate #COORD[30,80]# e mate #NPCGrik'nir the Cold# para #DOThe Stolen Journal# ", x = 30, y = 80, zone = "Dun Morogh" },
			[17] = { str = "Volte para #COORD[25,75]# e entregue #INThe Stolen Journal# aceite #GETSenir's Observations pt.1#", x = 25, y = 75, zone = "Dun Morogh" },
			[18] = { str = "Vire e aceite #GETScalding Mornbrew Delivery# e use Hearthstone." },
			[19] = { str = "Va ate Anvilmar em #COORD[28,69]# e entregue #INA Refugee's Quandary#.", x = 28, y = 69, zone = "Dun Morogh" },
			[20] = { str = "Va mais ao fundo e entregue #INScalding Mornbrew Delivery# aceite #GETBring Back the Mug#." },
			[21] = { str = "Pegue treinamento antes de sair." },
			[22] = { str = "Va direto ate #COORD[25,75]#, tudo esta amarelo entao nada vai te atacar, e entregue #INBring Back the Mug#.", x = 25, y = 75, zone = "Dun Morogh" },
			[23] = { str = "Va em direcao ao tunel e entregue #INSenir's Observations pt.1# em #COORD[33,71]# e aceite #GETSenir's Observations pt.2#.", x = 33, y = 71, zone = "Dun Morogh" },
			[24] = { str = "Voce deve estar a uns 500 xp do level 6 agora." },
			[25] = { str = "Uns 3 metros a frente aceite #GETSupplies to Tannok#." },
		}
	},
	[0612] = {
		title = "6-12 Dun Morogh",
		--L- Needs playtest
		items = {
			[1] = { str = "6-12 Dun Morogh" },
			[2] = { str = "Passe pelo tunel e mate todos os mobs no caminho. Siga a estrada ate #COORD[46,53]# em Kharanos e mate mobs ate estar level 6. Guarde seus #ITEMBoar Ribs# e #ITEMBoar Meat#.", x = 46, y = 53, zone = "Dun Morogh" },
			[3] = { str = "Chegando em #COORD[46,53]# entregue #INSenir's Observations pt.2#" },
			[4] = { str = "Logo a frente na direita, em frente a Inn, aceite #GETBeer Basted Boar Ribs#" },
			[5] = { str = "Entre na Inn e entregue #INSupplies to Tannok#" },
			[6] = { str = "Va ate o Innkeeper, sete seu Hearthstone e compre um #NPCRhapsody Malt# para #DOBeer Basted Boar Ribs#" },
			[7] = { str = "Pegue novas skills" },
			[8] = { str = "Atravesse a estrada em frente a Inn e aceite #GETTools For Steelgrill#" },
			[9] = { str = "Va NE ate #COORD[49,48]# e aceite #GETStocking Jetsteam# e #GETThe Grizzled Den#", x = 49, y = 48, zone = "Dun Morogh" },
			[10] = { str = "Va ate a casa da esquerda e entregue #INTools For Steelgrill#" },
			[11] = { str = "Perto da arvore na frente aceite #GETAmmo For Rumbleshot#" },
			[12] = { str = "Va ate o pequeno acampamento em #COORD[44,56]# e abra a caixa para #DOAmmo For Rumbleshot#", x = 44, y = 56, zone = "Dun Morogh" },
			[13] = { str = "Desse acampamento ate o SW mate #NPCBoars# e #NPCBears# ate terminar #DOStocking Jetsteam# e #DOBeer Basted Boar Ribs#" },
			[14] = { str = "Se voce esta tendo dificuldade pra achar #NPCBoars#, apenas va ate #COORD[40,65]# tem muitos. ", x = 40, y = 65, zone = "Dun Morogh" },
			[15] = { str = "Entre no Grizzled Den em #COORD[42,54]# e mate #NPCWendingos# ate ter 8 manes para #DOThe Grizzled Den#", x = 42, y = 54, zone = "Dun Morogh" },
			[16] = { str = "Voce tambem quer ir ate #COORD[40,65]# e entregar #INAmmo For Rumbleshot# assista a cena e legal, so se voce nao estiver com pressa. Voce deve estar level 7 ou muito perto agora", x = 40, y = 65, zone = "Dun Morogh" },
			[17] = { str = "Use Hearthstone de volta pra Kharanos" },
			[18] = { str = "Logo fora da Inn, entregue #INBeer Basted Boar Ribs#" },
			[19] = { str = "Va ate a casa em #COORD[45,49]#, NE da Inn, e aceite #GETOperation Recombobulation#", x = 45, y = 49, zone = "Dun Morogh" },
			[20] = { str = "Va NE ate #COORD[49,48]# e entregue #INStocking Jetsteam# aceite #GETEvershine#", x = 49, y = 48, zone = "Dun Morogh" },
			[21] = { str = "Entregue #INThe Grizzled Den#" },
			[22] = { str = "Voce deve estar perto da metade do level 7 " },
			[23] = { str = "Va oeste ate #COORD[30,45]# e entregue #INEvershine# aceite #GETA Favor For Evershine# e #GETThe Perfect Stout#. ", x = 30, y = 45, zone = "Dun Morogh" },
			[24] = { str = "Ao lado dele aceite #GETBitter Rivals#" },
			[25] = { str = "Ao Norte/NE daqui voce vai encontrar varios #NPCBears#, #NPCLeopards#, e #NPCBoars# para matar para #DOA Favor For Evershine# Voce deve upar level 8 enquanto mata para isso. " },
			[26] = { str = "Mate #NPCFrostmane Seer# e abra cestas em #COORD[41,44]# e #COORD[41,35]# para #DOThe Perfect Stout#.", x = 41, y = 44, zone = "Dun Morogh" },
			[27] = { str = "Morra de proposito pra aparecer em Kharanos" },
			[28] = { str = "Perto do GY aceite #GETFrostmane Hold#" },
			[29] = { str = "Entre na Inn e compre uma #NPCThunder Ale# do #NPCInnkeeper# e no porao, de a ale pro #NPCJarven Thunderbrew#. Quando ele sair toque no barril para entregar #INBitter Rivals# aceite #GETReturn to Marleth#. " },
			[30] = { str = "Pegue novas skills" },
			[31] = { str = "Va oeste ate Brewnall Village de novo em #COORD[30,45]# e entregue #INThe Perfect Stout# e #INA Favor For Evershine# aceite #GETReturn to Bellowfiz# e #GETShimmer Stout#. ", x = 30, y = 45, zone = "Dun Morogh" },
			[32] = { str = "Ao lado dele entregue #INReturn to Marleth# voce deve estar passado da metade do level 9 agora" },
			[33] = { str = "Va oeste de Brewnall e mate #NPCLeper Gnomes# ate completar #DOOperation Recombobulation# voce deve upar level 9 matando " },
			[34] = { str = "Va ate #COORD[24,50]# e entre na caverna mate 5 headhunters e explore a caverna para #DOFrostmane Hold# Para explorar apenas entre e fique na direita, vai curvar pra esquerda e voce vera uma plataforma elevada com mobs, chegue perto para completar a exploracao ", x = 24, y = 50, zone = "Dun Morogh" },
			[35] = { str = "Morra de proposito pra aparecer em Kharanos " },
			[36] = { str = "Logo descendo as escadas da Inn, ou ao norte do GY, entregue #INFrostmane Hold# aceite #GETThe Reports# " },
			[37] = { str = "Va NW na casa em #COORD[45,49]# e entregue #INOperation Recombobulation# ", x = 45, y = 49, zone = "Dun Morogh" },
			[38] = { str = "Va ao leste ate #COORD[49,48]# e entregue #INReturn to Bellowfiz# voce deve estar na metade do level 10 agora ", x = 49, y = 48, zone = "Dun Morogh" },
			[39] = { str = "Va ao Norte ate IF em #COORD[53,35]# ", x = 53, y = 35, zone = "Dun Morogh" },
			[40] = { str = "Sete seu Hearthstone em IF em #COORD[21,55]# ", x = 21, y = 55, zone = "Ironforge" },
			[41] = { str = "Va ate #COORD[39,56]# em IF, atras do banco, na sala do rei, entregue #INThe Reports#", x = 39, y = 56, zone = "Ironforge" },
			[42] = { str = "Entre no tram em #COORD[76,51]# ", x = 76, y = 51, zone = "Ironforge" },
			[43] = { str = "Pegue o tram ate SW " },
		--L- Cross check with Elwynd Guide
			[44] = { str = "Va ate #COORD[66,62]# e pegue o FP.", x = 66, y = 62, zone = "Stormwind City" },
			[45] = { str = "Chegue em Goldshire e entre na Inn em #COORD[42,65]# ", x = 42, y = 65, zone = "Elwynn Forest" },
			[46] = { str = "Logo a sua esquerda aceite #GETKobold Candles#" },
			[47] = { str = "Saia da Inn e va direto em frente e aceite #GETThe Fargodeep Mine#" },
			[48] = { str = "Na casa do ferreiro aqui aceite #GETElmore's Task#" },
			[49] = { str = "Va perto das carrocas em #COORD[42,67]# e aceite #GETGold Dust Exchange#", x = 42, y = 67, zone = "Elwynn Forest" },
			[50] = { str = "Va ao sul ate a Fargodeep Mine em #COORD[39,82]# e mate #NPCKobold# ate completar as 3 quests #DOThe Fargodeep Mine#, #DOGold Dust Exchange#, e #DOKobold Candles# Certifique-se de entrar pela entrada de baixo pra #DOThe Fargodeep Mine# ser mais facil ", x = 39, y = 82, zone = "Elwynn Forest" },
			[51] = { str = "Quando as 3 estiverem prontas va ate a Stonefield Farm subindo a colina ao leste em #COORD[34,84]# e aceite #GETLost Necklace# SKIP #SKIPPrincess Must Die!#", x = 34, y = 84, zone = "Elwynn Forest" },
			[52] = { str = "Va ao leste ate a Maclure Vinyard em #COORD[43,85]# e entregue #INLost Necklace# aceite #GETPie For Billy# depois vire e mate #NPCBoars# ate terminar ", x = 43, y = 85, zone = "Elwynn Forest" },
			[53] = { str = "Em #COORD[43,80]# aceite #GETYoung Lovers#", x = 43, y = 80, zone = "Elwynn Forest" },
			[54] = { str = "Volte oeste ate #COORD[34,84]# e entregue #INPie For Billy# SKIP #VIDEOBack to Billy#", x = 34, y = 84, zone = "Elwynn Forest" },
			[55] = { str = "Va oeste ate o rio em #COORD[29,85]# e entregue #INYoung Lovers# aceite #GETSpeak with Gramma#", x = 29, y = 85, zone = "Elwynn Forest" },
			[56] = { str = "Volte para #COORD[34,84]# e entregue #INSpeak with Gramma# na casa, aceite #GETNote to William# Voce deve estar level 10 agora ", x = 34, y = 84, zone = "Elwynn Forest" },
			[57] = { str = "Volte pra Goldshire, morra ou corra " },
		--L- Cross check with Elwynd Guide
			[58] = { str = "Entre no tram de novo em #COORD[63,10]# aceite #GETDeeprun Rat Roundup# apenas colete 5 ratos e entregue. Voce pode pular isso e ficar com a flauta, ela pode irritar muito as pessoas se voce tocar sem parar perto do banco de IF. SKIP #VIDEOMe Brother, Nipsy# a menos que voce volte pra SW no tram porque da xp ruim", x = 63, y = 10, zone = "Stormwind City" },
			[59] = { str = "Depois disso voce deve estar um pouco acima da metade do level 11 " },
			[60] = { str = "Va ao leste ate #COORD[68,55]# e aceite #GETThe Public Servant#", x = 68, y = 55, zone = "Dun Morogh" },
			[61] = { str = "Va atras dele e aceite #GETThose Blasted Troggs!#" },
			[62] = { str = "Va no poco abaixo e mate #NPCTroggs# aqui e na caverna para ambas quests depois entregue de volta em #COORD[68,55]# " },
			[63] = { str = "Va ao leste ate #COORD[80,51]# e siga o caminho para Loch Modan ", x = 80, y = 51, zone = "Dun Morogh" },
			[64] = { str = "Va ate #COORD[22,73]# e aceite #GETIn Defense of the King's Lands#", x = 22, y = 73, zone = "Loch Modan" },
			[65] = { str = "Suba no bunker e aceite #GETThe Trogg Threat#" },
			[66] = { str = "Em #COORD[33,50]# pegue o FP ", x = 33, y = 50, zone = "Loch Modan" },
			[67] = { str = "Procure #NPCMountaineer Kadrell# e aceite #GETRat Catching#" },
			[68] = { str = "Mate #NPCTroggs# de #COORD[27,53]# e ao norte para #DOIn Defense of the King's Lands# e #DOThe Trogg Threat#", x = 27, y = 53, zone = "Loch Modan" },
			[69] = { str = "Volte para #COORD[22,73]# e entregue ambas ", x = 22, y = 73, zone = "Loch Modan" },
			[70] = { str = "Va ao norte ate o bunker em #COORD[24,18]# e entregue #INStormpike's Delivery#", x = 24, y = 18, zone = "Loch Modan" },
			[71] = { str = "Voce deve estar level 12 agora ou perto. Voce pode grindar se quiser. Siga o guia do Night Elf para IF mas de tras pra frente. Voce vai ir ao norte pelas Wetlands ate Menethil, depois pegar o barco pra Auberdine daqui." },
		--L- Someone has been way too lazy
		}
	},
}