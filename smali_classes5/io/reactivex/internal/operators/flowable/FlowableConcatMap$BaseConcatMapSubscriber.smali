.class abstract Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMap.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseConcatMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b<",
        "TR;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30bac63fcc0431bbL


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field e:Ll3/d;

.field f:I

.field g:Lx2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field volatile i:Z

.field final j:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile k:Z

.field l:I


# direct methods
.method constructor <init>(Lw2/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->b:Lw2/o;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->d:I

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;-><init>(Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->j:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->d()V

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->h:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->d()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->g:Lx2/o;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->d()V

    return-void
.end method

.method public final onSubscribe(Ll3/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e:Ll3/d;

    .line 3
    instance-of v0, p1, Lx2/l;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lx2/l;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Lx2/k;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->l:I

    .line 7
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->g:Lx2/o;

    .line 8
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->h:Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->l:I

    .line 12
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->g:Lx2/o;

    .line 13
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e()V

    .line 14
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->g:Lx2/o;

    .line 16
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->e()V

    .line 17
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_2
    return-void
.end method
