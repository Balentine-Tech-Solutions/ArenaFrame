# ArenaFrame Audio Assets

## Overview
This directory contains audio assets for the ArenaFrame Detroit PvP arena, including ambient soundscapes, music, and sound effects.

## Primary Asset

### AmbientDetroitLoop.wav
**Main ambient audio loop**

#### Specifications:
- **Format**: WAV (uncompressed)
- **Sample Rate**: 48kHz
- **Bit Depth**: 24-bit
- **Channels**: Stereo
- **Duration**: 2-4 minutes (seamless loop)
- **File Size**: ~50-100MB

#### Audio Composition:

##### Layer 1: Motown Textures (30% mix)
- Subtle bass line (low-pass filtered)
- Muted horn stabs (distant, reverb-heavy)
- Vinyl crackle texture (very subtle)
- Tempo: 90-100 BPM
- **Inspiration**: Motown's signature sound, heavily processed

##### Layer 2: Industrial Ambience (40% mix)
- Distant factory hums
- Metal clangs and echoes
- Steam releases (periodic)
- Machinery rhythms
- **Inspiration**: Detroit's automotive heritage

##### Layer 3: Urban Soundscape (30% mix)
- Distant traffic (highway ambience)
- Train horns (far off, occasional)
- Wind through buildings
- Subtle city rumble
- **Inspiration**: Modern Detroit urban environment

#### Mixing Guidelines:
- **Overall Volume**: -18dB LUFS (background level)
- **Frequency Balance**: 
  - Low: 40-200Hz (industrial rumble)
  - Mid: 200-2kHz (Motown elements)
  - High: 2-8kHz (urban details, sparkle)
- **Dynamics**: Minimal compression (natural ebb and flow)
- **Reverb**: Medium hall (2.5s decay) for depth
- **Stereo Width**: 70% (not too wide, maintains focus)

#### Loop Points:
- **Start**: 0:00.000
- **End**: Exact duration (e.g., 3:00.000)
- **Crossfade**: 2-second overlap for seamless loop
- **Markers**: Set loop markers in DAW before export

