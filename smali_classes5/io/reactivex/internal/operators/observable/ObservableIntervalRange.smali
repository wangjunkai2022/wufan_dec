.class public final Lio/reactivex/internal/operators/observable/ObservableIntervalRange;
.super Lio/reactivex/z;
.source "ObservableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/h0;

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-wide p5, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->d:J

    .line 3
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->e:J

    .line 4
    iput-object p9, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->f:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p10, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->a:Lio/reactivex/h0;

    .line 6
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->b:J

    .line 7
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->c:J

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->c:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;-><init>(Lio/reactivex/g0;JJ)V

    .line 2
    invoke-interface {p1, v7}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->a:Lio/reactivex/h0;

    .line 4
    instance-of p1, v0, Lio/reactivex/internal/schedulers/l;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->a(Lio/reactivex/disposables/b;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->d:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->d:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->a(Lio/reactivex/disposables/b;)V

    :goto_0
    return-void
.end method
