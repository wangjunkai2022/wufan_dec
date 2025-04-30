.class public Lcom/join/mgps/dto/FriendBean;
.super Ljava/lang/Object;
.source "FriendBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/FriendBean$MemberTitle;
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private banned:Z

.field private elite:Z

.field private friendRequestType:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private id:I

.field private isRecommend:Z

.field private level:I

.field private levelName:Ljava/lang/String;

.field private memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

.field private message:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

.field private playType:I

.field private readFlag:I

.field private requestIfo:Ljava/lang/String;

.field private roomId:I

.field private roomPwd:Ljava/lang/String;

.field private roomType:I

.field private ruid:I

.field private source:I

.field private state:I

.field private status:I

.field private time:Ljava/lang/String;

.field private timestamp:J

.field private uid:I

.field private vip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendRequestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->friendRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayGameLevel()Lcom/join/mgps/dto/GameLevelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->playType:I

    return v0
.end method

.method public getReadFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->readFlag:I

    return v0
.end method

.method public getRequestIfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->requestIfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->roomId:I

    return v0
.end method

.method public getRoomPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->roomPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->roomType:I

    return v0
.end method

.method public getRuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->ruid:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->source:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->status:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendBean;->timestamp:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->uid:I

    return v0
.end method

.method public isBanned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->banned:Z

    return v0
.end method

.method public isElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->elite:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->isRecommend:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->vip:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->account:Ljava/lang/String;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBanned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->banned:Z

    return-void
.end method

.method public setElite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->elite:Z

    return-void
.end method

.method public setFriendRequestType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->friendRequestType:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->level:I

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setMemberTitle(Lcom/join/mgps/dto/FriendBean$MemberTitle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPlayGameLevel(Lcom/join/mgps/dto/GameLevelBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->playType:I

    return-void
.end method

.method public setReadFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->readFlag:I

    return-void
.end method

.method public setRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->isRecommend:Z

    return-void
.end method

.method public setRequestIfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->requestIfo:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->roomId:I

    return-void
.end method

.method public setRoomPwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->roomPwd:Ljava/lang/String;

    return-void
.end method

.method public setRoomType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->roomType:I

    return-void
.end method

.method public setRuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->ruid:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->source:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->status:I

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendBean;->timestamp:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->uid:I

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->vip:Z

    return-void
.end method
