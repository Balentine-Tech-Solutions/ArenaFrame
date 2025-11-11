# ArenaFrame

**Detroit-Inspired PvP Arena for UEFN/Fortnite Creative**

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![UEFN](https://img.shields.io/badge/UEFN-5.1+-orange.svg)
![Status](https://img.shields.io/badge/status-In%20Development-yellow.svg)

---

## 🏙️ Overview

**ArenaFrame** is a minimalist PvP arena experience built for Unreal Editor for Fortnite (UEFN), drawing deep inspiration from Detroit's iconic street grid, industrial heritage, and cultural legacy. This project combines competitive gameplay with thoughtful design that honors the Motor City.

### Key Features

- **🎯 Fast-Paced PvP**: 16-player competitive matches with skill-based combat
- **🗺️ Detroit Street Zones**: 8 spawn zones named after iconic Detroit thoroughfares
- **⚡ Dynamic Respawn System**: Balanced spawn distribution with temporary invulnerability
- **🏆 Competitive Scoring**: Elimination-based scoring with kill streak bonuses
- **🎨 Minimalist Aesthetic**: Clean geometry with crushed diamond floor patterns
- **🎵 Cultural Atmosphere**: Motown-inspired ambient audio and Detroit skyline overlay

---

## 📁 Project Structure

```
ArenaFrame/
├── Config/                          # Game configuration
│   ├── GameSettings.verse           # Match settings, respawn rules, scoring
│   └── SpawnPoints_Detroit.json     # 8 Detroit street-named spawn zones
│
├── Scripts/                         # Core game logic (Verse)
│   ├── ArenaLogic.verse             # PvP loop, scoring, match flow
│   ├── RespawnHandler.verse         # Death/respawn management
│   └── MatchManager.verse           # Match state control
│
├── Assets/                          # Visual and UI assets
│   ├── Geometry/                    # Level design
│   │   ├── FlatArena.umap           # Main arena map
│   │   ├── SpawnZone.umap           # Spawn area template
│   │   └── README_Geometry.md       # Asset specifications
│   └── UI/                          # User interface
│       ├── ScoreboardWidget.uasset  # Score display
│       ├── SkylineOverlay.uasset    # Detroit skyline graphic
│       └── README_UI.md             # UI specifications
│
├── Audio/                           # Sound design
│   ├── AmbientDetroitLoop.wav       # Motown/industrial ambient loop
│   └── README_Audio.md              # Audio specifications
│
├── Docs/                            # Documentation
│   ├── README.md                    # This file
│   ├── TwineSpecCompliance.md       # Job requirements checklist
│   └── LegacyNotes.md               # Detroit design philosophy
│
└── Builds/                          # Release builds
    └── ArenaFrame_UEFN_Release1/    # Playable map package
```

---

## 🚀 Quick Start

### Prerequisites

- **Unreal Engine 5.1+** with UEFN plugin installed
- **Epic Games Launcher** with Fortnite Creative access
- **Git** for version control
- **Basic Verse knowledge** (Fortnite's scripting language)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/BalentineTechSolutions/ArenaFrame.git
   cd ArenaFrame
   ```

2. **Open in UEFN**:
   - Launch Unreal Editor for Fortnite
   - File → Open Project → Select `ArenaFrame` directory
   - Wait for initial compilation

3. **Configure Devices**:
   - Place Player Spawner devices at 8 spawn zone locations
   - Configure Round Settings device with match parameters
   - Link Score Manager device to ArenaLogic script
   - Set up HUD Controller with UI widgets

4. **Test Locally**:
   - Click "Launch Session" in UEFN
   - Invite friends or use multiple clients for testing
   - Monitor console for debug output

---

## 🎮 Gameplay

### Match Flow

1. **Waiting Lobby**: Players join (minimum 4 required)
2. **Pre-Match Countdown**: 15-second countdown with spawn zone assignment
3. **Match Active**: 10-minute PvP combat
4. **Post-Match**: Scoreboard display and winner announcement
5. **Reset**: Automatic reset for next match

### Scoring System

- **Elimination**: 100 points
- **Assist**: 50 points
- **Kill Streak Bonus**: +25 points per consecutive kill
- **Winning Score**: First to 2,500 points (or highest at time limit)

### Spawn Zones (Detroit Streets)

| Zone | Street Name | Location | Theme |
|------|-------------|----------|-------|
| 1 | Fenkell Avenue | Northwest | Residential |
| 2 | McGraw Street | North | Historic |
| 3 | Grand River Avenue | Northeast | Major Artery |
| 4 | Gratiot Avenue | East | Diagonal |
| 5 | Mack Avenue | Southeast | East Side |
| 6 | Joy Road | South | Southwest |
| 7 | Hoover Street | Southwest | Grid |
| 8 | Schoenherr Road | West | Far East |

---

## 🛠️ Development

### Verse Scripts

#### ArenaLogic.verse
Core PvP logic handling:
- Match start/end events
- Elimination scoring
- Win condition checking
- Player loadout initialization

#### RespawnHandler.verse
Respawn system managing:
- Death event handling
- Spawn zone selection (balanced distribution)
- Invulnerability periods
- Spawn zone name display

#### MatchManager.verse
Match flow control:
- Player join/leave handling
- State transitions (waiting → countdown → active → post-match)
- Timer management
- Overtime logic

### Configuration

Edit `Config/GameSettings.verse` to adjust:
- Match duration (default: 600 seconds)
- Player count (max: 16)
- Respawn delay (default: 5 seconds)
- Scoring values
- Arena boundaries

### Asset Creation

See detailed specifications in:
- `Assets/Geometry/README_Geometry.md` - Level design guidelines
- `Assets/UI/README_UI.md` - UI widget specifications
- `Audio/README_Audio.md` - Audio production guide

---

## 🎨 Detroit Design Philosophy

### Cultural Inspiration

ArenaFrame honors Detroit through:

1. **Street Names**: All spawn zones named after real Detroit thoroughfares
2. **Geometric Patterns**: Crushed diamond floor design (Detroit aesthetic)
3. **Color Palette**: Detroit blue (#0C2340) and gold (#FFB81C)
4. **Audio**: Motown textures blended with industrial ambience
5. **Skyline**: Grayscale silhouette of iconic Detroit buildings

### Minimalist Approach

- Clean, functional design (no visual clutter)
- Focus on gameplay over decoration
- Subtle cultural references (not heavy-handed)
- Industrial materials (concrete, steel, glass)

See `Docs/LegacyNotes.md` for deeper design philosophy.

---

## 📊 Performance Targets

- **Frame Rate**: 60+ FPS on recommended hardware
- **Player Count**: 16 simultaneous players
- **Match Duration**: 10 minutes (configurable)
- **Load Time**: < 30 seconds
- **Memory**: < 500MB total

---

## 🧪 Testing

### Local Testing
```bash
# Launch UEFN test session
1. Open ArenaFrame in UEFN
2. Click "Launch Session"
3. Test with multiple clients (recommended: 4+)
```

### Checklist
- [ ] All 8 spawn zones functional
- [ ] Scoring system accurate
- [ ] Respawn delay working
- [ ] Match timer counts down correctly
- [ ] UI displays properly at 1920x1080
- [ ] Audio loops seamlessly
- [ ] No performance hitches
- [ ] Out-of-bounds detection working

---

## 🤝 Contributing

This project is developed by **Balentine Tech Solutions** as a portfolio piece. Contributions, suggestions, and feedback are welcome!

### How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Standards

- Follow Epic's Verse style guide
- Comment complex logic
- Test thoroughly before submitting
- Respect Detroit cultural references (authenticity matters)

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Detroit**: For the inspiration and cultural richness
- **Motown Records**: For the musical legacy
- **Epic Games**: For UEFN and Verse
- **Twine**: For the opportunity to showcase this work

---

## 📞 Contact

**Balentine Tech Solutions**
- GitHub: [@BalentineTechSolutions](https://github.com/BalentineTechSolutions)
- Project Link: [https://github.com/BalentineTechSolutions/ArenaFrame](https://github.com/BalentineTechSolutions/ArenaFrame)

---

## 🗺️ Roadmap

### Phase 1: Core Functionality ✅
- [x] Project structure
- [x] Verse scripts (ArenaLogic, RespawnHandler, MatchManager)
- [x] Configuration files
- [x] Documentation

### Phase 2: Asset Creation 🚧
- [ ] FlatArena.umap level design
- [ ] SpawnZone.umap templates
- [ ] UI widgets (Scoreboard, Skyline Overlay)
- [ ] Audio production (AmbientDetroitLoop.wav)

### Phase 3: Polish & Testing 📋
- [ ] Playtesting with 16 players
- [ ] Performance optimization
- [ ] Bug fixes
- [ ] Balance adjustments

### Phase 4: Release 🚀
- [ ] Final build package
- [ ] Publish to Fortnite Creative
- [ ] Promotional materials
- [ ] Community feedback integration

---

**Built with ❤️ in Detroit's spirit**