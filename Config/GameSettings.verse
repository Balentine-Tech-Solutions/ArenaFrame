using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ArenaFrame Game Settings
# Detroit-inspired PvP arena configuration
# Balentine Tech Solutions - 2025

game_settings := class:
    # Match Configuration
    var MatchDurationSeconds<public>:int = 600  # 10 minute matches
    var MaxPlayers<public>:int = 16             # 16 player capacity
    var MinPlayersToStart<public>:int = 4       # Minimum 4 players to begin
    
    # Respawn Rules
    var RespawnDelaySeconds<public>:float = 5.0
    var RespawnInvulnerabilitySeconds<public>:float = 3.0
    var EnableInstantRespawn<public>:logic = false
    
    # Scoring System
    var PointsPerElimination<public>:int = 100
    var PointsPerAssist<public>:int = 50
    var PointsPerStreak<public>:int = 25        # Bonus per kill in streak
    var WinningScore<public>:int = 2500         # First to 2500 wins
    
    # Loadout Configuration
    var DefaultWeaponSlots<public>:int = 3
    var StartingShields<public>:int = 50
    var StartingHealth<public>:int = 100
    var EnableWeaponPickups<public>:logic = true
    
    # Arena Boundaries
    var ArenaRadiusMeters<public>:float = 150.0
    var OutOfBoundsDamagePerSecond<public>:int = 10
    var OutOfBoundsGracePeriodSeconds<public>:float = 5.0
    
    # Detroit Theme Settings
    var SpawnZoneCount<public>:int = 8          # 8 Detroit street zones
    var EnableSkylineOverlay<public>:logic = true
    var EnableAmbientAudio<public>:logic = true
    var AmbientVolume<public>:float = 0.3       # 30% volume for atmosphere
    
    # Match Flow
    var PreMatchCountdownSeconds<public>:int = 15
    var PostMatchDisplaySeconds<public>:int = 10
    var EnableOvertimeOnTie<public>:logic = true
    var OvertimeDurationSeconds<public>:int = 120
    
    # Debug & Testing
    var EnableDebugLogging<public>:logic = false
    var ShowSpawnZoneNames<public>:logic = true
    var EnableSpectatorMode<public>:logic = true

# Singleton instance for global access
GlobalGameSettings<public>:game_settings = game_settings{}

