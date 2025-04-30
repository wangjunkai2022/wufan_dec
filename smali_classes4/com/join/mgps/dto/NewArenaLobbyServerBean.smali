.class public Lcom/join/mgps/dto/NewArenaLobbyServerBean;
.super Ljava/lang/Object;
.source "NewArenaLobbyServerBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;
    }
.end annotation


# instance fields
.field private lobbyServer:Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLobbyServer()Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean;->lobbyServer:Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;

    return-object v0
.end method

.method public setLobbyServer(Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean;->lobbyServer:Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;

    return-void
.end method
