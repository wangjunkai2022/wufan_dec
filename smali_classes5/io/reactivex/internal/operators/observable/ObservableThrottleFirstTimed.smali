.class public final Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableThrottleFirstTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/e0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;

    new-instance v2, Lio/reactivex/observers/l;

    invoke-direct {v2, p1}, Lio/reactivex/observers/l;-><init>(Lio/reactivex/g0;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->d:Lio/reactivex/h0;

    .line 2
    invoke-virtual {p1}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;-><init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;)V

    .line 3
    invoke-interface {v0, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
