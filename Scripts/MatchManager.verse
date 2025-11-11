using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Game }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ArenaFrame Match Manager
# Controls match flow, state transitions, and game lifecycle
# Balentine Tech Solutions - 2025

match_manager := class(creative_device):
    
    # Device References
    @editable
    var ArenaLogic<public>:arena_logic = arena_logic{}
    
    @editable
    var RespawnHandler<public>:respawn_handler = respawn_handler{}
    
    @editable
    var RoundSettings<public>:round_settings_device = round_settings_device{}
    
    @editable
    var HUDController<public>:hud_controller_device = hud_controller_device{}
    
    @editable
    var TimerDevice<public>:timer_device = timer_device{}
    
    # Match States
    match_state := enum:
        WAITING_FOR_PLAYERS
        PRE_MATCH_COUNTDOWN
        MATCH_ACTIVE
        POST_MATCH
        OVERTIME
    
    # Current State
    var CurrentState<private>:match_state = match_state.WAITING_FOR_PLAYERS
    var PlayerCount<private>:int = 0
    var MatchNumber<private>:int = 0
    
    # Initialize match manager
    OnBegin<override>()<suspends>:void=
        Print("MatchManager: Initializing ArenaFrame match control...")
        
        # Subscribe to player events
        GetPlayspace().PlayerAddedEvent().Subscribe(OnPlayerJoined)
        GetPlayspace().PlayerRemovedEvent().Subscribe(OnPlayerLeft)
        
        # Start in waiting state
        EnterWaitingState()
        
        Print("MatchManager: Match manager initialized")
    
    # Player joined the game
    OnPlayerJoined(Player:player):void=
        set PlayerCount = PlayerCount + 1
        Print("MatchManager: Player joined ({PlayerCount} total)")
        
        # Check if we can start
        if (CurrentState = match_state.WAITING_FOR_PLAYERS):
            if (PlayerCount >= GlobalGameSettings.MinPlayersToStart):
                spawn{StartPreMatchCountdown()}
    
    # Player left the game
    OnPlayerLeft(Player:player):void=
        if (PlayerCount > 0):
            set PlayerCount = PlayerCount - 1
        Print("MatchManager: Player left ({PlayerCount} remaining)")
        
        # Check if we need to end match
        if (CurrentState = match_state.MATCH_ACTIVE):
            if (PlayerCount < 2):
                Print("MatchManager: Insufficient players, ending match")
                spawn{EndMatch()}
    
    # Enter waiting for players state
    EnterWaitingState<private>():void=
        set CurrentState = match_state.WAITING_FOR_PLAYERS
        Print("MatchManager: Waiting for players...")
        ShowWaitingMessage()
    
    # Start pre-match countdown
    StartPreMatchCountdown<private>()<suspends>:void=
        set CurrentState = match_state.PRE_MATCH_COUNTDOWN
        Print("MatchManager: Starting pre-match countdown")
        
        ShowCountdownMessage(GlobalGameSettings.PreMatchCountdownSeconds)
        
        # Countdown loop
        for (TimeRemaining := GlobalGameSettings.PreMatchCountdownSeconds..1):
            Sleep(1.0)
            UpdateCountdownDisplay(TimeRemaining)
        
        # Start the match
        spawn{StartMatch()}
    
    # Start the match
    StartMatch<private>()<suspends>:void=
        set CurrentState = match_state.MATCH_ACTIVE
        set MatchNumber = MatchNumber + 1
        
        Print("MatchManager: Starting Match #{MatchNumber}")
        
        # Respawn all players at spawn zones
        RespawnHandler.RespawnAllPlayers()
        
        # Activate round
        RoundSettings.Activate(player{})
        
        # Notify arena logic
        ArenaLogic.OnMatchStart(agent{})
        
        # Show match start message
        ShowMatchStartMessage()
        
        # Start match timer
        spawn{MonitorMatchTime()}
    
    # Monitor match time and handle end
    MonitorMatchTime<private>()<suspends>:void=
        # Wait for match duration
        Sleep(GlobalGameSettings.MatchDurationSeconds)
        
        if (CurrentState = match_state.MATCH_ACTIVE):
            Print("MatchManager: Match time expired")
            spawn{EndMatch()}
    
    # End the match
    EndMatch<private>()<suspends>:void=
        if (CurrentState = match_state.MATCH_ACTIVE):
            set CurrentState = match_state.POST_MATCH
            
            Print("MatchManager: Ending match")
            
            # Notify arena logic
            ArenaLogic.OnMatchEnd(agent{})
            
            # Show post-match results
            ShowPostMatchResults()
            
            # Wait for post-match display
            Sleep(GlobalGameSettings.PostMatchDisplaySeconds)
            
            # Reset for next match
            spawn{ResetForNextMatch()}
    
    # Reset arena for next match
    ResetForNextMatch<private>()<suspends>:void=
        Print("MatchManager: Resetting arena for next match")
        
        # Reset devices
        RoundSettings.Reset(player{})
        
        # Return to waiting state
        EnterWaitingState()
        
        # Check if we have enough players to start again
        if (PlayerCount >= GlobalGameSettings.MinPlayersToStart):
            Sleep(5.0)
            spawn{StartPreMatchCountdown()}
    
    # Handle overtime scenario
    EnterOvertime<public>()<suspends>:void=
        if (GlobalGameSettings.EnableOvertimeOnTie?):
            set CurrentState = match_state.OVERTIME
            Print("MatchManager: Entering OVERTIME!")
            
            ShowOvertimeMessage()
            
            # Overtime duration
            Sleep(GlobalGameSettings.OvertimeDurationSeconds)
            
            # End match after overtime
            spawn{EndMatch()}
    
    # Force end match (admin/debug)
    ForceEndMatch<public>():void=
        Print("MatchManager: Force ending match")
        spawn{EndMatch()}
    
    # Get current match state
    GetCurrentState<public>():match_state=
        return CurrentState
    
    # Get current player count
    GetPlayerCount<public>():int=
        return PlayerCount
    
    # Get current match number
    GetMatchNumber<public>():int=
        return MatchNumber
    
    # UI Message Helpers
    ShowWaitingMessage<private>():void=
        Print("MatchManager: Waiting for {GlobalGameSettings.MinPlayersToStart} players to start")
        # Would display HUD message
    
    ShowCountdownMessage<private>(Seconds:int):void=
        Print("MatchManager: Match starting in {Seconds} seconds")
        # Would display countdown HUD
    
    UpdateCountdownDisplay<private>(TimeRemaining:int):void=
        Print("MatchManager: {TimeRemaining}...")
        # Would update countdown display
    
    ShowMatchStartMessage<private>():void=
        Print("MatchManager: FIGHT! - ArenaFrame Detroit")
        # Would display match start HUD
    
    ShowPostMatchResults<private>():void=
        Print("MatchManager: Match Complete - Displaying Results")
        # Would show scoreboard and winner
    
    ShowOvertimeMessage<private>():void=
        Print("MatchManager: OVERTIME - Sudden Death!")
        # Would display overtime notification
    
    # Debug: Get match statistics
    GetMatchStatistics<public>():void=
        Print("MatchManager: Match Statistics:")
        Print("  Current State: {CurrentState}")
        Print("  Player Count: {PlayerCount}")
        Print("  Match Number: {MatchNumber}")
        Print("  Min Players: {GlobalGameSettings.MinPlayersToStart}")
        Print("  Match Duration: {GlobalGameSettings.MatchDurationSeconds}s")

