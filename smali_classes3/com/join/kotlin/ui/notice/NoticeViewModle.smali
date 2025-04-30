.class public final Lcom/join/kotlin/ui/notice/NoticeViewModle;
.super Lcom/join/kotlin/domain/common/BaseLoadListDataModle;
.source "NoticeViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR8\u0010\u001f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\u001cj\u0008\u0012\u0004\u0012\u00020\u001d`\u001e0\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\t\u001a\u0004\u0008 \u0010\u000b\"\u0004\u0008!\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "Lcom/join/kotlin/domain/common/BaseLoadListDataModle;",
        "",
        "hasNet",
        "",
        "updateShowLoadUI",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/domain/common/LoadBindindData;",
        "loadDataBinding",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLoadDataBinding",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoadDataBinding",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/kotlin/ui/notice/NoticeRequest;",
        "request",
        "Lcom/join/kotlin/ui/notice/NoticeRequest;",
        "getRequest",
        "()Lcom/join/kotlin/ui/notice/NoticeRequest;",
        "setRequest",
        "(Lcom/join/kotlin/ui/notice/NoticeRequest;)V",
        "",
        "title",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "Lkotlin/collections/ArrayList;",
        "noticeDats",
        "getNoticeDats",
        "setNoticeDats",
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
.field private loadDataBinding:Landroidx/lifecycle/MutableLiveData;
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

.field private noticeDats:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/join/kotlin/ui/notice/NoticeRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/domain/common/BaseLoadListDataModle;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->noticeDats:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/notice/NoticeRequest;

    invoke-direct {v0}, Lcom/join/kotlin/ui/notice/NoticeRequest;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->request:Lcom/join/kotlin/ui/notice/NoticeRequest;

    const-string v0, "\u6d3b\u52a8\u516c\u544a"

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->title:Ljava/lang/String;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getNoticeDats()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->noticeDats:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRequest()Lcom/join/kotlin/ui/notice/NoticeRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->request:Lcom/join/kotlin/ui/notice/NoticeRequest;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setLoadDataBinding(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setNoticeDats(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->noticeDats:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setRequest(Lcom/join/kotlin/ui/notice/NoticeRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/notice/NoticeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->request:Lcom/join/kotlin/ui/notice/NoticeRequest;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->title:Ljava/lang/String;

    return-void
.end method

.method public final updateShowLoadUI(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->noticeDats:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->noticeDats:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeViewModle;->loadDataBinding:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
