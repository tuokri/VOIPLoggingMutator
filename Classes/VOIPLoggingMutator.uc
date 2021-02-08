class VOIPLoggingMutator extends ROMutator;


function PreBeginPlay()
{
    ROGameInfo(WorldInfo.Game).PlayerControllerClass = class'VLMPlayerController';
    `log("VOIPLoggingMutator initialized");
}