#### Mood & Atmosphere:
- **Tone**: Nostalgic yet modern
- **Energy**: Low-medium (doesn't compete with gameplay)
- **Emotion**: Reflective, determined, urban grit
- **Cultural**: Honors Detroit's musical and industrial legacy

---

## Additional Audio Assets

### Match Events

#### MatchStart_Horn.wav
- **Duration**: 2 seconds
- **Style**: Deep horn blast (automotive/industrial)
- **Volume**: -6dB LUFS (prominent)
- **Usage**: Match start signal

#### MatchEnd_Fanfare.wav
- **Duration**: 3-5 seconds
- **Style**: Triumphant brass (Motown-inspired)
- **Volume**: -6dB LUFS
- **Usage**: Match completion

#### Countdown_Beep.wav
- **Duration**: 0.5 seconds
- **Style**: Electronic beep (clean, sharp)
- **Volume**: -12dB LUFS
- **Usage**: Pre-match countdown (3, 2, 1)

---

### Elimination Sounds

#### Elimination_Confirm.wav
- **Duration**: 1 second
- **Style**: Satisfying "thunk" + subtle chime
- **Volume**: -9dB LUFS
- **Usage**: Player gets elimination

#### Eliminated_Death.wav
- **Duration**: 1.5 seconds
- **Style**: Descending tone + reverb tail
- **Volume**: -9dB LUFS
- **Usage**: Player is eliminated

---

### Spawn Sounds

#### Respawn_Whoosh.wav
- **Duration**: 1.5 seconds
- **Style**: Upward whoosh + sparkle
- **Volume**: -12dB LUFS
- **Usage**: Player respawns

#### SpawnProtection_Loop.wav
- **Duration**: 3 seconds (loop)
- **Style**: Subtle shield hum
- **Volume**: -18dB LUFS
- **Usage**: During invulnerability period

---

### UI Sounds

#### UI_Select.wav
- **Duration**: 0.2 seconds
- **Style**: Clean click
- **Volume**: -15dB LUFS
- **Usage**: Menu selection

#### UI_Hover.wav
- **Duration**: 0.1 seconds
- **Style**: Soft tick
- **Volume**: -18dB LUFS
- **Usage**: Menu hover

#### ScoreUpdate_Ping.wav
- **Duration**: 0.3 seconds
- **Style**: Bright ping
- **Volume**: -12dB LUFS
- **Usage**: Score change notification

---

### Warning Sounds

#### OutOfBounds_Warning.wav
- **Duration**: 1 second (loop)
- **Style**: Urgent beep pattern
- **Volume**: -9dB LUFS
- **Usage**: Player out of bounds

#### LowHealth_Heartbeat.wav
- **Duration**: 2 seconds (loop)
- **Style**: Heartbeat rhythm
- **Volume**: -12dB LUFS
- **Usage**: Player below 25% health

---

## Audio Implementation

### UEFN Integration:

#### Ambient Loop Setup:
```
1. Import AmbientDetroitLoop.wav to Content Browser
2. Create Sound Cue: SC_AmbientDetroit
3. Set to Loop: Enable
4. Add Attenuation: None (global ambient)
5. Place Audio Volume in level
6. Set Sound: SC_AmbientDetroit
7. Auto Activate: True
8. Volume: 0.3 (30%)
```

#### Event Sounds:
- Trigger via Verse scripts
- Use Audio Player Device in UEFN
- Set appropriate attenuation for spatial sounds
- Configure priority (high for important events)

#### Mixing Hierarchy:
1. **Gameplay Sounds** (weapons, footsteps): Highest priority
2. **Event Sounds** (eliminations, match events): High priority
3. **UI Sounds**: Medium priority
4. **Ambient Loop**: Lowest priority (ducks for important sounds)

---

## Production Guidelines

### Recording Sources:

#### Motown Elements:
- **Option 1**: License royalty-free Motown-style loops
- **Option 2**: Recreate with live instruments (bass, horns)
- **Option 3**: Use synthesized approximations
- **Legal**: Ensure all samples are cleared or original

#### Industrial Sounds:
- Field recordings from industrial areas
- Foley: Metal impacts, machinery
- Synthesized drones and rumbles
- Public domain factory ambiences

#### Urban Soundscape:
- Field recordings: Traffic, trains, city ambience
- Freesound.org: Creative Commons urban sounds
- Synthesized wind and atmospheric textures

### DAW Workflow:

#### Recommended Tools:
- **DAW**: Ableton Live, Logic Pro, or Reaper
- **Plugins**: 
  - Reverb: Valhalla Room
  - EQ: FabFilter Pro-Q
  - Compression: Waves SSL
  - Saturation: Decapitator
- **Mastering**: iZotope Ozone (for final polish)

#### Production Steps:
1. **Composition**: Layer individual elements
2. **Arrangement**: Create 2-4 minute structure
3. **Mixing**: Balance levels, EQ, effects
4. **Loop Editing**: Perfect loop points with crossfade
5. **Mastering**: Final EQ, limiting to -18dB LUFS
6. **Export**: 48kHz/24-bit WAV
7. **Testing**: Verify seamless loop in UEFN

---

## Cultural Authenticity

### Detroit Musical Heritage:

#### Motown Influence:
- **Artists**: Marvin Gaye, Stevie Wonder, The Supremes
- **Characteristics**: Groove-oriented, soulful, polished
- **Elements to Reference**: 
  - Walking bass lines
  - Tambourine patterns
  - String arrangements (subtle)
  - Handclaps (very subtle)

#### Techno Roots:
- **Artists**: Juan Atkins, Derrick May, Kevin Saunderson
- **Characteristics**: Futuristic, mechanical, hypnotic
- **Elements to Reference**:
  - Synthesized textures
  - Repetitive patterns
  - Industrial sounds
  - Minimal, focused

### Industrial Heritage:
- Automotive assembly lines
- Steel manufacturing
- River/port activity
- Urban renewal sounds

---

## Performance Optimization

### File Size Management:
- Compress to OGG Vorbis for in-game use (50% size reduction)
- Keep WAV as source/master
- Quality: 192kbps OGG (good balance)

### Memory Usage:
- Stream ambient loop (don't load into memory)
- Load short sounds into memory (UI, events)
- Use sound cue variations to reduce unique assets

### CPU Optimization:
- Limit simultaneous sounds (max 32 voices)
- Use attenuation to cull distant sounds
- Prioritize important gameplay sounds

---

## Testing Checklist

- [ ] Ambient loop plays seamlessly (no clicks/pops)
- [ ] Volume doesn't overpower gameplay sounds
- [ ] Cultural elements feel authentic, not stereotypical
- [ ] Mood enhances atmosphere without distraction
- [ ] All event sounds trigger correctly
- [ ] Mix sounds good on headphones and speakers
- [ ] No clipping or distortion
- [ ] File sizes are optimized
- [ ] Performance impact is minimal

---

## File Naming Conventions

```
AMB_Detroit_Loop_01.wav           # Ambient Loop
SFX_MatchStart_Horn.wav           # Sound Effect - Match Start
MUS_Victory_Fanfare.wav           # Music - Victory
UI_Click_01.wav                   # UI Sound
VO_Announcer_Elimination.wav      # Voice Over (future)
```

---

## Future Enhancements

### Dynamic Music System:
- Intensity layers that increase with action
- Adaptive mixing based on player performance
- Contextual music for different match states

### Voice Over:
- Match announcer (Detroit accent)
- Callouts for eliminations, streaks
- Motivational phrases

### Spatial Audio:
- 3D positional sounds for eliminations
- Directional audio cues
- Reverb zones for different arena areas

---

**Created by**: Balentine Tech Solutions  
**Last Updated**: 2025-11-11  
**Status**: Specification Complete - Ready for Audio Production  
**Cultural Consultant**: Recommended for authentic Detroit representation

