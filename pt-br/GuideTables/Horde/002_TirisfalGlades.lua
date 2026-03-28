--[[--------------------------------------------------
002-TirisfalGlades.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 002 Tirisfal Glades
    1.04.1
        -- First Release
            Undead Tirisfal Glades's Guide
            from level 1 to lever 12
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text
	    	Changed formatting of coords
	    	Changed color coding
	    	Playtested every step
------------------------------------------------------
--]]--------------------------------------------------
Table_002_TirisfalGlades = {
	[0106] = {
		title = "1-6 Deathknell (Tirisfal Glades)",
		items = {
			[1] = { str = "1-6 DeathKnell (Tirisfal Glades)" },
			[2] = { str = "Suba as escadas e saia da Cripta." },
			[3] = { str = "Aceite a quest #GETRude Awakening# de #NPCUndertaker Mordothen#, depois desça a colina e entregue em #NPCShadow Priest Sarvis#. #COORD[31,66]#", x = 31, y = 66, zone = "Tirisfal Glades" },
			[4] = { str = "Aceite #GETThe Mindless Ones#." },
			[5] = { str = "Desça a colina para completar #DOThe Mindless Ones#, depois volte e entregue." , x = 32, y = 63, zone = "Tirisfal Glades"},
			[6] = { str = "Aceite #GETRattling the Rattlecages#, #GETTainted Scroll, e #GETThe Damned#" },
			[7] = { str = "Entregue #INTainted Scroll# no seu class trainer e pegue novas magias/habilidades." },
			[8] = { str = "Complete #DOThe Damned# junto com #DORattling the Rattlecages#. Eles sao encontrados nos arredores da vila. Quando terminar, entregue e aceite #GETMarla's Last Wish#." },
			[9] = { str = "Va pra fora da igreja, aceite #GETNight Web's Hollow# e #GETScavenging Deathknell#." },
			[10] = { str = "Complete #DOScavenging Deathknell# que sao encontrados perto de e dentro de predios na vila, depois va ate #COORD[37,62]# e mate Samuel Fipps para #DOMarla's Last Wish#.", x = 37, y = 62, zone = "Tirisfal Glades" },
			[11] = { str = "Va ate a caverna em #COORD[27,59]# e faca #DONight Web's Hollow#.", x = 27, y = 59, zone = "Tirisfal Glades" },
			[12] = { str = "Depois va ate o cemiterio na vila em #COORD[31,64]# e clique no #ITEMgrave# para enterrar o cranio.", x = 31, y = 64, zone = "Tirisfal Glades" },
			[13] = { str = "Entregue todas as quests que sao #INNight Web's Hollow#, #INScavenging Deathknell# e #INMarla's Last Wish#." },
			[14] = { str = "Aceite #DOThe Scarlet Crusade# do lado de fora da igreja, va fazer em #COORD[37,67]#, depois volte e entregue.", x = 37, y = 67, zone = "Tirisfal Glades" },
			[15] = { str = "Aceite #GETThe Red Messenger# e va fazer em #COORD[36,68]#, matando #NPCMeven Korgal#. Volte e entregue.", x = 36, y = 68, zone = "Tirisfal Glades" },
			[16] = { str = "Aceite #GETVital Intelligence# depois pegue novas magias/habilidades se voce for level 6, se nao grinde ate level 6 e faca isso." },
			[17] = { str = "Va ate o norte de Death Knell e aceite #GETA Rogue's Deal# em #COORD[38,57]#, depois saia da area inicial.", x = 38, y = 57, zone = "Tirisfal Glades" },
    	}
	},
	[0610] = {
		title = "6-10 Tirisfal Glades",
		items = {
			[1] = { str = "6-10 Tirisfal Glades" },
			[2] = { str = "Desça a colina e aceite #GETFields of Grief# de #NPCDeathguard Simmer# #COORD[41,54]#, depois va ate a fazenda de aboboras em #COORD[37,52]# para lootar 10 #ITEM[Tirisfal Pumpkin]#.", x = 37, y = 52, zone = "Tirisfal Glades" },
			[3] = { str = "Volte para a estrada perto de #COORD[46,57]# para aceitar #GETGordo's Task#. #NPCGordo# esta andando pela estrada.", x = 46, y = 57, zone = "Tirisfal Glades" },
			[4] = { str = "Va em direcao a Brill pegando 3 #ITEM[Gloom Weed]# no caminho. Entregue em #NPCJunior Apothecary Holland# #COORD[58,50]#, e aceite #GETDoom Weed#.", x = 58, y = 50, zone = "Tirisfal Glades" },
			[5] = { str = "Fale com #NPCDeathguard Dillinger# em #COORD[58,51]# e aceite #GETA Putrid Task#.", x = 58, y = 51, zone = "Tirisfal Glades" },
			[6] = { str = "Entregue #INFields of Grief# em #NPCApothecary Johaan# Aceite #GETFields of Grief pt.2# e #GETA New Plague# #COORD[59,52]#", x = 59, y = 52, zone = "Tirisfal Glades" },
			[7] = { str = "Entregue #INVital Intelligence# em #NPCExecutor Zygand# e aceite #GETAt War with the Scarlet Crusade#. Aceite #GETWanted: Maggot Eye# do #ITEMWanted! sign# logo atras dele." },
			[8] = { str = "Pegue #GETProof of Demise# de #NPC# e #GETGraverobbers# de #NPCMagistrate Sevren#." },
			[9] = { str = "Entre na Inn #COORD[62,53]# e entregue #INA Rogue's Deal# no #NPCInnkeeper#, e sete seu Hearthstone. Nao esqueca de pegar First Aid de #NPCNurse Neela#.", x = 62, y = 53, zone = "Tirisfal Glades" },
			[10] = { str = "Va ate o porao da Inn, e complete #INFields of Grief part2# em #NPCCaptured Scarlet Zealot#." },
			[11] = { str = "Volte para a ponte em #COORD[53,53]# e mate os Scourge para pegar 7 #ITEM[Putrid Claw]#.", x = 53, y = 53, zone = "Tirisfal Glades" },
			[12] = { str = "Volte para #NPCDeathguard Dillinger# em #COORD[58,51]# e entregue #INA Putrid Task#. Voce deve estar level 7 agora. Aceite #GETThe Mills Overrun#.", x = 58, y = 51, zone = "Tirisfal Glades" },
			[13] = { str = "Volte para dentro da Inn #COORD[62,53]# e aceite #GETThe Haunted Mills# de #NPCColeman Farthing#, no segundo andar, aceite #GETThe Chill of Death# de #NPCGretchen Dedmar#.", x = 62, y = 53, zone = "Tirisfal Glades" },
			[14] = { str = "Passe pela fazenda de aboboras ate a torre em #COORD[32,47]# e mate #NPCScarlet Warrior# para #DOAt War with the Scarlet Crusade#. No caminho, mate #NPCDuskbats# e #NPCDarkhound# para pegar 5 #ITEM[Duskbat Pelt]# e 5 #ITEM[Darkhound Blood]#.", x = 32, y = 47, zone = "Tirisfal Glades" },
			[15] = { str = "Quando tudo estiver feito, use Hearth de volta pra Brill. Va pra fora ate o trade supplies, e compre um #ITEM[Coarse Thread]#. Volte para dentro da Inn e entregue #INThe Chill of Death#." },
			[16] = { str = "Va pra fora, e entregue #INProof of Demise#, #INAt War with the Scarlet Crusade# aceite #GETAt War with the Scarlet Crusade pt.2#, e entregue #INA New Plague#, aceitando #GETA New Plague pt.2#." },
			[17] = { str = "Va ao norte ate #COORD[59,30]# para #DOWanted: Maggot Eye#, fazendo #DOGraverobbers# e #DODoom Weed# no caminho.", x = 59, y = 30, zone = "Tirisfal Glades" },
			[18] = { str = "Quando terminar, va ate a praia em #COORD[61,29]#, e mate #NPCMurlocs# ate ter 5 #ITEM[Vile Fin Scale]#.", x = 61, y = 29, zone = "Tirisfal Glades" },
			[19] = { str = "Volte para #NPCJunior Apothecary Holland# em #COORD[58,50]# e entregue #INDoom Weed#.", x = 57, y = 49, zone = "Tirisfal Glades" },
			[20] = { str = "Volte para Brill e entregue #INA New Plague# e aceite #GETA New Plague pt.2# em #NPCApothecary Johaan# #COORD[59,52]#", x = 59, y = 52, zone = "Tirisfal Glades" },
			[21] = { str = "Entregue #INWanted: Maggot Eye# em #NPCExecutor Zygand# #COORD[61,52]#, e #INGraverobbers# em #NPCMagistrate Sevren#. Aceite #GETForsaken Duties# e #GETThe Prodigal Lich#.", x = 61, y = 52, zone = "Tirisfal Glades" },
			[22] = { str = "Va ate a torre em #COORD[51,68]# e mate 3 #NPCScarlet Missionaries#, 3 #NPCScarlet Zealots# e #NPCCaptain Parrine#.", x = 51, y = 68, zone = "Tirisfal Glades" },
			[23] = { str = "Va ate Agamand Hills #COORD[47,39]#, e mate #NPCDevlin Agamand# para #DOThe Haunted Mills#.", x = 47, y = 39, zone = "Tirisfal Glades" },
			[24] = { str = "Volte para #NPCExecutor Zygand# #COORD[61,52]# em Brill, e entregue #INAt War with the Scarlet Crusade pt.2# e aceite #INAt War with the Scarlet Crusade pt.3#", x = 61, y = 52, zone = "Tirisfal Glades" },
			[25] = { str = "Depois fale com #NPCColeman Farthing# dentro da Inn, entregue #INThe Haunted Mills# e aceite #GETDeaths in the Family#" },
			[26] = { str = "Voce deve estar level 10 agora, pegue novas magias, e aceite sua #GETClass quest#, mas nao faca ainda." },
    	}
	},
	[1012] = {
		title = "10-12 Tirisfal Glades",
		items = {
			[1] = { str = "10-12 Tirisfal Glades" },
			[2] = { str = "Va ate Agamand Hills #COORD[47,36]# e mate #NPCRattlecage Soldiers# e #NPCDarkeye Bonecasters#, lootando eles para pegar #ITEM[Notched Ribs]# e #ITEM[Blackened Skulls]#.", x = 47, y = 36, zone = "Tirisfal Glades" },
			[3] = { str = "Se #ITEM[A Letter to Yvette]# dropar, pegue, e aceite #GETA Letter Undelivered#."},
			[4] = { str = "Mate #NPCNissa# #COORD[49,36]#, #NPCGregor# #COORD[46,29]# e #NPCThurman Agamand# #COORD[44,34]#, certifique-se de lootar todos os restos.", x = 44, y = 34, zone = "Tirisfal Glades" },
			[5] = { str = "Volte para #NPCDeathguard Dillinger# em #COORD[58,51]# em Brill, e entregue #IThe Mills Overrun#", x = 58, y = 51, zone = "Tirisfal Glades"  },
			[6] = { str = "Entre na Inn, e entregue #INA Letter Undelivered# em #NPCYvette Farthing#. Entregue #INDeaths in the Family# em #NPCColeman Farthing#, aceite #GETSpeak with Sevren#." },
			[7] = { str = "Entregue #INSpeak with Sevren# em #NPCMagistrate Sevren# #COORD[61,51]#, pule #SKIPThe Family Crypt#.", x = 61, y = 51, zone = "Tirisfal Glades" },
			[8] = { str = "Va ate a Undercity. Faca sua class quest.", x = 62, y = 65, zone = "Tirisfal Glades" },
			[9] = { str = "Visite o Weapon Master em #COORD[57,33]# para aprender novas habilidades de armas.", x = 57, y = 33, zone = "Undercity" },
			[10] = { str = "Va ate o Mage Quarter e fale com #NPCBethor Iceshard# #COORD[84,17]# e entregue #INThe Prodical Lich#, aceite #GETThe Lich's Identity#.", x = 84, y = 17, zone = "Undercity" },
			[11] = { str = "Saia da Undercity, e va ate #COORD[65,60]#. Entregue #INForsaken Duties#, aceite #GETReturn to the Magistrate# e #GETRear Guard Patrol#.", x = 65, y = 60, zone = "Tirisfal Glades" },
			[12] = { str = "Va ate #COORD[75,61]# e mate 8 #NPCBleeding Horrors# e 8 #NPCWandering Spirits# para #DORear Guard Patrol#", x = 75, y = 61, zone = "Tirisfal Glades" },
			[13] = { str = "Va ao norte ate #COORD[80,56]# e mate 5 #NPCScarlet Friars# e #NPCCaptain Vachon# para #DOAt War with the Scarlet Crusade pt.3#.", x = 80, y = 56, zone = "Tirisfal Glades" },
			[14] = { str = "Va ao leste ate #COORD[85,53]# e mate #NPCVicious Night Web Spiders# ate conseguir 4 #ITEM[Vicious Night Web Spider Venom]#.", x = 85, y = 53, zone = "Tirisfal Glades" },
			[15] = { str = "Va ate Brightwater Lake e nade ate Gunther's Retreat. Clique em #ITEM[Gunther's Books]# em #COORD[68,42]# para lootar #ITEM[The Lich's Spellbook]#, depois volte para #COORD[65,60]# e entregue #INRear Guard Patrol#.", x = 68, y = 42, zone = "Tirisfal Glades" },
			[16] = { str = "Entre na Undercity. Va ate #COORD[84,17]# e entregue #INThe Lich's Identity# aceite #GETReturn the Book#.", x = 84, y = 17, zone = "Undercity" },
			[17] = { str = "Use Hearth ou va ate Brill." },
			[18] = { str = "Entregue #INAt War with the Scarlet Crusade pt.3# e aceite #GETAt War with the Scarlet Crusade pt.4#. Entregue #INA New Plague pt.2# aceite #GETA New Plague pt.3# e entregue #INReturn to the Magistrate#. Va ate o porao da Inn, e entregue #INA New Plague pt.3#." },
			[19] = { str = "Volte para Gunther's Retreat em #COORD[68,42]# e entregue #INReturn the Book#, aceite #GETProving Allegiance#. Pegue uma #ITEM[Candle of Beckoning]# do #ITEMCrate of Candles#.", x = 68, y = 42, zone = "Tirisfal Glades" },
			[20] = { str = "Va ate a pequena ilha logo ao sul #COORD[67,45]#, e use a vela na #ITEMDinner Table# para invocar #NPCLillith Nefara#. Mate ela, depois volte para #NPCGunther Arcanus# e entregue a quest, aceitando #GETThe Prodigal Lich Returns#.", x = 67, y = 45, zone = "Tirisfal Glades" },
			[21] = { str = "Va ate a torre subindo o caminho em #COORD[79,26]# e mate #NPCCaptain Melrache# e 2 #NPCScarlet Bodyguard# para #DOAt War with the Scarlet Crusade pt.4#.", x = 79, y = 26, zone = "Tirisfal Glades" },
			[22] = { str = "Volte para Brill e entregue #INAt War with the Scarlet Crusade#, depois va ate a Undercity e no Mage Quarter #COORD[84,17]# entregue #INThe Prodigal Lich Returns#.", x = 84, y = 17, zone = "Undercity" },
			[23] = { str = "Voce deve estar level 12 agora, entao pegue seu treinamento para level 12." },
			[24] = { str = "Saia da Undercity, e va ate a Zeppelin Tower em #COORD[61,59]#. Pegue o zeppelin para Orgrimmar.", x = 61, y = 59, zone = "Tirisfal Glades" },
			[25] = { str = "Entre em Orgrimmar #COORD[46,12]# e pegue o flight path #COORD[45,64]#.", x = 45, y = 64, zone = "Orgrimmar" },
			[26] = { str = "Saia de Orgrimmar, e va ao sul ate Razor Hill. Aceite #GETConscript of the Horde# de #NPCTakrin Pathseeker# #COORD[51,44]#", x = 51, y = 44, zone = "Durotar"  },
			[27] = { str = "Va para o oeste e entre nos Barrens, #COORD[35,42]#.", x = 35, y = 42, zone = "Durotar" },
    	}
	},
}
