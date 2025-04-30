.class public Lcom/join/mgps/dto/ForumBean$ForumExtBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumExtBean"
.end annotation


# instance fields
.field followedForums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation
.end field

.field isContainHelp:Z

.field refresh:Z

.field requestCode:I

.field startFlags:I

.field tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowedForums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->followedForums:Ljava/util/List;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->requestCode:I

    return v0
.end method

.method public getStartFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->startFlags:I

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    return v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getTabBean()Lcom/join/mgps/dto/ForumBean$ForumTabBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;

    return-object v0
.end method

.method public isContainHelp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->isContainHelp:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->refresh:Z

    return v0
.end method

.method public setContainHelp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->isContainHelp:Z

    return-void
.end method

.method public setFollowedForums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->followedForums:Ljava/util/List;

    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->refresh:Z

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->requestCode:I

    return-void
.end method

.method public setStartFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->startFlags:I

    return-void
.end method

.method public setTabBean(Lcom/join/mgps/dto/ForumBean$ForumTabBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;

    return-void
.end method
