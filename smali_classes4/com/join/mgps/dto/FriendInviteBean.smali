.class public Lcom/join/mgps/dto/FriendInviteBean;
.super Ljava/lang/Object;
.source "FriendInviteBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountId:I

.field private avatar:Ljava/lang/String;

.field private eliteField:Z

.field private fromAccountId:I

.field private fromNickname:Ljava/lang/String;

.field private gameId:J

.field private gameName:Ljava/lang/String;

.field private lobbyRoomId:I

.field private roomPasswd:Ljava/lang/String;

.field private source:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    return v0
.end method

.method public getFromNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getLobbyRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    return v0
.end method

.method public getRoomPasswd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    return-wide v0
.end method

.method public isEliteField()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    return v0
.end method

.method public set(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->p0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->d()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->X()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->f()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->getGameId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->getGameName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/g0;->getSource()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    return-void
.end method

.method public setAccountId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setEliteField(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    return-void
.end method

.method public setFromAccountId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    return-void
.end method

.method public setFromNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setLobbyRoomId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    return-void
.end method

.method public setRoomPasswd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    return-void
.end method
