.class final Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSkipLastTimed.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipLastTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4eca0434695949bbL


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field g:Ll3/d;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile i:Z

.field volatile j:Z

.field k:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->a:Ll3/c;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->d:Lio/reactivex/h0;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-direct {p1, p6}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    .line 8
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->f:Z

    return-void
.end method


# virtual methods
.method a(ZZLl3/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ll3/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {p1}, Lio/reactivex/internal/queue/a;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p3, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p3}, Ll3/c;->onComplete()V

    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 7
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {p2}, Lio/reactivex/internal/queue/a;->clear()V

    .line 8
    invoke-interface {p3, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p3}, Ll3/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->a:Ll3/c;

    .line 3
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    .line 4
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->f:Z

    .line 5
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    .line 6
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->d:Lio/reactivex/h0;

    .line 7
    iget-wide v6, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b:J

    const/4 v9, 0x1

    .line 8
    :cond_1
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    :goto_0
    cmp-long v16, v14, v10

    if-eqz v16, :cond_6

    .line 9
    iget-boolean v8, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->j:Z

    .line 10
    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    if-nez v17, :cond_2

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    .line 11
    :goto_1
    invoke-virtual {v5, v4}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v19

    if-nez v18, :cond_3

    .line 12
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v6

    cmp-long v17, v21, v19

    if-lez v17, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, v18

    .line 13
    :goto_2
    invoke-virtual {v0, v8, v12, v1, v3}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->a(ZZLl3/c;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    :cond_4
    if-eqz v12, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 16
    invoke-interface {v1, v8}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    goto :goto_0

    :cond_6
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v8, v14, v10

    if-eqz v8, :cond_7

    .line 17
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, v14, v15}, Lio/reactivex/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_7
    neg-int v8, v9

    .line 18
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->i:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->g:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->d:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->e:Lio/reactivex/internal/queue/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b()V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->g:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->g:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->b()V

    :cond_0
    return-void
.end method
