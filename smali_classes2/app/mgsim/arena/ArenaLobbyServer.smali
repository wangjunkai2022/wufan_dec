.class public Lapp/mgsim/arena/ArenaLobbyServer;
.super Ljava/lang/Object;
.source "ArenaLobbyServer.java"


# instance fields
.field private disabled:I

.field private disabledMessage:Ljava/lang/String;

.field private lobbyServer:Lapp/mgsim/arena/AreaInfo;

.field private ping:[Lapp/mgsim/arena/AreaInfo;

.field private startGameCopper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabled:I

    return v0
.end method

.method public getDisabledMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabledMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getLobbyServer()Lapp/mgsim/arena/AreaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    return-object v0
.end method

.method public getPing()[Lapp/mgsim/arena/AreaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    return-object v0
.end method

.method public getStartGameCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->startGameCopper:I

    return v0
.end method

.method public setDisabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabled:I

    return-void
.end method

.method public setDisabledMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabledMessage:Ljava/lang/String;

    return-void
.end method

.method public setLobbyServer(Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    return-void
.end method

.method public setPing([Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    return-void
.end method

.method public setStartGameCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->startGameCopper:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaLobbyServer{lobbyServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
