.class public Lcom/join/mgps/dto/ArenaServerGroup;
.super Ljava/lang/Object;
.source "ArenaServerGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:I

.field private ping:Lcom/join/mgps/dto/NetBattleUdpPortBean;

.field private selected:Z

.field private server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->key:I

    return v0
.end method

.method public getPing()Lcom/join/mgps/dto/NetBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->ping:Lcom/join/mgps/dto/NetBattleUdpPortBean;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->selected:Z

    return v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaServerGroup;->selected:Z

    return v0
.end method

.method public setKey(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaServerGroup;->key:I

    return-void
.end method

.method public setPing(Lcom/join/mgps/dto/NetBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaServerGroup;->ping:Lcom/join/mgps/dto/NetBattleUdpPortBean;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaServerGroup;->selected:Z

    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaServerGroup;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaServerGroup;->title:Ljava/lang/String;

    return-void
.end method
