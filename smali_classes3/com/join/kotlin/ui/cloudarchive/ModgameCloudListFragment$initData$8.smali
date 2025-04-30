.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Ljava/lang/Long;)V",
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

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Long;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 4
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;->onChanged(Ljava/lang/Long;)V

    return-void
.end method
