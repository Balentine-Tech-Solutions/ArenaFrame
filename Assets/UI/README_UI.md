# ArenaFrame UI Assets

## Overview
This directory contains user interface widgets and HUD elements for the ArenaFrame Detroit PvP arena.

## Required Assets

### ScoreboardWidget.uasset
**Main scoreboard display**

#### Design Specifications:
- **Position**: Top-center of screen
- **Dimensions**: 600x400px (scalable)
- **Style**: Minimalist Detroit-inspired design
- **Font**: "Detroit" or "Bebas Neue" (bold, industrial)
- **Update Rate**: Real-time (every elimination)

#### Layout:
```
┌─────────────────────────────────────┐
│  ARENAFRAME DETROIT                 │
│  ───────────────────────────────    │
│  TIME: 08:45                        │
│                                     │
│  RANK  PLAYER         SCORE  STREAK│
│  ────  ──────────────  ────  ────  │
│   1    PlayerOne       1250    5   │
│   2    PlayerTwo        980    2   │
│   3    PlayerThree      750    0   │
│   ...                               │
│                                     │
│  TARGET: 2500 POINTS                │
└─────────────────────────────────────┘
```

#### Visual Elements:
- **Header**: "ARENAFRAME DETROIT" in bold caps
- **Timer**: Match time remaining (MM:SS format)
- **Player List**: Top 8 players shown
- **Columns**: Rank, Name, Score, Kill Streak
- **Highlight**: Current player row in gold
- **Leader**: First place in Detroit blue

#### Technical Requirements:
- UMG Widget Blueprint
- Data binding to score manager
- Smooth animations for rank changes
- Responsive scaling for different resolutions

#### Color Scheme:
- **Background**: Semi-transparent dark gray (80% opacity)
- **Text**: White primary, gold for player, blue for leader
- **Borders**: Thin gold lines (Detroit accent)
- **Highlights**: Subtle glow on score changes

---

### SkylineOverlay.uasset
**Detroit skyline corner overlay**

#### Design Specifications:
- **Position**: Bottom-right corner
- **Dimensions**: 400x200px
- **Style**: Grayscale silhouette
- **Opacity**: 15-20% (subtle background element)
- **Animation**: None (static)

#### Visual Design:
```
                    ╔════════════════╗
                    ║    ▄▄  ▄▄▄     ║
                    ║   ███ ████▄    ║
                    ║  ▄███▄█████    ║
                    ║ ▄██████████▄   ║
                    ║ ███████████▀   ║
                    ╚════════════════╝
```

#### Detroit Skyline Elements:
- **Renaissance Center**: Dominant central towers
- **Guardian Building**: Art Deco spire
- **One Detroit Center**: Modern skyscraper
- **Penobscot Building**: Historic tower
- **GM Renaissance**: Cylindrical towers

#### Technical Requirements:
- Vector-based or high-res PNG (2048x1024)
- Grayscale with alpha channel
- Minimal performance impact
- Scales with UI resolution

#### Artistic Direction:
- Simplified silhouette (not photorealistic)
- Emphasize iconic building shapes
- Clean lines, no excessive detail
- Evokes Detroit without overwhelming gameplay

---

## Additional UI Elements

### MatchStartWidget.uasset
**Match start countdown**

#### Display:
```
┌─────────────────────────┐
│                         │
│    MATCH STARTING       │
│                         │
│         ⓷              │
│                         │
│    FIGHT FOR DETROIT    │
│                         │
└─────────────────────────┘
```

- **Duration**: 3 seconds
- **Animation**: Countdown numbers scale in/out
- **Sound**: Countdown beeps + match start horn
- **Style**: Bold, high-contrast

---

### EliminationFeedWidget.uasset
**Kill feed display**

#### Position: Top-right corner
#### Format:
```
PlayerOne [weapon] PlayerTwo
PlayerThree [weapon] PlayerFour
```

- **Duration**: 5 seconds per entry
- **Max Entries**: 5 visible
- **Animation**: Slide in from right, fade out
- **Icons**: Weapon icons for elimination method

---

### SpawnZoneIndicator.uasset
**Spawn location display**

#### Display on respawn:
```
┌─────────────────────────┐
│  SPAWNING AT            │
│  ═══════════            │
│  FENKELL AVENUE         │
└─────────────────────────┘
```

