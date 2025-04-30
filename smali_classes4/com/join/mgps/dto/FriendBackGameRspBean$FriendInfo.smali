.class public Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;
.super Ljava/lang/Object;
.source "FriendBackGameRspBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/FriendBackGameRspBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendInfo"
.end annotation


# instance fields
.field private addFriendStatus:Z

.field private avatar:Ljava/lang/String;

.field private id:I

.field private level:I

.field private levelName:Ljava/lang/String;

.field private likeStatus:Z

.field private memberTitle:Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

.field private nickName:Ljava/lang/String;

.field private requestInfo:Ljava/lang/String;

.field private sendFriendRequestStatus:Z

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
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->memberTitle:Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->requestInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->uid:I

    return v0
.end method

.method public isAddFriendStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->addFriendStatus:Z

    return v0
.end method

.method public isLikeStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->likeStatus:Z

    return v0
.end method

.method public isSendFriendRequestStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->sendFriendRequestStatus:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->vip:Z

    return v0
.end method

.method public setAddFriendStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->addFriendStatus:Z

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->level:I

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setLikeStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->likeStatus:Z

    return-void
.end method

.method public setMemberTitle(Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->memberTitle:Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setRequestInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->requestInfo:Ljava/lang/String;

    return-void
.end method

.method public setSendFriendRequestStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->sendFriendRequestStatus:Z

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->uid:I

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->vip:Z

    return-void
.end method
