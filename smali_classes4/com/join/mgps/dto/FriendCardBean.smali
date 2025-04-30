.class public Lcom/join/mgps/dto/FriendCardBean;
.super Ljava/lang/Object;
.source "FriendCardBean.java"


# instance fields
.field private addFriendStatus:Z

.field private friendStatus:Z

.field private likeCount:I

.field private likeStatus:Z

.field private onlineStatus:Z

.field private playGameLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo:Lcom/join/mgps/dto/FriendBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendCardBean;->likeCount:I

    return v0
.end method

.method public getPlayGameLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendCardBean;->playGameLevels:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendCardBean;->userInfo:Lcom/join/mgps/dto/FriendBean;

    return-object v0
.end method

.method public isAddFriendStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->addFriendStatus:Z

    return v0
.end method

.method public isFriendStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->friendStatus:Z

    return v0
.end method

.method public isLikeStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->likeStatus:Z

    return v0
.end method

.method public isOnlineStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->onlineStatus:Z

    return v0
.end method

.method public setAddFriendStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->addFriendStatus:Z

    return-void
.end method

.method public setFriendStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->friendStatus:Z

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendCardBean;->likeCount:I

    return-void
.end method

.method public setLikeStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->likeStatus:Z

    return-void
.end method

.method public setOnlineStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->onlineStatus:Z

    return-void
.end method

.method public setPlayGameLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendCardBean;->playGameLevels:Ljava/util/List;

    return-void
.end method

.method public setUserInfo(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendCardBean;->userInfo:Lcom/join/mgps/dto/FriendBean;

    return-void
.end method
