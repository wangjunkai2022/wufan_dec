.class public Lcom/join/mgps/dto/FriendBackGameRspBean;
.super Ljava/lang/Object;
.source "FriendBackGameRspBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;,
        Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;
    }
.end annotation


# instance fields
.field private battleFriendData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattleFriendData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBackGameRspBean;->battleFriendData:Ljava/util/List;

    return-object v0
.end method

.method public setBattleFriendData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBackGameRspBean;->battleFriendData:Ljava/util/List;

    return-void
.end method
