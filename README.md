<p align="center">
  <h1 align="center">VanillaGuide Enhanced</h1>
  <p align="center">
    <strong>The ultimate in-game leveling guide for World of Warcraft 1.12.1 Vanilla</strong>
  </p>
  <p align="center">
    <a href="https://github.com/GabHST/VanillaGuide-Enhanced/releases/tag/v2.0.0"><img src="https://img.shields.io/badge/version-2.0.0-brightgreen" alt="Version"></a>
    <img src="https://img.shields.io/badge/WoW-1.12.1_Vanilla-yellow" alt="WoW">
    <img src="https://img.shields.io/badge/languages-EN_|_PT--BR-blue" alt="Languages">
    <img src="https://img.shields.io/github/downloads/GabHST/VanillaGuide-Enhanced/total?color=purple&label=downloads" alt="Downloads">
  </p>
</p>

---

<p align="center">
  <a href="https://github.com/GabHST/VanillaGuide-Enhanced/releases/download/v2.0.0/VanillaGuide-Enhanced.zip">
    <img src="https://img.shields.io/badge/%E2%AC%87%20Download-English-2ea44f?style=for-the-badge" alt="Download EN">
  </a>
  &nbsp;&nbsp;
  <a href="https://github.com/GabHST/VanillaGuide-Enhanced/releases/download/v2.0.0/VanillaGuide-Enhanced.zip">
    <img src="https://img.shields.io/badge/%E2%AC%87%20Download-Portugu%C3%AAs_(BR)-2ea44f?style=for-the-badge" alt="Download PT-BR">
  </a>
</p>

---

## What is this?

VanillaGuide Enhanced is a **complete rewrite** of the classic VanillaGuide leveling addon. It tells you exactly where to go, what to do, and does most of it automatically.

Works on: **SoloCraft**, Elysium, Kronos, Turtle WoW, or any WoW 1.12.1 server.

---

## Key Features

### GPS Navigation
| Feature | Description |
|---------|-------------|
| **Auto-arrow** | pfQuest arrow automatically points to current step destination |
| **Shift+Click** | Cycle between NPCs, coordinates, and mobs in the step |
| **Distance + ETA** | Shows meters and estimated arrival time |
| **Locked targeting** | Arrow stays on YOUR choice until you change it |
| **Right-click reset** | Click arrow to go back to nearest objective |

### Smart Auto-Quest
| Feature | Description |
|---------|-------------|
| **Auto-accept** | Accepts quests that match the current step (exact name) |
| **Auto-turn-in** | Completes and turns in quests automatically |
| **Multi-quest NPCs** | Handles NPCs with multiple quests correctly |
| **Never wrong** | Will NEVER accept a quest that isn't in the current step |

### Modern UI
| Feature | Description |
|---------|-------------|
| **2-step view** | Current step (bright) + next step (dimmed) |
| **Tips** | Helpful hints below every step in gray |
| **Dark theme** | Clean, modern dark background |
| **Step counter** | `[29/78]` green counter |
| **Combat fade** | Guide fades during combat |

### Guide Quality
| Feature | Description |
|---------|-------------|
| **1 action = 1 step** | Never "do X and Y" in the same step |
| **Exact coords** | All coordinates from pfQuest database |
| **NPC tags** | Every NPC tagged for Shift+Click targeting |
| **Item tags** | Every item tagged for mob resolution via pfDB |

---

## Installation

```
1. Download the ZIP for your language (buttons above)
2. Extract the "VanillaGuide" folder into: WoW/Interface/AddOns/
3. Restart WoW or /reload
```

### Recommended Addons

| Addon | Why |
|-------|-----|
| [pfQuest](https://github.com/shagu/pfQuest) | **GPS arrow** - the guide points pfQuest's arrow to each destination |
| [pfUI](https://github.com/shagu/pfUI) | **Nameplates** - shows quest mob indicators |

---

## Controls

| Input | Action |
|-------|--------|
| `Shift+Click` on step | Cycle targets + point GPS arrow |
| `Right-click` on step | Skip / advance step |
| `Right-click` on arrow | Reset arrow to nearest objective |
| `/vge` | Show all commands |
| `/vge combat` | Toggle combat transparency |
| `/vge skip` | Toggle right-click skip |

---

## Guides Included

### Horde (rewritten with tips + exact coords)
| Zone | Levels | Steps |
|------|--------|-------|
| Deathknell | 1-6 | 44 |
| Tirisfal Glades | 6-10 | 78 |
| Tirisfal Glades | 10-12 | 72 |
| Barrens | 12-15 | 69 |
| Stonetalon Mountains | 15-16 | 12 |
| Barrens (part 1) | 16-20 | 58 |
| Barrens (part 2) | 16-20 | 31 |
| *20-60* | *included* | *original* |

### Alliance
Full 1-60 guides included (original format).

---

## Changelog

### v2.0.0
- Complete rewrite of VG_Enhancements
- pfQuest arrow GPS integration
- Smart auto-quest with exact name matching
- 2-step display with tips
- Modern dark UI
- All Horde guides 1-20 rewritten
- Deferred initialization (no login freeze)

### v1.0
- Initial release

---

## Credits

- Original VanillaGuide by **mrmr** and **lanjelin**
- Enhanced by **GabHST**

## License

MIT
