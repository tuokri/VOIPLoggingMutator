class VLMPlayerController extends ROPlayerController;


function string GetUidStr()
{
    return class'OnlineSubsystem'.static.UniqueNetIdToString(PlayerReplicationInfo.UniqueId);
}

function LogBeginVoiceChat(string Type)
{
    `log(TimeStamp() $ " Begin " $ Type $ " Voice:" $ " " $ GetUidStr() $ " " $ GetPlayerNetworkAddress());
}

function LogEndVoiceChat()
{
    `log(TimeStamp() $ " End Voice:" $ " " $ GetUidStr() $ " " $ GetPlayerNetworkAddress());
}

reliable protected server function ServerStopVoiceChat(optional bool bForce)
{
    LogEndVoiceChat();
    super.ServerStopVoiceChat(bForce);
}

reliable protected server function ServerStartVoiceChat()
{
    LogBeginVoiceChat("Public");
    super.ServerStartVoiceChat();
}

reliable protected server function ServerStartTeamVoiceChat()
{
    LogBeginVoiceChat("Team");
    super.ServerStartTeamVoiceChat();
}

reliable protected server function ServerStartSquadVoiceChat()
{
    LogBeginVoiceChat("Squad");
    super.ServerStartSquadVoiceChat();
}

reliable protected server function ServerStartCommandVoiceChat()
{
    LogBeginVoiceChat("Command");
    super.ServerStartCommandVoiceChat();
}

reliable protected server function ServerStartVehicleVoiceChat()
{
    LogBeginVoiceChat("Vehicle");
    super.ServerStartVehicleVoiceChat();
}

reliable protected server function ServerStartSpatializedVoiceChat()
{
    LogBeginVoiceChat("Local");
    super.ServerStartSpatializedVoiceChat();
}
