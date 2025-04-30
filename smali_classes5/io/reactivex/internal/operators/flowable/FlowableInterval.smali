.class public final Lio/reactivex/internal/operators/flowable/FlowableInterval;
.super Lio/reactivex/j;
.source "FlowableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/h0;

.field final c:J

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->c:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->d:J

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->e:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;-><init>(Ll3/c;)V

    .line 2
    invoke-interface {p1, v7}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->b:Lio/reactivex/h0;

    .line 4
    instance-of p1, v0, Lio/reactivex/internal/schedulers/l;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->a(Lio/reactivex/disposables/b;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->a(Lio/reactivex/disposables/b;)V

    :goto_0
    return-void
.end method
