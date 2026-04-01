--[[--------------------------------------------------
001-Introduction.lua
Authors: mrmr
Version: 1.04.2
------------------------------------------------------
Description: Guide Serie - 001 Introduction
    1.04.1
        -- First Release
            Introduction text
    1.04.2
        -- no changes in here for this revision
	1.04.3
		-- Changed to reflect the changes in color codes.
------------------------------------------------------
Connection:
--]]--------------------------------------------------

local version = GetAddOnMetadata("VanillaGuide", "Version")

Table_001_Introduction = {
    [0001] = {
        title = "Introduction",
        --ddmtype = 'v',
        --ddmlvl = '1',
        --n = "Introduction",
        --pID = 1, nID = 11,
        --itemCount = 20,
        items = {
            [1] = { str = "     Obrigado por usar o #VIDEOVanilla#Guide!" },
            [2] = { str = "         escrito e mantido por #DOmrmr#." },
            [3] = { str = "         versao #VIDEOv##IN" .. version .. "#" },
            [4] = { str = "  Criado originalmente para '#VIDEOJ#oana's #VIDEOHorde# Guide', cresceu bastante," },
            [5] = { str = "com '#DOB#rianKopps` #DOAlliance# Guide' por Kira e Cdlp e guias de profissao por Velenran." },
            [6] = { str = "." },
            [7] = { str = "." },
            [8] = { str = "#VIDEOCODIGOS DE COR:#" },
            [9] = { str = "Aqui estao os codigos de cor do guia:" },
            [10] = { str = "#GETAceitar uma quest.#" },
            [11] = { str = "#DOIr fazer uma quest.#" },
            [12] = { str = "#INEntregar uma quest.#" },
			[13] = { str = "#SKIPPular uma quest.#" },
            [14] = { str = "#NPCNPC/Mob.#" },
            [15] = { str = "#ITEMUm item ou objeto.#" },
            [16] = { str = "#COORDCoordenadas [15,26].#" },
            [17] = { str = "." },
            [18] = { str = "#GETTECLAS:#  Existem teclas configuraveis para os passos e guias Anterior/Proximo. Veja no menu de Key Bindings." },
            [19] = { str = "." },
            --[19] = { str = "." },
            --[20] = { str = "." },
        }
    },

}