- **Duration**: 2 seconds
- **Position**: Center screen
- **Style**: Matches scoreboard aesthetic
- **Animation**: Quick fade in/out

---

### OutOfBoundsWarning.uasset
**Boundary warning**

#### Display:
```
┌─────────────────────────┐
│  ⚠ OUT OF BOUNDS ⚠     │
│  RETURN TO ARENA        │
│  DAMAGE: 10/sec         │
└─────────────────────────┘
```

- **Position**: Top-center (below scoreboard)
- **Color**: Red warning
- **Animation**: Pulsing border
- **Sound**: Warning beep loop

---

## Font Specifications

### Primary Font: "Detroit" or "Bebas Neue"
- **Weight**: Bold
- **Style**: All caps for headers
- **Size**: 24-48px for headers, 16-20px for body
- **Spacing**: Tight kerning for industrial feel

### Fallback Font: "Roboto Condensed"
- **Weight**: Medium/Bold
- **Style**: Clean, readable
- **Usage**: Player names, scores

---

## Color Palette

### Detroit Brand Colors:
- **Detroit Blue**: #0C2340 (primary accent)
- **Detroit Gold**: #FFB81C (highlights, player indicator)
- **Concrete Gray**: #6B6B6B (backgrounds)
- **Steel**: #A8A8A8 (borders, dividers)
- **White**: #FFFFFF (primary text)
- **Warning Red**: #D32F2F (out of bounds, critical)

---

## Animation Guidelines

### Principles:
- **Speed**: Quick, snappy (200-300ms)
- **Easing**: Ease-out for entrances, ease-in for exits
- **Subtlety**: Don't distract from gameplay
- **Consistency**: Same timing across all widgets

### Common Animations:
- **Fade In**: 200ms ease-out
- **Slide In**: 250ms ease-out from edge
- **Scale Pulse**: 150ms scale 1.0 → 1.1 → 1.0
- **Color Flash**: 100ms color change on update

---

## Performance Optimization

### Best Practices:
- Use material instances for color variations
- Minimize overdraw with proper layering
- Cache widget references, don't recreate
- Use invalidation boxes for static content
- Limit tick events, use event-driven updates

### Target Performance:
- **Draw Calls**: < 20 per frame for all UI
- **Memory**: < 50MB for all UI assets
- **Update Rate**: 60 FPS with no hitches

---

## Asset Creation Workflow

### Tools:
- **Unreal Engine UMG**: Widget creation
- **Adobe Illustrator**: Vector graphics (skyline)
- **Photoshop**: Texture creation
- **Figma**: UI mockups and prototyping

### Steps:
1. **Mockup**: Design in Figma with exact dimensions
2. **Asset Creation**: Create graphics in Illustrator/Photoshop
3. **Import**: Bring assets into Unreal as textures
4. **Widget Building**: Construct UMG widgets
5. **Data Binding**: Connect to game logic
6. **Testing**: Verify at multiple resolutions
7. **Polish**: Animations, sounds, final tweaks

---

## File Naming Conventions

```
WBP_Scoreboard_Main.uasset         # Widget Blueprint - Scoreboard
WBP_MatchStart_Countdown.uasset    # Widget Blueprint - Match Start
T_Skyline_Detroit_01.uasset        # Texture - Skyline Overlay
M_UI_Background.uasset             # Material - UI Background
F_Detroit_Bold.uasset              # Font - Detroit Bold
```

---

## Integration Notes

### HUD Controller Setup:
- Add widgets to HUD controller device
- Set visibility rules per match state
- Configure layer ordering (z-index)
- Bind to game events (eliminations, score changes)

### Responsive Design:
- Support 1920x1080 (primary)
- Scale for 1280x720, 2560x1440, 3840x2160
- Safe zones for console displays
- Readable at all supported resolutions

---

## Accessibility Considerations

- **Color Blind Modes**: Alternative color schemes
- **Text Scaling**: Support for larger text
- **High Contrast**: Option for increased contrast
- **Screen Reader**: Descriptive labels (future)

---

**Created by**: Balentine Tech Solutions  
**Last Updated**: 2025-11-11  
**Status**: Specification Complete - Ready for Asset Creation

