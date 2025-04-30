.class final Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindow.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a066e1378289dc0L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:I

.field g:J

.field h:Ll3/d;

.field i:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ll3/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->a:Ll3/c;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->b:J

    .line 4
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->c:J

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->f:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    .line 3
    invoke-interface {v0}, Ll3/c;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    .line 3
    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->g:J

    .line 2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->f:I

    invoke-static {v2, p0}, Lio/reactivex/processors/UnicastProcessor;->R8(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v2

    .line 5
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    .line 6
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->a:Ll3/c;

    invoke-interface {v5, v2}, Ll3/c;->onNext(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->b:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->i:Lio/reactivex/processors/UnicastProcessor;

    .line 10
    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 11
    :cond_2
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->c:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    .line 12
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->g:J

    goto :goto_0

    .line 13
    :cond_3
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->g:J

    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->h:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->h:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->b:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->d(JJ)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->c(JJ)J

    move-result-wide p1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->h:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->h:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->h:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    :cond_0
    return-void
.end method
