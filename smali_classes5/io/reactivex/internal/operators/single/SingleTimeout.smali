.class public final Lio/reactivex/internal/operators/single/SingleTimeout;
.super Lio/reactivex/i0;
.source "SingleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Lio/reactivex/o0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->a:Lio/reactivex/o0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->d:Lio/reactivex/h0;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->e:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->e:Lio/reactivex/o0;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;-><init>(Lio/reactivex/l0;Lio/reactivex/o0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->d:Lio/reactivex/h0;

    iget-wide v2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v1

    invoke-static {p1, v1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->a:Lio/reactivex/o0;

    invoke-interface {p1, v0}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
