.class public Lcom/join/mgps/dto/FriendAccountInfo;
.super Ljava/lang/Object;
.source "FriendAccountInfo.java"


# instance fields
.field private account:Ljava/lang/String;

.field private accountId:I

.field private accountType:I

.field private avatar:Ljava/lang/String;

.field private banned:Z

.field private level:I

.field private levelName:Ljava/lang/String;

.field private likedCount:I

.field private nickName:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private onLineStatus:Ljava/lang/String;

.field private requestFriendCount:I

.field private uid:I

.field private vip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->accountId:I

    return v0
.end method

.method public getAccountType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->accountType:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getLikedCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->likedCount:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLineStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->onLineStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestFriendCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->requestFriendCount:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->uid:I

    return v0
.end method

.method public isBanned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->banned:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendAccountInfo;->vip:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public setAccountId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->accountId:I

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->accountType:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBanned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->banned:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->level:I

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setLikedCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->likedCount:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOnLineStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->onLineStatus:Ljava/lang/String;

    return-void
.end method

.method public setRequestFriendCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->requestFriendCount:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->uid:I

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendAccountInfo;->vip:Z

    return-void
.end method
