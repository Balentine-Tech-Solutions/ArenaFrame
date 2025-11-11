# ArenaFrame Geometry Assets

## Overview
This directory contains the 3D geometry and level design assets for the ArenaFrame Detroit PvP arena.

## Required Assets

### FlatArena.umap
**Primary arena level file**

#### Design Specifications:
- **Layout**: Minimalist octagonal arena inspired by Detroit's street grid
- **Dimensions**: 300m diameter central combat zone
- **Floor Pattern**: Crushed diamond geometric pattern (Detroit aesthetic)
- **Elevation**: Flat terrain with subtle height variations (0-5m)
- **Boundaries**: Invisible walls at 150m radius from center
- **Lighting**: Neutral ambient lighting with subtle directional shadows

#### Detroit-Inspired Elements:
- **Grid Layout**: Reflects Detroit's orthogonal street planning
- **Industrial Aesthetic**: Clean concrete textures with weathered metal accents
- **Color Palette**: Grayscale base with blue/gold accent lighting (Detroit colors)
- **Sight Lines**: Open design promoting tactical positioning

#### Technical Requirements:
- Optimized for 16 players
- 60+ FPS target on recommended hardware
- Collision meshes for all geometry
- Nav mesh for AI pathfinding (future expansion)

#### Zones:
1. **Central Arena** (0,0,0) - Main combat area
2. **8 Spawn Zones** - Positioned at octagonal vertices:
   - Fenkell (NW)
   - McGraw (N)
   - Grand River (NE)
   - Gratiot (E)
   - Mack (SE)
   - Joy Rd (S)
   - Hoover (SW)
   - Schoenherr (W)

---

### SpawnZone.umap
**Spawn area template**

#### Design Specifications:
- **Shape**: Circular platform with crushed diamond floor pattern
- **Radius**: 3m safe spawn area
- **Material**: Polished concrete with Detroit street name etched
- **Lighting**: Soft uplight from floor edges
- **Protection**: Spawn protection zone (3 second invulnerability)

#### Visual Elements:
- Street name displayed on floor (e.g., "FENKELL")
- Directional arrow pointing to arena center
- Subtle particle effects on spawn
- Color-coded by zone (8 distinct hues)

#### Technical Requirements:
- Player spawner device placement
- Mutator zone for spawn protection
- Trigger volume for spawn tracking

---

## Asset Creation Guidelines

### Tools Required:
- Unreal Engine 5.1+ with UEFN plugin
- Blender 3.0+ (for custom geometry)
- Substance Painter (for textures)

### Workflow:
1. **Blockout**: Create basic geometry in UEFN
2. **Refinement**: Add detail meshes and materials
3. **Optimization**: Reduce poly count, combine meshes
4. **Testing**: Playtest for performance and gameplay flow
5. **Polish**: Add lighting, effects, and final touches

### Performance Targets:
- **Draw Calls**: < 500 per frame
- **Triangles**: < 100k visible at any time
- **Texture Memory**: < 200MB total
- **Collision Complexity**: Simple collision meshes only

---

## Detroit Aesthetic Reference

### Architectural Inspiration:
- **Guardian Building**: Art Deco geometric patterns
- **Renaissance Center**: Modern angular design
- **Detroit People Mover**: Clean industrial lines
- **Belle Isle**: Open spaces with strategic cover

### Material Palette:
- Brushed concrete (primary floor)
- Weathered steel (accent structures)
- Frosted glass (barriers)
- Polished metal (spawn zones)

### Color Scheme:
- **Base**: Grayscale (concrete, steel)
- **Accents**: Detroit blue (#0C2340), gold (#FFB81C)
- **Lighting**: Cool white with warm highlights

---

## File Naming Conventions

```
SM_Arena_Floor_01.uasset          # Static Mesh - Arena Floor
SM_SpawnZone_Fenkell.uasset       # Static Mesh - Fenkell Spawn
M_Concrete_Crushed_01.uasset      # Material - Crushed Diamond Concrete
T_Floor_Normal_01.uasset          # Texture - Floor Normal Map
BP_SpawnProtection.uasset         # Blueprint - Spawn Protection Zone
```

---

## Integration Notes

### Device Placement:
- **Player Spawners**: One per spawn zone (8 total)
- **Mutator Zones**: Spawn protection, out-of-bounds damage
- **Trigger Volumes**: Score zones, boundary detection
- **Prop Movers**: Dynamic cover elements (optional)

### Lighting Setup:
- **Directional Light**: Sun angle at 45° for consistent shadows
- **Sky Light**: HDRI with overcast Detroit sky
- **Point Lights**: Accent lighting at spawn zones
- **Post Process**: Subtle color grading for atmosphere

---

## Version History

- **v1.0** (2025-11-11): Initial geometry specification
- Future: Add dynamic weather, time-of-day variants

---

**Created by**: Balentine Tech Solutions  
**Last Updated**: 2025-11-11  
**Status**: Specification Complete - Ready for Asset Creation

