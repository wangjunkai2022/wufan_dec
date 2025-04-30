.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/j;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;-><init>(Lio/reactivex/j;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method J8()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v0}, Lio/reactivex/internal/util/h;->c()I

    move-result v0

    return v0
.end method

.method K8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method L8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->i:Z

    return v0
.end method

.method protected h6(Ll3/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;-><init>(Ll3/c;Lio/reactivex/internal/operators/flowable/FlowableCache$a;)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->d(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->f(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->e()V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->a()V

    :cond_2
    return-void
.end method
