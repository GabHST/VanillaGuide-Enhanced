--[[--------------------------------------------------
002_Durotar.lua
Authors: mrmr, lanjelin
Version: 1.04.3
------------------------------------------------------
Description: Guide Serie - 001 Introduction
    1.04.1
        -- First Release
            Orcs&Trolls Durotar's Guide
            from level 1 to lever 12
    1.04.2
    	-- no changes in here for this revision
    1.04.3
	    -- Cleanup in text, changed formatting of coords
------------------------------------------------------
Connection:
--]]--------------------------------------------------

Table_002_Durotar = {
-----------1-6 Durotar
  	--[11] = {
  	[0106] = {
  		title = "1-6 Durotar",
	    --n = "1-6 Durotar",
	    --pID = 1, nID = 12,
	    --itemCount = 19,
	    items = {
			[1] = { str = "1-6 Durotar" },
			[2] = { str = "Eu faco todas as quests em Durotar! Aqui esta o jeito mais rapido de fazer:" },
			[3] = { str = "Comece aceitando #GETYour Place In The World# . (Bem na sua frente) " },
			[4] = { str = "Depois entregue em #COORD#COORD[42,68]## ... aceite #GETCutting Teeth# " },
			[5] = { str = "Va fazer: #DOCutting Teeth# (lembre do passo #5)" },
			[6] = { str = "Quando chegar no level 2, va aceitar #GETSarkoth# em #COORD[40,62]#", x = 40, y = 62, zone = "Durotar" },
			[7] = { str = "Va fazer #DOSarkoth# em #COORD[40,66]#.", x = 40, y = 66, zone = "Durotar" },
			[8] = { str = "Depois entregue #INSarkoth# em #COORD[40,62]# ... Aceite #GETSarkoth# pt.2", x = 40, y = 62, zone = "Durotar" },
			[9] = { str = "Certifique-se que #DOCutting Teeth# esta completa." },
			[10] = { str = "Va entregar #INSarkoth# pt.2 e #INCutting Teeth# em #COORD[42,68]# ... Aceite #GETEtched Tablet# e #GETSting of the Scorpid# ", x = 42, y = 68, zone = "Durotar" },
			[11] = { str = "Entregue #GETEtched Tablet#, perto de #COORD[43,69]#, e pegue novas magias/habilidades da sua classe.", x = 43, y = 69, zone = "Durotar" },
			[12] = { str = "Depois aceite e faca as seguintes:  #DOSting of the Scorpid#   #DOVile Familiars#   #DOGalgar's Cactus Apple Surprise# e #DOLazy Peons#   (todas essas sao feitas ao norte e nordeste de Valley of Trials)" },
			[13] = { str = "Entregue todas essas quests, depois aceite #GETBurning Blade Medallion# e #GETThazz'ril's Pick# " },
			[14] = { str = "Va fazer #DOBurning Blade Medallion# e #DOThazz'ril's Pick#, essas sao feitas na caverna em #COORD[44,56]#", x = 44, y = 56, zone = "Durotar" },
			[15] = { str = "Quando essas duas quests estiverem prontas, use seu Hearthstone." },
			[16] = { str = "Entregue essas 2 quests e aceite #GETReport to Sen'jin Village# " },
			[17] = { str = "A area inicial esta completa. Saia da zona inicial (indo para o leste)." },
			--[18] = { str = "." },
			--[19] = { str = "." },
		}
	},

-----------6-9 Durotar
	--[12] = {
	[0609] = {
		title = "6-9 Durotar",
	    --n = "6-9 Durotar",
	    --pID = 11, nID = 13,
	    --itemCount = 31,
	    items = {
			[1] = { str = "6-9 Durotar" },
			[2] = { str = "Aceite #GETA Peon's Burden# em #COORD[52,68]#", x = 52, y = 68, zone = "Durotar" },
			[3] = { str = "Aceite #GETThwarting Kolkar Aggression# em #COORD[54,75]#", x = 54, y = 75, zone = "Durotar" },
			[4] = { str = "Va entregar #INReport to Sen'jin Village# em Sen'jen Village, #COORD[55,74]#", x = 55, y = 74, zone = "Durotar" },
			[5] = { str = "Depois pegue todas as quests em Sen'jin Village. (que incluem:  #GETA solvent Spirit# #GETPractical Prey# #GETMinshina's Skull# #GETReport to Orgnil# e #GETZalazane# )" },
			[6] = { str = "NAO faca #NPCA solvent Spirit# na agua ao redor de Sen'jin Village. Certifique-se que a quest esta aceita." },
			[7] = { str = "Depois suba ate Razor Hill #COORD[52,44]#, grindando mobs pelo caminho, e certifique-se de chegar no level 6 antes de chegar la pra pegar novas magias.", x = 52, y = 44, zone = "Durotar" },
			[8] = { str = "Entregue #INReport to Orgnil# e pegue todas as quests em Razor Hill (#GETDark Storms# #GETVanquish the Betrayers# , #GETEncroachment# #GETBreak a Few Eggs# " },
			[9] = { str = "Suba ate a torre de vigia a noroeste de Razor Hill, em #COORD[49,40]# e aceite #GETCarry Your Weight# ", x = 49, y = 40, zone = "Durotar" },
			[10] = { str = "Entre na Inn #COORD[51,41]# e entregue #INA Peon's Burden# . E tambem sete Razor Hill como seu lar.", x = 51, y = 41, zone = "Durotar" },
			[11] = { str = "Pegue first aid. em #COORD[54,41]#", x = 51, y = 41, zone = "Durotar" },
			[12] = { str = "Depois va fazer: #DOVanquish the Betrayers# junto com #DOCarry Your Weight#. Essas sao feitas em Tiragarde Keep, #COORD[57,55]#", x = 57, y = 55, zone = "Durotar" },
			[13] = { str = "Depois de matar Benedict (ele esta no predio em #COORD[59,58]#), pegue a chave dele, suba as escadas, abra o bau e pegue a nota que inicia: #GETThe Admiral's Orders# aceite a quest.", x = 59, y = 58, zone = "Durotar" },
			[14] = { str = "Va entregar #INVanquish the Betrayers# #INThe Admiral's Orders# e #INCarry Your Weight# em Razor Hill #COORD[52,44]#, e aceite #GETFrom The Wreckage....# #GETThe Admiral's Orders# (parte 2).", x = 52, y = 44, zone = "Durotar" },
			[15] = { str = "Va fazer #DOA solvent Spirit# e #DOFrom The Wreckage....# Faca essas duas quests na agua a leste de Tiragarde Keep, perto de #COORD[62,50]#.", x = 62, y = 50, zone = "Durotar" },
			[16] = { str = "Depois faca a primeira metade de #DOEncroachment# em #COORD[49,49]#.", x = 49, y = 49, zone = "Durotar" },
			[17] = { str = "Depois, se voce nao estiver pelo menos 3 barras do lvl 8, grinde ate estar, va entregar #INFrom The Wreckage....# em Razor Hill #COORD[52,44]# e pegue novas magias/habilidades.", x = 52, y = 44, zone = "Durotar" },
			[18] = { str = "Va bem pro sul e faca #DOThwarting Kolkar Aggression# em #COORD[48,79]# ", x = 48, y = 79, zone = "Durotar" },
			[19] = { str = "Quando terminar, entregue em #COORD[54,75]#.", x = 54, y = 75, zone = "Durotar" },
			[20] = { str = "Entregue #INA solvent Spirit# em Sen'jin #COORD[55,74]#", x = 55, y = 74, zone = "Durotar" },
			[21] = { str = "Depois va ate Echo Isles (as ilhas a sudeste de Durotar) e faca as seguintes 4 quests juntas:" },
			[22] = { str = "#DOBreak a Few Egg# " },
			[23] = { str = "#DOPractical Prey# " },
			[24] = { str = "#DOMinshina's Skull#  em #COORD[67,87]#", x = 67, y = 87, zone = "Durotar" },
			[25] = { str = "#DOZalazane# em #COORD[67,86]#." },
			[26] = { str = "Depois de completar todas essas quests, morra de proposito, pra aparecer direto em Sen'jin Village #COORD[55,74]#...", x = 55, y = 74, zone = "Durotar" },
			[27] = { str = "Entregue #INPractical Prey# #INMinshina's Skull# e #INZalazane# . Guarde o item de recompensa #NPCFaintly Glowing Skull# pra uma quest futura chamada #NPCBurning Shadows# " },
			[28] = { str = "Use Hearthstone pra voltar pra Razor Hill. Entregue #INBreak a Few Eggs# " },
			[29] = { str = "Depois faca a segunda metade de #DOEncroachment# (a oeste de Razor Hill, em #COORD[42,38]#)", x = 42, y = 38, zone = "Durotar" },
			--[30] = { str = "." },
			--[31] = { str = "." },
		}
	},

-----------9-12 Durotar
	--[13] = {
	[0912] = {
		title = "9-12 Durotar",
	    --n = "9-12 Durotar",
	    --pID = 12, nID = 101,
	    --itemCount = 45,
	    items = {
			[1] = { str = "9-12 Durotar" },
			[2] = { str = "Depois suba e aceite #GETLost But Not Forgotten# na cabana em #COORD[43,30]#", x = 43, y = 30, zone = "Durotar" },
			[3] = { str = "Depois suba (grindando mobs pelo caminho) e aceite #GETWinds in the Desert# no goblin, #COORD[46,22]#.", x = 46, y = 22, zone = "Durotar" },
			[4] = { str = "Depois faca #DOWinds in the Desert# " },
			[5] = { str = "Depois entregue, aceite #GETSecuring the Lines# em #COORD[46,22]#", x = 46, y = 22, zone = "Durotar" },
			[6] = { str = "Grinde mobs ate lvl 10." },
			[7] = { str = "Desca ate Razor Hill #COORD[52,44]#, entregue #INEncroachment# ", x = 52, y = 44, zone = "Durotar" },
			[8] = { str = "Pegue novas magias/habilidades." },
			[9] = { str = "Faca suas quests de classe do level 10." },
			[10] = { str = "Depois va bem pro oeste (grindando mobs pelo caminho) e aceite #GETNeed for a Cure# em #COORD[41,18]#", x = 41, y = 18, zone = "Durotar" },
			[11] = { str = "Va ate Orgrimmar em #COORD[45,11]#", x = 45, y = 11, zone = "Durotar" },
			[12] = { str = "Depois entregue #INThe Admiral's Orders# na camara do Thrall #COORD[34,36]#", x = 34, y = 36, zone = "Orgrimmar" },
			[13] = { str = "Aceite #GETHidden Enemies# (Thrall da ela)" },
			[14] = { str = "Va ate Cleft of Shadow, aceite #GETFinding the Antidote# #COORD[46,53]#", x = 46, y = 53, zone = "Orgrimmar" },
			[15] = { str = "Depois va fazer #DOSecuring the Lines# em #COORD[53,23]# em Durotar", x = 53, y = 23, zone = "Durotar" },
			[16] = { str = "Entregue #INSecuring the Lines# em #COORD[46,22]#", x = 46, y = 22, zone = "Durotar" },
			[17] = { str = "Depois va fazer #DOFinding the Antidote# (os scorpids estao por toda parte) e #DOLost But Not Forgotten# (ao longo do rio a oeste de Durotar)" },
			[18] = { str = "Depois va fazer #DODark Storms# em #COORD[41,26]#", x = 41, y = 26, zone = "Durotar" },
			[19] = { str = "Entregue #INLost But Not Forgotten# #COORD[43,30]#", x = 43, y = 30, zone = "Durotar" },
			[20] = { str = "Entregue #INDark Storms# em Razor Hill, #COORD[52,44]#", x = 52, y = 44, zone = "Durotar" },
			[21] = { str = "Aceite #GETMargoz# " },
			[22] = { str = "Entregue #INMargoz# em #COORD[56,20]# aceite #GETSkull Rock# ", x = 56, y = 20, zone = "Durotar" },
			[23] = { str = "Va fazer #DOSkull Rock# junto com #DOHidden Enemies# na caverna em #COORD[54,11]#", x = 54, y = 11, zone = "Durotar" },
			[24] = { str = "Se conseguir, tente matar Gazz'uz, ele dropa o item 'Eye of Burning Shadow' que inicia a quest #GETBurning Shadows#. DICA: use o item de recompensa #NPCFaintly Glowing Skull# pra ajudar a matar ele, ele e dificil sem isso, tambem tente fazer grupo com alguem se puder." },
			[25] = { str = "Entregue #INSkull Rock# #COORD[56,20]# aceite #GETNeeru Fireblade# ", x = 56, y = 20, zone = "Durotar" },
			[26] = { str = "Va ate Orgrimmar." },
			[27] = { str = "Entregue #INHidden Enemies# em #COORD[33,37]# em Orgrimmar, aceite a proxima parte de #GETHidden Enemies# ", x = 33, y = 37, zone = "Orgrimmar" },
			[28] = { str = "Va ate Cleft of Shadows #COORD[47,53]# e entregue #INFinding the Antidote# ", x = 47, y = 53, zone = "Orgrimmar" },
			[29] = { str = "Entregue #INNeeru Fireblade# e #INBurning Shadows# em Neeru Fireblade #COORD[49,50]# aceite #GETAk'Zeloth# ", x = 49, y = 50, zone = "Orgrimmar" },
			[30] = { str = "Tambem continue falando com ele pra completar #DOHidden Enemies# " },
			[31] = { str = "Depois volte pro Thrall e entregue #INHidden Enemies# de novo. A 3a parte se refere a instancia RFC, que eu pulo." },
			[32] = { str = "Saia de Orgrimmar, e entregue #INNeed for a Cure# em #COORD[41,18]# (voce provavelmente vai ter que aceitar de novo pra entregar)", x = 40, y = 62, zone = "Durotar" },
			[33] = { str = "Use Hearthstone pra voltar pra Razor Hill." },
			[34] = { str = "Suba seu first aid." },
			[35] = { str = "Pegue novas magias/habilidades." },
			[36] = { str = "Aceite #GETConscript of the Horde# em #COORD[50,43]# em Razor Hill", x = 51, y = 44, zone = "Durotar" },
			[37] = { str = "Va pro oeste ate os Barrens... em #COORD[35,42]#", x = 35, y = 42, zone = "Durotar" },
			--[44] = { str = "." },
			--[45] = { str = "." },
		}
	},

}
