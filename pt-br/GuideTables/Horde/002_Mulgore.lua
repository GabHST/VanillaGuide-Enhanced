--[[--------------------------------------------------
002_Mulgore.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 001 Introduction
    1.04.1
        -- First Release
            Taurens Mulgore's Guide
            from level 1 to lever 12
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_002_Mulgore = {
-----------1-6 Mulgore
	--[14] = {
	[0106] = {
		title = "1-6 Mulgore",
        --ddmtype = 'v'
        --ddmlvl = '2'
	    --n = "1-6 Mulgore",
	    --pID = 1, nID = 15,
	    --itemCount = 17,
	    items = {
			[1] = { str = "1-6 Mulgore" },
			[2] = { str = "Em referencia aos Shamans, por favor veja mais abaixo no guia a parte de quest de classe e siga o link que vai te dar todas as informacoes sobre suas quests de classe a partir do level 4." },
			[3] = { str = "Fale com Grull Hawkwing #COORD[44,77]# e aceite #GETThe Hunt Begins# depois saia da area e mate Plainstriders e loote 7 feathers e 7 meat. Volte e entregue e aceite #GETThe Hunt Continues# e aceite #GETEtched Note#.", x = 44, y = 77, zone = "Mulgore" },
			[4] = { str = "Fale com seu class trainer e entregue #INEtched Note# depois fale com Chief Hawkwind e aceite #GETA Humble Task#." },
			[5] = { str = "Va ate #COORD[50,81]# e entregue #INA Humble Task# em Greatmother Hawkwind, aceite a proxima parte e clique no water pouch na fountain, depois volte e entregue #INA Humble Task# e aceite #GETRites of the Earthmother#. ", x = 50, y = 81, zone = "Mulgore" },
			[6] = { str = "Grinde ate level 3 depois volte pro Camp Narache e aceite #GETBreak Sharptusk!#." },
			[7] = { str = "Ao sul do camp perto de #COORD[44,88]# mate 10 Cougars e loote suas pelts depois va ate #COORD[42,92]# e fale com Seer Graytongue e entregue #INRite of the Earthmother# e aceite #GETRite of Strength#.", x = 44, y = 88, zone = "Mulgore" },
			[8] = { str = "Volte pro Camp Narache ate Chief Hawkwind #COORD[44,77]# entregue #INThe Hunt Continues# e aceite #GETThe Battleboars# grindando mobs pelo caminho ate chegar no level 4." },
			[9] = { str = "Va ate #COORD[53,81]# e mate Battleboar ate ter 8 Flank e 8 Snout. ", x = 53, y = 81, zone = "Mulgore" },
			[10] = { str = "Va ate a caverna em #COORD[58,85]# mate os Quilboar para pegar 12 Belts enquanto avanca ate a tenda em #COORD[64,77]# e mate Sharptusk tendo certeza de loota-lo para #DOBreak Sharptusk!# depois va ate a pequena caverna em #COORD[63,82]# e dentro dela tem um Dirt-stained Map. Use-o para iniciar #GETAttack on Camp Narache#.", x = 58, y = 85, zone = "Mulgore" },
			[11] = { str = "Use Hearth de volta pro Camp Narache va ate Chief Hawkwind #COORD[44,77]# e entregue #INThe Battleboars#, #INAttack on Camp Narache# e #INRite of Strength# depois aceite #GETRites of the Earthmother# parte 2.", x = 44, y = 77, zone = "Mulgore" },
			[12] = { str = "Fale com Brave Windfeather e entregue #INBreak Sharptusk!#." },
			[13] = { str = "Va ate #COORD[38,81]# e fale com Antur Fallow e aceite #GETA Task Unfinished# depois continue seguindo a estrada ate Bloodhoof Village.", x = 38, y = 81, zone = "Mulgore" },
			[14] = { str = "Fale com Innkeeper Kauth e entregue #INA Task Unfinished# e sete Bloodhoof Village como seu lar." },
			[15] = { str = "Voce deve estar level 6 agora, se nao grinde a pouca exp que falta ate estar." },
			--[16] = { str = "." },
			--[17] = { str = "." },
		}
	},

-----------6-10 Mulgore
	--[15] = {
	[0610] = {
		title = "6-10 Mulgore",
		--n = "6-10 Mulgore",
		--pID = 14, nID = 16,
		--itemCount = 20,
		items = {
			[1] = { str = "6-10 Mulgore" },
			[2] = { str = "Fale com Baine Bloodhoof e entregue #INRites of the Earthmother# aceite #GETSharing the Land#, #GETRite of Vision# e #GETDwarven Digging#." },
			[3] = { str = "Aceite #GETPoison Water# de Mull Thunderhorn #COORD[48,60]#. Fale com Zarlman Two-Moons #COORD[47,57]# entregue #INRite of Vision# e aceite a parte 2.", x = 48, y = 60, zone = "Mulgore" },
			[4] = { str = "Fale com Ruul Eagletalon #COORD[47,62]# aceite #GETDangers of the Windfury# depois fale com Harken Windtotem #COORD[48,59]# e aceite #GETSwoop Hunting#. Fale com Maur Raincaller #COORD[47,57]# aceite #GETMazzranache#.", x = 47, y = 62, zone = "Mulgore" },
			[5] = { str = "Va pro sudeste ate #COORD[51,66]# e mate Trophy Swops para pegar 8 Quills, Prairie Wolfs para pegar 6 Paws, Plainstriders para pegar 4 Talons e embaixo das arvores loote 2 Ambercorns e 2 Well Stones perto do poco #COORD[53,64]#.", x = 51, y = 66, zone = "Mulgore" },
			[6] = { str = "Va ate #COORD[52,70]# e mate os Palemane para #DOSharing the Land#.", x = 52, y = 70, zone = "Mulgore" },
			[7] = { str = "Em #COORD[33,41]# mate Harpies para pegar 8 Windfury Talons. Depois va ate #COORD[31,50]# e pegue broken tools para #DODwarven Digging#.", x = 33, y = 41, zone = "Mulgore" },
			[8] = { str = "Depois va ate #COORD[59,62]# e aceite #GETThe Ravaged Caravan# de Morin Cloudstalker. Va ate #COORD[54,48]# e clique nas crates para entregar depois aceite a segunda parte. Volte ate Morin Cloudstalker #COORD[59,62]# e entregue depois aceite #GETThe Venture Co.# e #GETSupervisor Fizsprocket#.", x = 59, y = 62, zone = "Mulgore" },
			[9] = { str = "Grinde ate level 8 se voce ainda nao estiver la." },
			[10] = { str = "Volte pra Bloodhoof Village e entregue #INPoison Water#, #INDangers of the Windfury#, #INSwoop Hunting# depois entregue #INRite of Vision# e aceite a proxima parte. Aceite #GETWinterhoof Cleansing#." },
			[11] = { str = "Va ate #COORD[53,67]# e purifique usando o item de Thunderhorn. Depois volte ate Mull Thunderhorn #COORD[49,60]# e entregue #INWinterhoof Cleansing# e aceite #GETThunderhorn Totem#.", x = 53, y = 67, zone = "Mulgore" },
			[12] = { str = "Va ate #COORD[47,57]# e beba #INWater of the Seers# na sua mochila, depois siga o wolf spirit.", x = 47, y = 57, zone = "Mulgore" },
			[13] = { str = "Entregue #INRite of Vision# #COORD[33,36]# quando o espirito parar e aceite #GETRite of Wisdom#.", x = 33, y = 36, zone = "Mulgore" },
			[14] = { str = "Continue ate #COORD[59,25]# ate Lorekeeper Raintotem e aceite #GETA Sacred Burial#. ", x = 59, y = 25, zone = "Mulgore" },
			[15] = { str = "Va ate o Ancestral Spirit em Red Rocks #COORD[60,21]# entregue #INRite of Wisdom# aceite #GETJourney into Thunder Bluff# e mate 8 Bristleback Interlopers por perto e quando terminar fale com Lorekeeper Raintotem #COORD[59,25]# e entregue #INA Sacred Burial#.", x = 60, y = 21, zone = "Mulgore" },
			[16] = { str = "Va ate Thunder Bluff na Forge em #COORD[39,55]# e destrua os Prospector's Picks aqui clicando neles para destrui-los.", x = 39, y = 55, zone = "Thunder Bluff" },
			[17] = { str = "Va ate #COORD[69,51]# e fale com Cairne Bloodhoof para entregar #INJourney into Thunder Bluff# aceite #GETRise of the Earthmother#.", x = 69, y = 51, zone = "Thunder Bluff" },
			[18] = { str = "Voce deve estar level 10 agora, se nao grinde ate la. E hora de fazer sua quest de classe e abaixo vai mostrar cada quest de classe e como fazer mas voce pode esperar ate o level 12 antes de faze-las para continuar com o guia 12-60 do Joana." },
			--[19] = { str = "." },
			--[20] = { str = "." },
		}
	},

-----------10-12 Mulgore
	--[16] ={
	[1012] = {
		title = "10-12 Mulgore",
		--n = "10-12 Mulgore",
		--pID = 15, nID = 101,
		--itemCount = 19,
		items = {
			[1] = { str = "10-12 Mulgore" },
			[2] = { str = "Use Hearth pra Bloodhoof Village. Fale com Skorm Whitecloud #COORD[46,60]# aceite #GETThe Hunter's Way#.", x = 46, y = 60, zone = "Mulgore" },
			[3] = { str = "Entregue #INDwarven Digging# e #INThunderhorn Totem# depois aceite #GETThunderhorn Cleansing#." },
			[4] = { str = "Va ate #COORD[48,60]# e fale com Baine Bloodhoof e entregue #INSharing the Land#.", x = 48, y = 60, zone = "Mulgore" },
			[5] = { str = "Va ate o Water Well em #COORD[44,45]# e use para purificar seu totem no inventario.", x = 44, y = 45, zone = "Mulgore" },
			[6] = { str = "Va ate #COORD[45,16]# e mate Flatland Prowlers ate ter 4 claws.", x = 45, y = 16, zone = "Mulgore" },
			[7] = { str = "Va ate #COORD[61,47]# e voce deve ver a Venture Co. Mine. Mate 14 Workers e 6 Supervisors. Vire a direita na primeira intersecao e voce deve ver Fizsprocket, depois mate ele.", x = 61, y = 47, zone = "Mulgore" },
			[8] = { str = "Va ate #COORD[59,62]# e entregue #INThe Venture Co.# e #INSupervisor Fizsprocket#.", x = 59, y = 62, zone = "Mulgore" },
			[9] = { str = "Va ate #COORD[49,60]# e entregue #INThunderhorn Cleansing# depois aceite #GETWildmane Totem#. Va ate #COORD[69,51]# e entregue #INRites of the Earthmother#.", x = 49, y = 60, zone = "Mulgore" },
			[10] = { str = "Va ate #COORD[46,60]# e entregue #INThe Hunters Way#.", x = 46, y = 60, zone = "Mulgore" },
			[11] = { str = "Va ate #COORD[38,60]# em Thunder Bluff e voce deve ver Eyahn Eagletalon. Aceite #GETPreparation for Ceremony#.", x = 38, y = 60, zone = "Thunder Bluff" },
			[12] = { str = "Va atras de Thunder Bluff e mate Bluffwatchers ate ter 6 Azure e 6 Bronze Feathers depois volte ate #COORD[38,60]# e entregue.", x = 38, y = 60, zone = "Thunder Bluff" },
			[13] = { str = "Volte pra Bloodhoof Village mas mate Prairie Alphas pelo caminho ate ter 8 Teeth." },
			[14] = { str = "Va ate #COORD[49,60]# e entregue #INWindmane Totem#.", x = 49, y = 60, zone = "Mulgore" },
			[15] = { str = "Voce deve estar level 12 agora, se nao grinde ate la depois va pro Barrens seguindo o caminho ate chegar em Camp Taurajo. Fale com Kirge Sternhorn #COORD[44,58]# e aceite #GETJourney to the Crossroads# e pegue o Flight Path.", x = 44, y = 58, zone = "Mulgore" },
			[16] = { str = "Va pro norte pela estrada ate chegar no Crossroads e entregue #INJourney to the Crossroads# pegue o Flight Path." },
			[17] = { str = "Agora voce pode continuar com o guia 12-15 Barrens que esta no guia 1-60." },
			--[18] = { str = "." },
			--[19] = { str = "." },
    	}
	},
}
