.class public final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "GameDetailEmusCloudViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J&\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rR(\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R.\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040%0\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0013\u001a\u0004\u0008\'\u0010\u0015\"\u0004\u0008(\u0010\u0017\u00a8\u0006+"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "getRuningArchive",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "archiveData",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "adapter",
        "",
        "onitemChanged",
        "Landroid/content/Context;",
        "context",
        "type",
        "",
        "from",
        "commentArchive",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/domain/common/LoadBindindData;",
        "loadBindData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLoadBindData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoadBindData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;",
        "request",
        "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;",
        "getRequest",
        "()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;",
        "setRequest",
        "(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;)V",
        "packageName",
        "Ljava/lang/String;",
        "getPackageName",
        "()Ljava/lang/String;",
        "setPackageName",
        "(Ljava/lang/String;)V",
        "",
        "listArchive",
        "getListArchive",
        "setListArchive",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private listArchive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadBindData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->packageName:Ljava/lang/String;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final commentArchive(Landroid/content/Context;Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "archiveData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getListArchive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getLoadBindData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    return-object v0
.end method

.method public final getRuningArchive()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/va/overmind/f;->r(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/mod/utils/PluginConfig;->getArchiveSection(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "archiveId"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "section[\"archiveId\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public final onitemChanged(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;)V
    .locals 3
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "listArchive.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setListArchive(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->listArchive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setLoadBindData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setRequest(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    return-void
.end method
