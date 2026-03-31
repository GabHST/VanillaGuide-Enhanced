# VanillaGuide Enhanced

### An enhanced, bug-fixed and multi-language in-game leveling guide for World of Warcraft 1.12.1 Vanilla

Compatible with private servers: [SoloCraft.org](https://solocraft.org), Elysium, Kronos, Turtle WoW, and any WoW 1.12.1 (build 5875) server.

**Languages:** English, Portugues (BR)

---

> ### [Download Latest Release (v1.0)](https://github.com/GabHST/VanillaGuide-Enhanced/releases/latest)
> **[Portugues (BR)](https://github.com/GabHST/VanillaGuide-Enhanced/releases/download/v1.0/VanillaGuide-Enhanced-PTBR.zip)** | **[English](https://github.com/GabHST/VanillaGuide-Enhanced/releases/download/v1.0/VanillaGuide-Enhanced-EN.zip)**

---

## What's New (vs Original VanillaGuide)

### TomTom Navigation
- **Auto-waypoint arrow** - When you change steps, a navigation arrow automatically points you to the destination
- **Click any step** with coordinates to instantly set a TomTom waypoint
- No manual setup needed - just follow the arrow

### Smart Click Actions
- **Shift+Click a step** → targets the NPC/Mob mentioned in that step. If there are multiple NPCs, each Shift+Click cycles to the next one (shows "Target: Name (1/2)" in chat)
- **Coordinates** → TomTom waypoint is set automatically when you select a step with coordinates
- **Right-click any step** → skip to next step instantly

### Auto Quest Handling
- **Auto-accept quests** when talking to NPCs
- **Auto-turn in quests** when objectives are complete
- If a quest has multiple reward choices, it lets you pick manually

### Combat Transparency
- Guide window becomes transparent during combat so it doesn't block your view
- Returns to full opacity when combat ends
- Toggle: `/vge combat`

### Progress Tracking
- **Step counter** - Shows "Step 14/47" so you always know where you are
- **Progress bar** - Visual bar showing zone completion percentage
- **Time estimate** - Shows approximately how long until you finish the current zone

### Visual Enhancements
- **Step type colors** - Background tint by action: red = kill/do quest, blue = accept quest, green = turn in, dark = skip
- **Completed steps gray** - Steps you already passed are grayed out so you see your progress
- **Current step highlight** - Bright highlight on current step with full white text
- **Minimap button** - Book icon on minimap. Left-click = toggle guide, Right-click = compact mode

### Sound & Navigation
- **Arrival sound** - Plays a sound when you arrive at the waypoint coordinates
- **TomTom auto-waypoint** - Arrow automatically points to next step destination

### Search & Share
- **Search** - `/vge search keyword` to find any step in the current guide
- **Share step** - `/vge share` prints current step to chat, `/vge share party` sends to group

### Compact Mode
- Shrinks the guide window to show only the current step
- Toggle via minimap button (right-click) or `/vge compact`

### Quality of Life
- All starting zones accessible regardless of your character's race
- Multiple crash fixes (nil guards throughout the code)
- Fixed frame rendering issues

---

## Available Languages

| Language | Folder | Details |
|----------|--------|---------|
| **English** | `/en/` | Original English with all fixes and enhancements |
| **Portugues (BR)** | `/pt-br/` | Full translation. Game names (NPCs, quests, items, mobs) kept in English for easy in-game identification |

---

## Installation

1. Download ZIP from this repository (Code > Download ZIP)
2. Choose your language folder (`en` or `pt-br`)
3. Rename the folder to `VanillaGuide`
4. Place it in `WoW/Interface/AddOns/VanillaGuide/`
5. Make sure the `.toc` file is directly inside the folder
6. Enable "Load out of date AddOns" on character select

### TomTom Setup (Required for arrow navigation)
1. Download [TomTomVanilla](https://github.com/cralor/TomTomVanilla) (Code > Download ZIP)
2. Extract and **rename the folder** from `TomTomVanilla-master` to `TomTom`
3. Place `TomTom` folder in `WoW/Interface/AddOns/`
4. The folder name **must** be `TomTom` (matching the .toc file) or WoW won't load it

---

## Commands

| Command | Description |
|---------|-------------|
| `/vg` | Toggle guide window |
| `/vge` | Show all options with current status |
| `/vge combat` | Toggle combat transparency |
| `/vge compact` | Toggle compact mode |
| `/vge autoquest` | Toggle auto-accept/turn-in quests |
| `/vge skip` | Toggle right-click to skip step |
| `/vge counter` | Toggle step counter |
| `/vge progress` | Toggle progress bar |
| `/vge time` | Toggle time estimate |
| `/vge colors` | Toggle step type color coding |
| `/vge gray` | Toggle completed steps grayed out |
| `/vge sound` | Toggle arrival sound |
| `/vge search <text>` | Search for a step in current guide |
| `/vge share` | Print current step to chat |
| `/vge share party` | Send current step to party chat |
| `/vge share say` | Send current step to /say |

---

## Bug Fixes

| Issue | Fix |
|-------|-----|
| Crash when switching to other race's starting zone | All starting zones now load for every race |
| Multiple nil crash errors | Added nil guards in GetGuide, RetriveData, GuideByID, GetCurrentStepInfo |
| Frame rendering issue | Fixed orphan frame without UIParent |
| Menu entries not matching guide titles | Fixed DeathKnell case, Feralas/Loch Modan/Redridge typos |
| TomTom not loading | Documentation: folder must be named `TomTom` not `TomTomVanilla` |

---

## Guide Content

### Horde (Joana's Guide)
Durotar (1-12) → Barrens (12-20) → Stonetalon/Ashenvale/Thousand Needles (20-30) → STV/Desolace/Arathi (30-40) → Badlands/SoS/Tanaris/Feralas (40-50) → Plaguelands/Winterspring (50-60)

### Alliance (Brian Kopp's Guide)
Elwynn/Dun Morogh/Teldrassil (1-12) → Darkshore/Loch Modan (12-20) → Ashenvale/Wetlands/Duskwood (20-30) → Hillsbrad/STV/Desolace (30-40) → Badlands/Tanaris/Feralas (40-50) → Searing Gorge/Plaguelands/Winterspring (50-60)

### Professions
Alchemy, Blacksmithing, Cooking (Horde & Alliance), Enchanting, Engineering, Leatherworking, Tailoring

---

## PT-BR Translation

The Portuguese translation keeps all game names in English:

| Original | Translated |
|----------|-----------|
| Go to #COORD[45,12]# and accept #GETSome Quest# | Va ate #COORD[45,12]# e aceite #GETSome Quest# |
| Kill #NPCBoar# near the river | Mate #NPCBoar# perto do rio |
| Turn in #INQuest Name# | Entregue #INQuest Name# |
| Set your hearthstone | Sete seu Hearthstone |

This way you read instructions in Portuguese but find everything in-game without confusion.

---

## Credits

- **Original Addon**: [Lanjelin/VanillaGuide](https://github.com/Lanjelin/VanillaGuide)
- **Joana's Horde Guide**: Joana (Mancow)
- **Brian Kopp's Alliance Guide**: Brian Kopp, adapted by Kira and Cdlp
- **Profession Guides**: Velenran
- **Enhancements, Bug Fixes & PT-BR Translation**: GabHST

---

### Keywords
`wow vanilla addon` `wow 1.12.1` `leveling guide` `vanilla wow guide` `private server` `solocraft` `horde guide` `alliance guide` `joana guide` `brian kopp` `wow addon pt-br` `guia wow vanilla` `tomtom` `quest guide` `vanilla leveling` `1-60 guide` `world of warcraft classic` `enhanced guide` `auto quest` `navigation arrow`

