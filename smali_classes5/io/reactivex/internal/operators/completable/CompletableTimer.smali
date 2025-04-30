.class public final Lio/reactivex/internal/operators/completable/CompletableTimer;
.super Lio/reactivex/a;
.source "CompletableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->a:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->b:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->c:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 4

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;-><init>(Lio/reactivex/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->c:Lio/reactivex/h0;

    iget-wide v1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method
