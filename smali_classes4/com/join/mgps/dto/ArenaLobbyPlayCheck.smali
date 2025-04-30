.class public Lcom/join/mgps/dto/ArenaLobbyPlayCheck;
.super Ljava/lang/Object;
.source "ArenaLobbyPlayCheck.java"


# instance fields
.field private create_money:I

.field private join_money:I

.field private money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCreate()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    move-result v0

    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getCreate_money()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public canJoin()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    move-result v0

    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getJoin_money()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCreate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->create_money:I

    return v0
.end method

.method public getJoin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->join_money:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->money:I

    return v0
.end method

.method public setCreate_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->create_money:I

    return-void
.end method

.method public setJoin_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->join_money:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->money:I

    return-void
.end method
