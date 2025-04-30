.class public final Lcom/join/kotlin/domain/common/SingleLiveEvents;
.super Landroidx/lifecycle/MutableLiveData;
.source "SingleLiveEvents.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J&\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0007\u001a\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0006H\u0017J\u0018\u0010\u000b\u001a\u00020\u00082\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0017R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\"\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/join/kotlin/domain/common/SingleLiveEvents;",
        "T",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "Landroidx/lifecycle/Observer;",
        "observer",
        "",
        "observe",
        "t",
        "setValue",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "pending",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "",
        "eventList",
        "Ljava/util/List;",
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
.field private final eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->eventList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getEventList$p(Lcom/join/kotlin/domain/common/SingleLiveEvents;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->eventList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPending$p(Lcom/join/kotlin/domain/common/SingleLiveEvents;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/kotlin/domain/common/SingleLiveEvents$observe$1;

    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/domain/common/SingleLiveEvents$observe$1;-><init>(Lcom/join/kotlin/domain/common/SingleLiveEvents;Landroidx/lifecycle/Observer;)V

    invoke-super {p0, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/domain/common/SingleLiveEvents;->setValue(Ljava/util/List;)V

    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/domain/common/SingleLiveEvents;->eventList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
