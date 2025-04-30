.class public Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;
.super Ljava/lang/Object;
.source "NewArenaLobbyServerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/NewArenaLobbyServerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LobbyServer"
.end annotation


# instance fields
.field private area:I

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->area:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->port:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->area:I

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->host:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NewArenaLobbyServerBean$LobbyServer;->port:I

    return-void
.end method
