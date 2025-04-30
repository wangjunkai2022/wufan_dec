.class public Lcom/join/mgps/dto/ArenaInviteBean;
.super Ljava/lang/Object;
.source "ArenaInviteBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private gameId:Ljava/lang/Long;

.field public groupId:Ljava/lang/String;

.field public no:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaInviteBean;->gameId:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaInviteBean;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaInviteBean;->no:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaInviteBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaInviteBean;->gameId:Ljava/lang/Long;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaInviteBean;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaInviteBean;->no:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaInviteBean;->password:Ljava/lang/String;

    return-void
.end method
