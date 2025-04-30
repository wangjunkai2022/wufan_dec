.class public Lcom/join/mgps/dto/ForumData$GroupFans;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupFans"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->list:Ljava/util/List;

    return-object v0
.end method

.method public getManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->managers:Ljava/util/List;

    return-object v0
.end method

.method public getMe()Lcom/join/mgps/dto/ForumData$GroupMemberBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->list:Ljava/util/List;

    return-void
.end method

.method public setManagers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->managers:Ljava/util/List;

    return-void
.end method

.method public setMe(Lcom/join/mgps/dto/ForumData$GroupMemberBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupFans;->me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    return-void
.end method
