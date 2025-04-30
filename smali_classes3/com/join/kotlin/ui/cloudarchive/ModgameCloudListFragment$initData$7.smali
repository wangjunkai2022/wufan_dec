.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;
.super Ljava/lang/Object;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Ljava/util/List;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getIsfirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setIsfirst(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->access$updateLocaDataToShow(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
